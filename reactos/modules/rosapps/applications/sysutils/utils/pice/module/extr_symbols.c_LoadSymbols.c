
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {scalar_t__ magic; int name; int ulNumberOfSrcFiles; int ulOffsetToSrcFiles; int ulSizeOfStabsStrings; int ulOffsetToStabsStrings; int ulSizeOfStabs; int ulOffsetToStabs; int ulSizeOfGlobalsStrings; int ulOffsetToGlobalsStrings; int ulSizeOfGlobals; int ulOffsetToGlobals; int ulSizeOfHeader; int ulOffsetToHeaders; } ;
typedef int PVOID ;
typedef TYPE_1__ PICE_SYMBOLFILE_HEADER ;
typedef int LPSTR ;
typedef scalar_t__ HANDLE ;


 int CP_ACP ;
 scalar_t__ DIM (TYPE_1__**) ;
 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int NONPAGEDPOOL ;
 int OF_READ ;
 scalar_t__ PICE_MAGIC ;
 int PICE_MultiByteToWideChar (int ,int *,int ,int,int *,int) ;
 int PICE_close (scalar_t__) ;
 int PICE_free (TYPE_1__*) ;
 size_t PICE_len (scalar_t__) ;
 TYPE_1__* PICE_malloc (size_t,int ) ;
 scalar_t__ PICE_open (int *,int ) ;
 size_t PICE_read (scalar_t__,int ,size_t) ;
 TYPE_1__** apSymbols ;
 scalar_t__ ulNumSymbolsLoaded ;

PICE_SYMBOLFILE_HEADER* LoadSymbols(LPSTR filename)
{
 HANDLE hf;
    PICE_SYMBOLFILE_HEADER* pSymbols=((void*)0);
 WCHAR tempstr[256];
 int conv;
 ENTER_FUNC();

 if( !( conv = PICE_MultiByteToWideChar(CP_ACP, ((void*)0), filename, -1, tempstr, 256 ) ) )
 {
  DPRINT((0,"Can't convert module name.\n"));
  return ((void*)0);
 }
 DPRINT((0,"LoadSymbols: filename %s, tempstr %S, conv: %d\n", filename, tempstr, conv));

    if(ulNumSymbolsLoaded<DIM(apSymbols))
    {
     hf = PICE_open(tempstr,OF_READ);
  DPRINT((0,"LoadSymbols: hf: %x, file: %S\n",hf, tempstr));
     if(hf)
     {

      size_t len;

            DPRINT((0,"hf = %x\n",hf));

      len = PICE_len(hf);
      DPRINT((0,"file len = %d\n",len));

            if(len)
            {
          pSymbols = PICE_malloc(len+1,NONPAGEDPOOL);
          DPRINT((0,"pSymbols = %x\n",pSymbols));

          if(pSymbols)
          {

           if(len == PICE_read(hf,(PVOID)pSymbols,len))
           {
            DPRINT((0,"LoadSymbols(): success reading symbols!\n"));
            DPRINT((0,"LoadSymbols(): pSymbols->magic = %X\n",pSymbols->magic));
           }



     if(pSymbols->magic == PICE_MAGIC)
     {
                        DPRINT((0,"magic = %X\n",pSymbols->magic));
                     DPRINT((0,"name = %S\n",pSymbols->name));
                        DPRINT((0,"ulOffsetToHeaders,ulSizeOfHeader = %X,%X\n",pSymbols->ulOffsetToHeaders,pSymbols->ulSizeOfHeader));
                        DPRINT((0,"ulOffsetToGlobals,ulSizeOfGlobals = %X,%X\n",pSymbols->ulOffsetToGlobals,pSymbols->ulSizeOfGlobals));
                        DPRINT((0,"ulOffsetToGlobalsStrings,ulSizeOfGlobalsStrings = %X,%X\n",pSymbols->ulOffsetToGlobalsStrings,pSymbols->ulSizeOfGlobalsStrings));
                        DPRINT((0,"ulOffsetToStabs,ulSizeOfStabs = %X,%X\n",pSymbols->ulOffsetToStabs,pSymbols->ulSizeOfStabs));
                        DPRINT((0,"ulOffsetToStabsStrings,ulSizeOfStabsStrings = %X,%X\n",pSymbols->ulOffsetToStabsStrings,pSymbols->ulSizeOfStabsStrings));
                        DPRINT((0,"ulOffsetToSrcFiles,ulNumberOfSrcFiles = %X,%X\n",pSymbols->ulOffsetToSrcFiles,pSymbols->ulNumberOfSrcFiles));
      DPRINT((0,"pICE: symbols loaded for module \"%S\" @ %x\n",pSymbols->name,pSymbols));
      apSymbols[ulNumSymbolsLoaded++]=pSymbols;
     }
     else
     {
         DPRINT((0,"LoadSymbols(): freeing %x\n",pSymbols));
      DPRINT((0,"pICE: symbols file \"%s\" corrupt\n",filename));
         PICE_free(pSymbols);
     }
          }

            }
      PICE_close(hf);
     }
        else
        {
   DPRINT((0,"pICE: could not load symbols for %s...\n",filename));
        }
    }

 LEAVE_FUNC();

    return pSymbols;
}
