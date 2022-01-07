
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redact_record {int dummy; } ;
typedef int bqueue_t ;


 int ASSERT (int ) ;
 struct redact_record* bqueue_dequeue (int *) ;
 int kmem_free (struct redact_record*,int) ;
 int redact_record_before (struct redact_record*,struct redact_record*) ;

__attribute__((used)) static struct redact_record *
get_next_redact_record(bqueue_t *bq, struct redact_record *prev)
{
 struct redact_record *next = bqueue_dequeue(bq);
 ASSERT(redact_record_before(prev, next));
 kmem_free(prev, sizeof (*prev));
 return (next);
}
