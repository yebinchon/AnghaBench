#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {long e_lfanew; scalar_t__ e_magic; } ;
struct TYPE_5__ {int PointerToSymbolTable; int NumberOfSymbols; int NumberOfSections; } ;
struct TYPE_6__ {scalar_t__ Signature; TYPE_1__ FileHeader; } ;
typedef  scalar_t__ PSTAB_ENTRY ;
typedef  scalar_t__ PIMAGE_SYMBOL ;
typedef  TYPE_2__* PIMAGE_NT_HEADERS ;
typedef  TYPE_3__* PIMAGE_DOS_HEADER ;
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  IMAGE_SYMBOL ;
typedef  int /*<<< orphan*/  IMAGE_SECTION_HEADER ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ IMAGE_DOS_SIGNATURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ IMAGE_NT_SIGNATURE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int,scalar_t__*,int*,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ,int,void*,scalar_t__,int,char*,int,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ ulGlobalVerbose ; 

int FUNC9(char* filename,int file,void* p,int len)
{

	PIMAGE_DOS_HEADER pDosHeader;
	PIMAGE_NT_HEADERS pNTHeaders;

	char* pStr;
	PSTAB_ENTRY pStab;
	DWORD nStabLen,nSym;
	char* pStrTab;
	char* pSymTab;

	char szSymName[2048];
	HANDLE fileout;
	int nSymStrLen,nStabStrLen;
    int iRetVal = 0;

	pDosHeader = (PIMAGE_DOS_HEADER)p;
	pNTHeaders = (PIMAGE_NT_HEADERS)((DWORD)p + pDosHeader->e_lfanew);

    if ((pDosHeader->e_magic == IMAGE_DOS_SIGNATURE)
       && (pDosHeader->e_lfanew != 0L)
       && (pNTHeaders->Signature == IMAGE_NT_SIGNATURE))
    {
		if( pNTHeaders->FileHeader.PointerToSymbolTable ){

			pSymTab = (char*)((DWORD)p + pNTHeaders->FileHeader.PointerToSymbolTable);
			nSym = pNTHeaders->FileHeader.NumberOfSymbols;
			//string table follows immediately after symbol table. first 4 bytes give the length of the table
			//references to string table include the first 4 bytes.
			pStrTab = (char*)((PIMAGE_SYMBOL)pSymTab + nSym);
			nSymStrLen = *((DWORD*)pStrTab);
			FUNC3(p,FUNC2(pNTHeaders),pNTHeaders->FileHeader.NumberOfSections,
					&pStab,&nStabLen,&pStr,&nStabStrLen);

			if(pStab && nStabLen && pStr && nStabStrLen)
			{
				LPSTR pDot;

				FUNC8(szSymName,filename);
				//printf("LOADER: file name = %s\n",szSymName);
				if((pDot = FUNC7(szSymName,'.')))
				{
					*pDot = 0;
					FUNC6(pDot,".dbg");
				}
				else
				{
					FUNC6(szSymName,".dbg");
				}
				//printf("LOADER: symbol file name = %s\n",szSymName);
	            FUNC4("LOADER: creating symbol file %s for %s\n",szSymName,filename);

				fileout = FUNC1(szSymName,
								     GENERIC_READ | GENERIC_WRITE,
								     0,
								     NULL,
								     CREATE_ALWAYS,
								     0,
								     0);

	            if(fileout != INVALID_HANDLE_VALUE)
				{
					FUNC4("NumberOfSections: %d, size: %d\n", pNTHeaders->FileHeader.NumberOfSections,sizeof(IMAGE_SECTION_HEADER));
					FUNC5(szSymName,
								  fileout,
								  FUNC2(pNTHeaders),
								  pNTHeaders->FileHeader.NumberOfSections*sizeof(IMAGE_SECTION_HEADER),
								  p,
								  pStab,
								  nStabLen,
								  pStr,
								  nStabStrLen,
								  (char*)pSymTab,
								  nSym*sizeof(IMAGE_SYMBOL),
								  pStrTab,
								  nSymStrLen);

					FUNC0(fileout);
				}
	            else
	            {
	                FUNC4("LOADER: creation of symbol file %s failed\n",szSymName);
					iRetVal = 2;
	            }

			}
	        else
	        {
	            FUNC4("LOADER: file %s has no data inside symbol tables\n",filename);
				if( ulGlobalVerbose )
				{
	                if( !pStab || !nStabLen )
	                    FUNC4("LOADER: - symbol table is empty or not present\n");
	                if( !pStr  || !nStabStrLen )
	                    FUNC4("LOADER: - string table is empty or not present\n");
				}
	            iRetVal = 2;
	        }
		}
		else{
            FUNC4("LOADER: file %s does not have a symbol table\n",filename);
            iRetVal = 2;
		}
    }
    else
    {
        FUNC4("LOADER: file %s is not an ELF binary\n",filename);
        iRetVal = 1;
    }

    //printf("LOADER: leave process_pe()\n");
    return iRetVal;
}