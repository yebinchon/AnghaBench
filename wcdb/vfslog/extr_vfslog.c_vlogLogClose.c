
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_mutex ;
struct TYPE_6__ {scalar_t__ nRef; scalar_t__ zFilename; int gzMutex; int gzOut; int tmpOut; TYPE_1__** ppPrev; TYPE_1__* pNext; } ;
typedef TYPE_2__ VLogLog ;
struct TYPE_5__ {struct TYPE_5__** ppPrev; } ;


 int SQLITE_MUTEX_STATIC_MASTER ;
 int fclose (int ) ;
 int gzclose (int ) ;
 int sqlite3_free (TYPE_2__*) ;
 int * sqlite3_mutex_alloc (int ) ;
 int sqlite3_mutex_enter (int *) ;
 int sqlite3_mutex_free (int ) ;
 int sqlite3_mutex_leave (int *) ;

__attribute__((used)) static void vlogLogClose(VLogLog *p)
{
    if (p) {
        sqlite3_mutex *pMutex;
        p->nRef--;
        if (p->nRef > 0 || p->zFilename == 0)
            return;
        pMutex = sqlite3_mutex_alloc(SQLITE_MUTEX_STATIC_MASTER);
        sqlite3_mutex_enter(pMutex);
        *p->ppPrev = p->pNext;
        if (p->pNext)
            p->pNext->ppPrev = p->ppPrev;
        sqlite3_mutex_leave(pMutex);

        fclose(p->tmpOut);
        gzclose(p->gzOut);
        sqlite3_mutex_free(p->gzMutex);
        sqlite3_free(p);
    }
}
