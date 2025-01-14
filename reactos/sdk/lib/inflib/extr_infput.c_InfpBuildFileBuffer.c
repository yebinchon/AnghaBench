
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int* Buffer; scalar_t__ FreeSize; scalar_t__ TotalSize; int Status; int * Current; } ;
struct TYPE_11__ {TYPE_1__* FirstSection; } ;
struct TYPE_10__ {int* Data; struct TYPE_10__* Next; } ;
struct TYPE_9__ {char* Key; struct TYPE_9__* Next; TYPE_3__* FirstField; } ;
struct TYPE_8__ {char* Name; struct TYPE_8__* Next; TYPE_2__* FirstLine; } ;
typedef int* PWCHAR ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHELINE ;
typedef TYPE_3__* PINFCACHEFIELD ;
typedef TYPE_4__* PINFCACHE ;
typedef TYPE_5__ OUTPUTBUFFER ;
typedef int INFSTATUS ;
typedef scalar_t__ BOOLEAN ;


 int DPRINT (char*,...) ;
 char* EOL ;
 scalar_t__ FALSE ;
 int FREE (int*) ;
 int INF_STATUS_SUCCESS ;
 scalar_t__ INF_SUCCESS (int ) ;
 int Output (TYPE_5__*,char*) ;

INFSTATUS
InfpBuildFileBuffer(PINFCACHE Cache,
                    PWCHAR *Buffer,
                    PULONG BufferSize)
{
  OUTPUTBUFFER OutBuf;
  PINFCACHESECTION CacheSection;
  PINFCACHELINE CacheLine;
  PINFCACHEFIELD CacheField;
  PWCHAR p;
  BOOLEAN NeedQuotes;

  OutBuf.Buffer = ((void*)0);
  OutBuf.Current = ((void*)0);
  OutBuf.FreeSize = 0;
  OutBuf.TotalSize = 0;
  OutBuf.Status = INF_STATUS_SUCCESS;


  CacheSection = Cache->FirstSection;
  while (CacheSection != ((void*)0))
    {
      DPRINT("Processing section %S\n", CacheSection->Name);
      if (CacheSection != Cache->FirstSection)
        {
          Output(&OutBuf, EOL);
        }
      Output(&OutBuf, L"[");
      Output(&OutBuf, CacheSection->Name);
      Output(&OutBuf, L"]");
      Output(&OutBuf, EOL);


      CacheLine = CacheSection->FirstLine;
      while (CacheLine != ((void*)0))
        {
          if (((void*)0) != CacheLine->Key)
            {
              DPRINT("Line with key %S\n", CacheLine->Key);
              Output(&OutBuf, CacheLine->Key);
              Output(&OutBuf, L" = ");
            }
          else
            {
              DPRINT("Line without key\n");
            }


          CacheField = CacheLine->FirstField;
          while (CacheField != ((void*)0))
            {
              if (CacheField != CacheLine->FirstField)
                {
                  Output(&OutBuf, L",");
                }
              p = CacheField->Data;
              NeedQuotes = FALSE;
              while (L'\0' != *p && ! NeedQuotes)
                {
                  NeedQuotes = (BOOLEAN)(L',' == *p || L';' == *p ||
                                         L'\\' == *p);
                  p++;
                }
              if (NeedQuotes)
                {
                  Output(&OutBuf, L"\"");
                  Output(&OutBuf, CacheField->Data);
                  Output(&OutBuf, L"\"");
                }
              else
                {
                  Output(&OutBuf, CacheField->Data);
                }


              CacheField = CacheField->Next;
            }

          Output(&OutBuf, EOL);

          CacheLine = CacheLine->Next;
        }


      CacheSection = CacheSection->Next;
    }

  if (INF_SUCCESS(OutBuf.Status))
    {
      *Buffer = OutBuf.Buffer;
      *BufferSize = OutBuf.TotalSize - OutBuf.FreeSize;
    }
  else if (((void*)0) != OutBuf.Buffer)
    {
      FREE(OutBuf.Buffer);
    }

  return INF_STATUS_SUCCESS;
}
