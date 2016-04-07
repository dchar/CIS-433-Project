for /F "tokens=*" %%A in (output.txt) do coupled_tracert.py %%A

IF "%1"=="-diag" (
	for /F "tokens=*" %%A in (output.txt) do diagnostics.py %%A
	masterDiagnostics.py
	)