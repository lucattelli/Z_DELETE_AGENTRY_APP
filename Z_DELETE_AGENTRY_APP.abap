REPORT Z_DELETE_AGENTRY_APP.

PARAMETER p_app TYPE /syclo/ca000-mobile_app DEFAULT 'ZSAP_INVENTORY_MANAGER_43'.
PARAMETER p_dst TYPE /smfnd/dsf10-dstore_id DEFAULT 'ZSIM43%'.
PARAMETER p_dag TYPE /smfnd/dsf20-dagent_id DEFAULT 'ZSIM43%'.
PARAMETER p_exc TYPE /smfnd/v_ca002t-exchobj DEFAULT 'ZSIM43%'.
PARAMETER p_did TYPE /smfnd/v_do001t-do_id DEFAULT 'ZSIM43%'.
PARAMETER p_rky TYPE /syclo/ca003-rule_key DEFAULT 'ZSIM43%'.

DELETE FROM /syclo/do002  WHERE mobile_app EQ p_app.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/do002'.
DELETE FROM /syclo/efi01  WHERE mobile_app EQ p_app.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/efi01'.

DELETE FROM /syclo/ca000x WHERE mobile_app EQ p_app.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/ca000x'.

DELETE FROM /syclo/ca000p WHERE mobile_app EQ p_app.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/ca000p'.

DELETE FROM /syclo/ca000  WHERE mobile_app EQ p_app.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/ca000'.

DELETE FROM /smfnd/dsf10    WHERE dstore_id LIKE p_dst.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /smfnd/dsf10'.

DELETE FROM /smfnd/dsf10t   WHERE dstore_id LIKE p_dst.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /smfnd/dsf10t'.

DELETE FROM /smfnd/dsf11    WHERE dstore_id LIKE p_dst.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /smfnd/dsf11'.

DELETE FROM /smfnd/dsf20    WHERE dagent_id LIKE p_dag.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /smfnd/dsf20'.

DELETE FROM /smfnd/dsf20t   WHERE dagent_id LIKE p_dag.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /smfnd/dsf20t'.

DELETE FROM /smfnd/dsf30    WHERE dstore_id LIKE p_dst.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /smfnd/dsf30'.

DELETE FROM /smfnd/dsf40    WHERE dstore_id LIKE p_dst.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /smfnd/dsf40'.

DELETE FROM /syclo/ca002    WHERE exchobj LIKE p_exc.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/ca002'.

DELETE FROM /syclo/ca002f   WHERE exchobj LIKE p_exc.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/ca002f'.

DELETE FROM /syclo/ca002t   WHERE exchobj LIKE p_exc.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/ca002t'.

DELETE FROM /syclo/ca003    WHERE rule_key LIKE p_rky.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/ca003'.

DELETE FROM /syclo/ca003d   WHERE rule_key LIKE p_rky.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/ca003d'.

DELETE FROM /syclo/ca003m   WHERE rule_key LIKE p_rky.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/ca003m'.

DELETE FROM /syclo/do001    WHERE do_id LIKE p_did.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/do001'.

DELETE FROM /syclo/do001e   WHERE do_id LIKE p_did.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/do001e'.

DELETE FROM /syclo/do001f   WHERE do_id LIKE p_did.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/do001f'.

DELETE FROM /syclo/do001s   WHERE do_id LIKE p_did.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/do001s'.

DELETE FROM /syclo/do001t   WHERE do_id LIKE p_did.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/do001t'.

DELETE FROM /syclo/do001x   WHERE do_id LIKE p_did.
NEW-LINE. WRITE : SY-dbcnt, 'rows deleted from /syclo/do001x'.
