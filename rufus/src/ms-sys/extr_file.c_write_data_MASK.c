#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {int _offset; int /*<<< orphan*/  _handle; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ FAKE_FD ;

/* Variables and functions */
 int MAX_DATA_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void const*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int,int,unsigned char*) ; 
 int ulBytesPerSector ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int,int,unsigned char*) ; 

int FUNC6(FILE *fp, uint64_t Position,
               const void *pData, uint64_t Len)
{
   int r = 0;
   /* Windows' WriteFile() may require a buffer that is aligned to the sector size */
   unsigned char *aucBuf = FUNC1(MAX_DATA_LEN, 4096);
   FAKE_FD* fd = (FAKE_FD*)fp;
   HANDLE hDrive = (HANDLE)fd->_handle;
   uint64_t StartSector, EndSector, NumSectors;

   if (aucBuf == NULL)
      return 0;

   Position += fd->_offset;

   StartSector = Position/ulBytesPerSector;
   EndSector   = (Position+Len+ulBytesPerSector-1)/ulBytesPerSector;
   NumSectors  = EndSector - StartSector;

   if((NumSectors*ulBytesPerSector) > MAX_DATA_LEN)
   {
      FUNC4("write_data: Please increase MAX_DATA_LEN in file.h\n");
      goto out;
   }

   if(Len > 0xFFFFFFFFUL)
   {
      FUNC4("write_data: Len is too big\n");
      goto out;
   }

   /* Data to write may not be aligned on a sector boundary => read into a sector buffer first */
   if(FUNC3(hDrive, ulBytesPerSector, StartSector,
                     NumSectors, aucBuf) <= 0)
      goto out;

   if(!FUNC2(&aucBuf[Position - StartSector*ulBytesPerSector], pData, (size_t)Len))
      goto out;

   if(FUNC5(hDrive, ulBytesPerSector, StartSector,
                     NumSectors, aucBuf) <= 0)
      goto out;

   r = 1;

out:
   FUNC0(aucBuf);
   return r;
}