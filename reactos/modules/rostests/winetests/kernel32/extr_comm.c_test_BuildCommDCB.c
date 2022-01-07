
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int timeouts2; int dcb2; int timeouts1; int dcb1; int string; } ;
typedef int DWORD ;
typedef int COMMCONFIG ;


 scalar_t__ GetDefaultCommConfigA (char*,int *,int*) ;
 unsigned int TEST_COUNT ;
 int strcpy (char*,int ) ;
 char* strstr (char*,char*) ;
 TYPE_1__* test ;
 int test_BuildCommDCBA (char*,TYPE_1__*,int,int *) ;
 int test_BuildCommDCBAndTimeoutsA (char*,TYPE_1__*,int,int *,int *) ;
 int test_BuildCommDCBAndTimeoutsW (char*,TYPE_1__*,int,int *,int *) ;
 int test_BuildCommDCBW (char*,TYPE_1__*,int,int *) ;
 int trace (char*) ;

__attribute__((used)) static void test_BuildCommDCB(void)
{
 char port_name[] = "COMx";
 char port = 0;
 unsigned int i;
 char *ptr;



 for(port_name[3] = '1'; port_name[3] <= '9'; port_name[3]++)
 {
  COMMCONFIG commconfig;
  DWORD size = sizeof(COMMCONFIG);

  if(GetDefaultCommConfigA(port_name, &commconfig, &size))
  {
   port = port_name[3];
   break;
  }
 }

 if(!port)
  trace("Could not find a valid COM port.  Some tests will be skipped.\n");

 for(i = 0; i < TEST_COUNT; i++)
 {
                char string[sizeof(test[i].string)];

                strcpy(string, test[i].string);


  ptr = strstr(string, "COMx");


  if(ptr)
  {
   if(port)
    ptr[3] = port;
   else
    continue;
  }

  test_BuildCommDCBA(string, &test[i], 0x00, &test[i].dcb1);
  test_BuildCommDCBA(string, &test[i], 0xff, &test[i].dcb2);
  test_BuildCommDCBAndTimeoutsA(string, &test[i], 0x00, &test[i].dcb1, &test[i].timeouts1);
  test_BuildCommDCBAndTimeoutsA(string, &test[i], 0xff, &test[i].dcb2, &test[i].timeouts2);

  test_BuildCommDCBW(string, &test[i], 0x00, &test[i].dcb1);
  test_BuildCommDCBW(string, &test[i], 0xff, &test[i].dcb2);
  test_BuildCommDCBAndTimeoutsW(string, &test[i], 0x00, &test[i].dcb1, &test[i].timeouts1);
  test_BuildCommDCBAndTimeoutsW(string, &test[i], 0xff, &test[i].dcb2, &test[i].timeouts2);
 }
}
