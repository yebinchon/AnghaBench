
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int uint8 ;
struct stream {int size; int * data; int * p; } ;
struct TYPE_6__ {int disconnect_reason; scalar_t__ encryption; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int True ;
 int free (int *) ;
 void* malloc (int) ;
 int mcs_connect (TYPE_1__*,char*,char*,struct stream*) ;
 int sec_establish_key (TYPE_1__*) ;
 int sec_out_mcs_data (TYPE_1__*,struct stream*,int *) ;

BOOL
sec_connect(RDPCLIENT * This, char *server, wchar_t *hostname, char *cookie)
{
 struct stream mcs_data;
 void * p = malloc(512);

 if(p == ((void*)0))
 {
  This->disconnect_reason = 262;
  return False;
 }


 mcs_data.size = 512;
 mcs_data.p = mcs_data.data = (uint8 *) p;
 sec_out_mcs_data(This, &mcs_data, hostname);

 if (!mcs_connect(This, server, cookie, &mcs_data))
  return False;


 if (This->encryption)
  sec_establish_key(This);
 free(mcs_data.data);
 return True;
}
