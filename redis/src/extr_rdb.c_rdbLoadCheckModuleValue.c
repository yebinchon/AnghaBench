
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int robj ;
typedef int rio ;


 int RDB_LOAD_NONE ;
 scalar_t__ RDB_MODULE_OPCODE_DOUBLE ;
 scalar_t__ RDB_MODULE_OPCODE_EOF ;
 scalar_t__ RDB_MODULE_OPCODE_FLOAT ;
 scalar_t__ RDB_MODULE_OPCODE_SINT ;
 scalar_t__ RDB_MODULE_OPCODE_STRING ;
 scalar_t__ RDB_MODULE_OPCODE_UINT ;
 int * createStringObject (char*,int) ;
 int decrRefCount (int *) ;
 int rdbExitReportCorruptRDB (char*,char*) ;
 int * rdbGenericLoadStringObject (int *,int ,int *) ;
 int rdbLoadBinaryDoubleValue (int *,double*) ;
 int rdbLoadBinaryFloatValue (int *,float*) ;
 scalar_t__ rdbLoadLen (int *,int *) ;
 int rdbLoadLenByRef (int *,int *,scalar_t__*) ;

robj *rdbLoadCheckModuleValue(rio *rdb, char *modulename) {
    uint64_t opcode;
    while((opcode = rdbLoadLen(rdb,((void*)0))) != RDB_MODULE_OPCODE_EOF) {
        if (opcode == RDB_MODULE_OPCODE_SINT ||
            opcode == RDB_MODULE_OPCODE_UINT)
        {
            uint64_t len;
            if (rdbLoadLenByRef(rdb,((void*)0),&len) == -1) {
                rdbExitReportCorruptRDB(
                    "Error reading integer from module %s value", modulename);
            }
        } else if (opcode == RDB_MODULE_OPCODE_STRING) {
            robj *o = rdbGenericLoadStringObject(rdb,RDB_LOAD_NONE,((void*)0));
            if (o == ((void*)0)) {
                rdbExitReportCorruptRDB(
                    "Error reading string from module %s value", modulename);
            }
            decrRefCount(o);
        } else if (opcode == RDB_MODULE_OPCODE_FLOAT) {
            float val;
            if (rdbLoadBinaryFloatValue(rdb,&val) == -1) {
                rdbExitReportCorruptRDB(
                    "Error reading float from module %s value", modulename);
            }
        } else if (opcode == RDB_MODULE_OPCODE_DOUBLE) {
            double val;
            if (rdbLoadBinaryDoubleValue(rdb,&val) == -1) {
                rdbExitReportCorruptRDB(
                    "Error reading double from module %s value", modulename);
            }
        }
    }
    return createStringObject("module-dummy-value",18);
}
