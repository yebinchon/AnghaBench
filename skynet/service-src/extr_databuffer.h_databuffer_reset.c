
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct databuffer {scalar_t__ header; } ;



__attribute__((used)) static inline void
databuffer_reset(struct databuffer *db) {
 db->header = 0;
}
