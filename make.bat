cl mdb_stat.c mdb.c midl.c /MT /Ox /Oy
cl mdb_copy.c mdb.c midl.c /MT /Ox /Oy
for %%i in (mtest*.c) do cl %%i mdb.c midl.c /MT /Ox /Oy -DMDB_DEBUG 
for %%i in (mtest*.exe) do rd /q /s testdb & md testdb & %%i 
