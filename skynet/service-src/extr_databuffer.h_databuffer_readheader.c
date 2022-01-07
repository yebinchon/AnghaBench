
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct messagepool {int dummy; } ;
struct databuffer {int header; int size; } ;


 int databuffer_read (struct databuffer*,struct messagepool*,char*,int) ;

__attribute__((used)) static int
databuffer_readheader(struct databuffer *db, struct messagepool *mp, int header_size) {
 if (db->header == 0) {

  if (db->size < header_size) {
   return -1;
  }
  uint8_t plen[4];
  databuffer_read(db,mp,(char *)plen,header_size);

  if (header_size == 2) {
   db->header = plen[0] << 8 | plen[1];
  } else {
   db->header = plen[0] << 24 | plen[1] << 16 | plen[2] << 8 | plen[3];
  }
 }
 if (db->size < db->header)
  return -1;
 return db->header;
}
