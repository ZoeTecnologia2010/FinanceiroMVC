unit Financas.Model.Entity.Produtos;

interface

uses Financas.Model.Entity.Interfaces, System.Classes, Financas.Model.Connections.Interfaces;

Type
     TModelEntityProdutos = class(TInterfacedObject, iModelEntity)
     private
          FDataSet: iModelDataSet;
     public
          constructor Create(DataSet: iModelDataSet);
          destructor Destroy; override;
          class function New(DataSet: iModelDataSet): iModelEntity;
          function Listar: TComponent;
     end;

implementation

const
     FTABLENAME = 'PRODUTO';

     { TModelEntityProdutos }

constructor TModelEntityProdutos.Create(DataSet: iModelDataSet);
begin
     FDataSet := DataSet;
end;

destructor TModelEntityProdutos.Destroy;
begin
     inherited;
end;

function TModelEntityProdutos.Listar: TComponent;
begin
     Result := FDataSet.Open(FTABLENAME).EndDataSet;
end;

class function TModelEntityProdutos.New(DataSet: iModelDataSet): iModelEntity;
begin
     Result := Self.Create(DataSet);
end;

end.
