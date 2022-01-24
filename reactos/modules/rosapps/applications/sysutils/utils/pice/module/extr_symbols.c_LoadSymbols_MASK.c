#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {scalar_t__ magic; int /*<<< orphan*/  name; int /*<<< orphan*/  ulNumberOfSrcFiles; int /*<<< orphan*/  ulOffsetToSrcFiles; int /*<<< orphan*/  ulSizeOfStabsStrings; int /*<<< orphan*/  ulOffsetToStabsStrings; int /*<<< orphan*/  ulSizeOfStabs; int /*<<< orphan*/  ulOffsetToStabs; int /*<<< orphan*/  ulSizeOfGlobalsStrings; int /*<<< orphan*/  ulOffsetToGlobalsStrings; int /*<<< orphan*/  ulSizeOfGlobals; int /*<<< orphan*/  ulOffsetToGlobals; int /*<<< orphan*/  ulSizeOfHeader; int /*<<< orphan*/  ulOffsetToHeaders; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__ PICE_SYMBOLFILE_HEADER ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  NONPAGEDPOOL ; 
 int /*<<< orphan*/  OF_READ ; 
 scalar_t__ PICE_MAGIC ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 size_t FUNC7 (scalar_t__) ; 
 TYPE_1__* FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__** apSymbols ; 
 scalar_t__ ulNumSymbolsLoaded ; 

PICE_SYMBOLFILE_HEADER* FUNC11(LPSTR filename)
{
	HANDLE hf;
    PICE_SYMBOLFILE_HEADER* pSymbols=NULL;
	WCHAR tempstr[256];
	int conv;
	FUNC2();

	if( !( conv = FUNC4(CP_ACP, NULL, filename, -1, tempstr, 256 ) ) )
	{
		FUNC1((0,"Can't convert module name.\n"));
		return NULL;
	}
	FUNC1((0,"LoadSymbols: filename %s, tempstr %S, conv: %d\n", filename, tempstr, conv));

    if(ulNumSymbolsLoaded<FUNC0(apSymbols))
    {
	    hf = FUNC9(tempstr,OF_READ);
		FUNC1(*(0,"LoadSymbols: hf: %x, file: %S\n",hf, tempstr));
	    if(hf)
	    {
		    //mm_segment_t oldfs;
		    size_t len;

            FUNC1((0,"hf = %x\n",hf));

		    len = FUNC7(hf);
		    FUNC1((0,"file len = %d\n",len));

            if(len)
            {
		        pSymbols = FUNC8(len+1,NONPAGEDPOOL);  // maybe make pool setting an option
		        FUNC1((0,"pSymbols = %x\n",pSymbols));

		        if(pSymbols)
		        {
        		    //oldfs = get_fs(); set_fs(KERNEL_DS);
			        if(len == FUNC10(hf,(PVOID)pSymbols,len))
			        {
				        FUNC1((0,"LoadSymbols(): success reading symbols!\n"));
				        FUNC1((0,"LoadSymbols(): pSymbols->magic = %X\n",pSymbols->magic));
			        }
        		    //set_fs(oldfs);


					if(pSymbols->magic == PICE_MAGIC)
					{
                        FUNC1((0,"magic = %X\n",pSymbols->magic));
	                    FUNC1((0,"name = %S\n",pSymbols->name));
                        FUNC1((0,"ulOffsetToHeaders,ulSizeOfHeader = %X,%X\n",pSymbols->ulOffsetToHeaders,pSymbols->ulSizeOfHeader));
                        FUNC1((0,"ulOffsetToGlobals,ulSizeOfGlobals = %X,%X\n",pSymbols->ulOffsetToGlobals,pSymbols->ulSizeOfGlobals));
                        FUNC1((0,"ulOffsetToGlobalsStrings,ulSizeOfGlobalsStrings = %X,%X\n",pSymbols->ulOffsetToGlobalsStrings,pSymbols->ulSizeOfGlobalsStrings));
                        FUNC1((0,"ulOffsetToStabs,ulSizeOfStabs = %X,%X\n",pSymbols->ulOffsetToStabs,pSymbols->ulSizeOfStabs));
                        FUNC1((0,"ulOffsetToStabsStrings,ulSizeOfStabsStrings = %X,%X\n",pSymbols->ulOffsetToStabsStrings,pSymbols->ulSizeOfStabsStrings));
                        FUNC1((0,"ulOffsetToSrcFiles,ulNumberOfSrcFiles = %X,%X\n",pSymbols->ulOffsetToSrcFiles,pSymbols->ulNumberOfSrcFiles));
						FUNC1((0,"pICE: symbols loaded for module \"%S\" @ %x\n",pSymbols->name,pSymbols));
						apSymbols[ulNumSymbolsLoaded++]=pSymbols;
					}
					else
					{
    					FUNC1((0,"LoadSymbols(): freeing %x\n",pSymbols));
						FUNC1((0,"pICE: symbols file \"%s\" corrupt\n",filename));
	    				FUNC6(pSymbols);
					}
		        }

            }
		    FUNC5(hf);
	    }
        else
        {
			FUNC1((0,"pICE: could not load symbols for %s...\n",filename));
        }
    }

	FUNC3();

    return pSymbols;
}