
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_7__ {scalar_t__ DiskSize; int SectorSize; } ;
struct TYPE_6__ {scalar_t__ image_size; scalar_t__ compression_type; } ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ BLED_COMPRESSION_NONE ;
 int CHECK_FOR_USER_CANCEL ;
 int DD_BUFFER_SIZE ;
 scalar_t__ ERROR_CANCELLED ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_READ_FAULT ;
 int ERROR_SEVERITY_ERROR ;
 int ERROR_WRITE_FAULT ;
 int FAC (int ) ;
 int FACILITY_STORAGE ;
 scalar_t__ FALSE ;
 int FILE_BEGIN ;
 int FormatStatus ;
 int MSG_261 ;
 int MSG_286 ;
 int MSG_306 ;
 int OP_FORMAT ;
 scalar_t__ ReadFile (int *,int *,scalar_t__,scalar_t__*,int *) ;
 int RefreshDriveLayout (int *) ;
 scalar_t__ SCODE_CODE (int) ;
 TYPE_4__ SelectedDrive ;
 int SetFilePointerEx (int *,TYPE_1__,int *,int ) ;
 int Sleep (int) ;
 scalar_t__ TRUE ;
 int UpdateProgressWithInfo (int ,int ,scalar_t__,scalar_t__) ;
 int UpdateProgressWithInfoInit (int *,scalar_t__) ;
 int WRITE_RETRIES ;
 int WRITE_TIMEOUT ;
 int WindowsErrorString () ;
 scalar_t__ WriteFile (int *,int *,scalar_t__,scalar_t__*,int *) ;
 scalar_t__ _mm_malloc (scalar_t__,int) ;
 int _uprintf ;
 int assert (int) ;
 int bled_exit () ;
 int bled_init (int ,int ,int*) ;
 scalar_t__ bled_uncompress_with_handles (int *,int *,scalar_t__) ;
 scalar_t__ fast_zeroing ;
 TYPE_2__ img_report ;
 int memset (int *,int,scalar_t__) ;
 int safe_mm_free (int *) ;
 int update_progress ;
 int uprintf (char*,...) ;

