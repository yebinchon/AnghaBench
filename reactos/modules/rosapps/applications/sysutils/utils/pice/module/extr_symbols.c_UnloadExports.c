
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int PICE_free (int *) ;
 int * pExports ;

void UnloadExports(void)
{
 ENTER_FUNC();
 if(pExports)
 {
  DPRINT((0,"freeing %x\n",pExports));
  PICE_free(pExports);
        pExports = ((void*)0);
 }
    LEAVE_FUNC();
}
