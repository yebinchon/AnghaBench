
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* PUCHAR ;
typedef scalar_t__ HANDLE ;
typedef int BOOLEAN ;


 int DPRINT (int ) ;
 int DbgPrint (char*) ;
 int ENTER_FUNC () ;
 int FALSE ;
 int LEAVE_FUNC () ;
 int NONPAGEDPOOL ;
 int OF_READ ;
 int OUTPUT_WINDOW ;
 int PICE_close (scalar_t__) ;
 size_t PICE_len (scalar_t__) ;
 scalar_t__ PICE_malloc (size_t,int ) ;
 scalar_t__ PICE_open (char*,int ) ;
 size_t PICE_read (scalar_t__,scalar_t__,size_t) ;
 int PICE_sprintf (char*,char*,scalar_t__,size_t) ;
 int Print (int ,char*) ;
 int TRUE ;
 scalar_t__ pExports ;
 char* tempSym ;
 size_t ulExportLen ;

BOOLEAN LoadExports(void)
{
 HANDLE hf;
    BOOLEAN bResult = TRUE;

 ENTER_FUNC();

    Print(OUTPUT_WINDOW,"pICE: loading exports...\n");
 hf = PICE_open(L"\\SystemRoot\\symbols\\ntoskrnl.map",OF_READ);
    if(hf)
 {

  size_t len;

  len = PICE_len(hf);
        if(len)
        {
      DPRINT((0,"file len = %d\n",len));

      pExports = PICE_malloc(len+1,NONPAGEDPOOL);

      DPRINT((0,"pExports = %x\n",pExports));

            if(pExports)
      {

                ulExportLen = len;
       ((PUCHAR)pExports)[len]=0;
       if(len == PICE_read(hf,pExports,len))
       {
        DPRINT((0,"success reading system map!\n"));
              PICE_sprintf(tempSym,"pICE: ntoskrnl.sym @ %x (size %x)\n",pExports,len);
        Print(OUTPUT_WINDOW,tempSym);
    }
    else
     DbgPrint("error reading ntoskrnl map!\n");

      }
        }
  PICE_close(hf);
 }
    else
    {
        Print(OUTPUT_WINDOW,"pICE: no ntoskrnl.sys \n");
        Print(OUTPUT_WINDOW,"pICE: could not load exports...\n");
        bResult = FALSE;
    }

    LEAVE_FUNC();

    return bResult;
}
