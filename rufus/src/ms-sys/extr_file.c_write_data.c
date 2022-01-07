
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int _offset; int _handle; } ;
typedef int HANDLE ;
typedef int FILE ;
typedef TYPE_1__ FAKE_FD ;


 int MAX_DATA_LEN ;
 int _mm_free (unsigned char*) ;
 unsigned char* _mm_malloc (int,int) ;
 int memcpy (unsigned char*,void const*,size_t) ;
 scalar_t__ read_sectors (int ,int,int,int,unsigned char*) ;
 int ulBytesPerSector ;
 int uprintf (char*) ;
 scalar_t__ write_sectors (int ,int,int,int,unsigned char*) ;

int write_data(FILE *fp, uint64_t Position,
               const void *pData, uint64_t Len)
{
   int r = 0;

   unsigned char *aucBuf = _mm_malloc(MAX_DATA_LEN, 4096);
   FAKE_FD* fd = (FAKE_FD*)fp;
   HANDLE hDrive = (HANDLE)fd->_handle;
   uint64_t StartSector, EndSector, NumSectors;

   if (aucBuf == ((void*)0))
      return 0;

   Position += fd->_offset;

   StartSector = Position/ulBytesPerSector;
   EndSector = (Position+Len+ulBytesPerSector-1)/ulBytesPerSector;
   NumSectors = EndSector - StartSector;

   if((NumSectors*ulBytesPerSector) > MAX_DATA_LEN)
   {
      uprintf("write_data: Please increase MAX_DATA_LEN in file.h\n");
      goto out;
   }

   if(Len > 0xFFFFFFFFUL)
   {
      uprintf("write_data: Len is too big\n");
      goto out;
   }


   if(read_sectors(hDrive, ulBytesPerSector, StartSector,
                     NumSectors, aucBuf) <= 0)
      goto out;

   if(!memcpy(&aucBuf[Position - StartSector*ulBytesPerSector], pData, (size_t)Len))
      goto out;

   if(write_sectors(hDrive, ulBytesPerSector, StartSector,
                     NumSectors, aucBuf) <= 0)
      goto out;

   r = 1;

out:
   _mm_free(aucBuf);
   return r;
}
