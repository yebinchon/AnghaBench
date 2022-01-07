
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Transaction ;
typedef int Job ;


 int assert (int *) ;
 int job_free (int *) ;
 int transaction_unlink_job (int *,int *,int) ;

__attribute__((used)) static void transaction_delete_job(Transaction *tr, Job *j, bool delete_dependencies) {
        assert(tr);
        assert(j);



        transaction_unlink_job(tr, j, delete_dependencies);

        job_free(j);
}