__attribute__((used)) static BOOL WriteDrive(HANDLE hPhysicalDrive, HANDLE hSourceImage)
{
 BOOL s, ret = FALSE;
 LARGE_INTEGER li;
 DWORD rSize, wSize, xSize, BufSize;
 uint64_t wb, target_size = hSourceImage?img_report.image_size:SelectedDrive.DiskSize;
 int64_t bled_ret;
 uint8_t *buffer = ((void*)0);
 uint8_t *cmp_buffer = ((void*)0);
 int i, *ptr, zero_data, throttle_fast_zeroing = 0;


 li.QuadPart = 0;
 if (!SetFilePointerEx(hPhysicalDrive, li, ((void*)0), FILE_BEGIN))
  uprintf("Warning: Unable to rewind image position - wrong data might be copied!");
 UpdateProgressWithInfoInit(((void*)0), FALSE);

 if (img_report.compression_type != BLED_COMPRESSION_NONE) {
  uprintf("Writing compressed image...");
  bled_init(_uprintf, update_progress, &FormatStatus);
  bled_ret = bled_uncompress_with_handles(hSourceImage, hPhysicalDrive, img_report.compression_type);
  bled_exit();
  if ((bled_ret < 0) && (SCODE_CODE(FormatStatus) != ERROR_CANCELLED)) {

   uprintf("Could not write compressed image: %lld", bled_ret);
   FormatStatus = ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | ERROR_WRITE_FAULT;
   goto out;
  }
 } else {
  uprintf(hSourceImage?"Writing Image...":fast_zeroing?"Fast-zeroing drive...":"Zeroing drive...");

  BufSize = ((DD_BUFFER_SIZE + SelectedDrive.SectorSize - 1) / SelectedDrive.SectorSize) * SelectedDrive.SectorSize;
  buffer = (uint8_t*)_mm_malloc(BufSize, SelectedDrive.SectorSize);
  if (buffer == ((void*)0)) {
   FormatStatus = ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | ERROR_NOT_ENOUGH_MEMORY;
   uprintf("Could not allocate disk write buffer");
   goto out;
  }
  assert((uintptr_t)buffer % SelectedDrive.SectorSize == 0);


  memset(buffer, fast_zeroing ? 0xff : 0x00, BufSize);

  cmp_buffer = (uint8_t*)_mm_malloc(BufSize, SelectedDrive.SectorSize);
  if (cmp_buffer == ((void*)0)) {
   FormatStatus = ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | ERROR_NOT_ENOUGH_MEMORY;
   uprintf("Could not allocate disk comparison buffer");
   goto out;
  }
  assert((uintptr_t)cmp_buffer % SelectedDrive.SectorSize == 0);




  rSize = BufSize;
  for (wb = 0, wSize = 0; wb < (uint64_t)SelectedDrive.DiskSize; wb += wSize) {
   UpdateProgressWithInfo(OP_FORMAT, hSourceImage ? MSG_261 : fast_zeroing ? MSG_306 : MSG_286, wb, target_size);
   if (hSourceImage != ((void*)0)) {
    s = ReadFile(hSourceImage, buffer, BufSize, &rSize, ((void*)0));
    if (!s) {
     FormatStatus = ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | ERROR_READ_FAULT;
     uprintf("Read error: %s", WindowsErrorString());
     goto out;
    }
    if (rSize == 0)
     break;
   }

   if (wb + rSize > target_size) {
    rSize = (DWORD)(target_size - wb);
   }


   if (rSize % SelectedDrive.SectorSize != 0)
    rSize = ((rSize + SelectedDrive.SectorSize - 1) / SelectedDrive.SectorSize) * SelectedDrive.SectorSize;





   if (throttle_fast_zeroing) {
    throttle_fast_zeroing--;
   } else if (fast_zeroing) {
    assert(hSourceImage == ((void*)0));
    CHECK_FOR_USER_CANCEL;


    s = ReadFile(hPhysicalDrive, cmp_buffer, rSize, &xSize, ((void*)0));
    if ((!s) || (xSize != rSize) ) {
     uprintf("Read error: Could not read data for comparison - %s", WindowsErrorString());
     goto out;
    }


    ptr = (int*)(cmp_buffer);

    zero_data = ptr[0];

    if ((zero_data == 0) || (zero_data == -1)) {

     for (i = 1; i < (int)(rSize / sizeof(int)); i++) {
      if (ptr[i] != zero_data)
       break;
     }
     if (i >= (int)(rSize / sizeof(int))) {

      wSize = rSize;
      continue;
     }
    }


    li.QuadPart = wb;
    if (!SetFilePointerEx(hPhysicalDrive, li, ((void*)0), FILE_BEGIN)) {
     uprintf("Error: Could not reset position - %s", WindowsErrorString());
     goto out;
    }

    throttle_fast_zeroing = 15;
   }

   for (i = 1; i <= WRITE_RETRIES; i++) {
    CHECK_FOR_USER_CANCEL;
    s = WriteFile(hPhysicalDrive, buffer, rSize, &wSize, ((void*)0));
    if ((s) && (wSize == rSize))
     break;
    if (s)
     uprintf("Write error: Wrote %d bytes, expected %d bytes", wSize, rSize);
    else
     uprintf("Write error at sector %lld: %s", wb / SelectedDrive.SectorSize, WindowsErrorString());
    if (i < WRITE_RETRIES) {
     li.QuadPart = wb;
     uprintf("Retrying in %d seconds...", WRITE_TIMEOUT / 1000);
     Sleep(WRITE_TIMEOUT);
     if (!SetFilePointerEx(hPhysicalDrive, li, ((void*)0), FILE_BEGIN)) {
      uprintf("Write error: Could not reset position - %s", WindowsErrorString());
      goto out;
     }
    } else {
     FormatStatus = ERROR_SEVERITY_ERROR | FAC(FACILITY_STORAGE) | ERROR_WRITE_FAULT;
     goto out;
    }
    Sleep(200);
   }
   if (i > WRITE_RETRIES)
    goto out;
  }
 }
 RefreshDriveLayout(hPhysicalDrive);
 ret = TRUE;
out:
 safe_mm_free(buffer);
 safe_mm_free(cmp_buffer);
 return ret;
}
