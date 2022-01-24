#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__* PUCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  NONPAGEDPOOL ; 
 int /*<<< orphan*/  OF_READ ; 
 int /*<<< orphan*/  OUTPUT_WINDOW ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 size_t FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (scalar_t__,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ pExports ; 
 char* tempSym ; 
 size_t ulExportLen ; 

BOOLEAN FUNC11(void)
{
	HANDLE hf;
    BOOLEAN bResult = TRUE;

	FUNC2();

    FUNC10(OUTPUT_WINDOW,"pICE: loading exports...\n");
	hf = FUNC7(L"\\SystemRoot\\symbols\\ntoskrnl.map",OF_READ);
	/*
	if(hf)
    {
        Print(OUTPUT_WINDOW,"pICE: no System.map in /boot\n");
	    hf = PICE_open("/System.map",OF_READ);
    }
	*/

    if(hf)
	{
		//mm_segment_t oldfs;
		size_t len;

		len = FUNC5(hf);
        if(len)
        {
		    FUNC0((0,"file len = %d\n",len));

		    pExports = FUNC6(len+1,NONPAGEDPOOL);  // maybe make pool setting an option

		    FUNC0((0,"pExports = %x\n",pExports));

            if(pExports)
		    {
        		//oldfs = get_fs(); set_fs(KERNEL_DS);
                ulExportLen = len;
			    ((PUCHAR)pExports)[len]=0;
			    if(len == FUNC8(hf,pExports,len))
			    {
				    FUNC0((0,"success reading system map!\n"));
            		FUNC9(tempSym,"pICE: ntoskrnl.sym @ %x (size %x)\n",pExports,len);
		    		FUNC10(OUTPUT_WINDOW,tempSym);
				}
				else
					FUNC1("error reading ntoskrnl map!\n");
    		    //set_fs(oldfs);
		    }
        }
		FUNC4(hf);
	}
    else
    {
        FUNC10(OUTPUT_WINDOW,"pICE: no ntoskrnl.sys \n");
        FUNC10(OUTPUT_WINDOW,"pICE: could not load exports...\n");
        bResult = FALSE;
    }

    FUNC3();

    return bResult;
}