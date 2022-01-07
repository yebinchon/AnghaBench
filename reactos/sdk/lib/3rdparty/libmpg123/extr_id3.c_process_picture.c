
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char type; unsigned char* data; size_t size; int description; int mime_type; } ;
typedef TYPE_1__ mpg123_picture ;
typedef int mpg123_handle ;


 scalar_t__ NOQUIET ;
 scalar_t__ VERBOSE4 ;
 TYPE_1__* add_picture (int *) ;
 int debug (char*) ;
 int error (char*) ;
 int error1 (char*,unsigned char) ;
 int fprintf (int ,char*,...) ;
 int id3_to_utf8 (int *,unsigned char,unsigned char*,int,scalar_t__) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 unsigned char mpg123_id3_enc_max ;
 unsigned char* next_text (unsigned char*,unsigned char,size_t) ;
 int pop_picture (int *) ;
 int stderr ;

__attribute__((used)) static void process_picture(mpg123_handle *fr, unsigned char *realdata, size_t realsize)
{
 unsigned char encoding = realdata[0];
 mpg123_picture *i = ((void*)0);
 unsigned char* workpoint;
 if(realsize == 0)
 {
  debug("Empty id3 data!");
  return;
 }
 if(encoding > mpg123_id3_enc_max)
 {
  if(NOQUIET)
   error1("Unknown text encoding %u, I take no chances, sorry!", encoding);
  return;
 }
 if(VERBOSE4) fprintf(stderr, "Note: Storing picture from APIC frame.\n");

 i = add_picture(fr);
 if(i == ((void*)0))
 {
  if(NOQUIET) error("Unable to attach new picture!");
  return;
 }
 realdata++; realsize--;

 workpoint = next_text(realdata, 0, realsize);
 if (workpoint == ((void*)0)) {
  pop_picture(fr);
  if (NOQUIET) error("Unable to get mime type for picture; skipping picture.");
  return;
 }
 id3_to_utf8(&i->mime_type, 0, realdata, workpoint - realdata, NOQUIET);
 realsize -= workpoint - realdata;
 realdata = workpoint;

 i->type = realdata[0];
 realdata++; realsize--;

 workpoint = next_text(realdata, encoding, realsize);
 if (workpoint == ((void*)0)) {
  if (NOQUIET) error("Unable to get description for picture; skipping picture.");
  pop_picture(fr);
  return;
 }
 id3_to_utf8(&i->description, encoding, realdata, workpoint - realdata, NOQUIET);
 realsize -= workpoint - realdata;
 if (realsize == 0) {
  if (NOQUIET) error("No picture data defined; skipping picture.");
  pop_picture(fr);
  return;
 }

 i->data = (unsigned char*)malloc(realsize);
 if (i->data == ((void*)0)) {
  if (NOQUIET) error("Unable to allocate memory for picture; skipping picture");
  pop_picture(fr);
  return;
 }
 memcpy(i->data, workpoint, realsize);
 i->size = realsize;
 if(VERBOSE4) fprintf(stderr, "Note: ID3v2 APIC picture frame of type: %d\n", i->type);
}
