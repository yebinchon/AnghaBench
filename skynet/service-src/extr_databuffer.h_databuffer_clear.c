
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct messagepool {int dummy; } ;
struct databuffer {scalar_t__ head; } ;


 int _return_message (struct databuffer*,struct messagepool*) ;
 int memset (struct databuffer*,int ,int) ;

__attribute__((used)) static void
databuffer_clear(struct databuffer *db, struct messagepool *mp) {
 while (db->head) {
  _return_message(db,mp);
 }
 memset(db, 0, sizeof(*db));
}
