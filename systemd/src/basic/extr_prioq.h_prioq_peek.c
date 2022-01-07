
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Prioq ;


 void* prioq_peek_by_index (int *,int ) ;

__attribute__((used)) static inline void *prioq_peek(Prioq *q) {
        return prioq_peek_by_index(q, 0);
}
