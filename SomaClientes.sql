CREATE FUNCTION SomaClientesDia(data DATE)
RETURNS INT
BEGIN
    DECLARE totalClientes INT;
    SELECT COUNT(*) INTO totalClientes
    FROM cadastro_clientes
    WHERE DATE(data_cadastro) = data;
    RETURN totalClientes;
END;
