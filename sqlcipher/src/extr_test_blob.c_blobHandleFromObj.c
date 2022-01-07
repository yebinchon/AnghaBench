
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_blob ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
typedef int Tcl_Channel ;
typedef scalar_t__ ClientData ;


 int SEEK_SET ;
 int TCL_ERROR ;
 int TCL_OK ;
 int Tcl_Flush (int ) ;
 int Tcl_GetChannel (int *,char*,int*) ;
 scalar_t__ Tcl_GetChannelInstanceData (int ) ;
 char* Tcl_GetStringFromObj (int *,int*) ;
 int Tcl_Seek (int ,int ,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 scalar_t__ sqlite3TestTextToPtr (char*) ;

__attribute__((used)) static int blobHandleFromObj(
  Tcl_Interp *interp,
  Tcl_Obj *pObj,
  sqlite3_blob **ppBlob
){
  char *z;
  int n;

  z = Tcl_GetStringFromObj(pObj, &n);
  if( n==0 ){
    *ppBlob = 0;
  }else if( n>9 && 0==memcmp("incrblob_", z, 9) ){
    int notUsed;
    Tcl_Channel channel;
    ClientData instanceData;

    channel = Tcl_GetChannel(interp, z, &notUsed);
    if( !channel ) return TCL_ERROR;

    Tcl_Flush(channel);
    Tcl_Seek(channel, 0, SEEK_SET);

    instanceData = Tcl_GetChannelInstanceData(channel);
    *ppBlob = *((sqlite3_blob **)instanceData);
  }else{
    *ppBlob = (sqlite3_blob*)sqlite3TestTextToPtr(z);
  }

  return TCL_OK;
}
