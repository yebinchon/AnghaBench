
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int eType; struct TYPE_7__* pReal; } ;
typedef TYPE_2__ sqlite3_mutex ;
struct TYPE_6__ {TYPE_2__* (* xMutexAlloc ) (int) ;} ;
struct TYPE_8__ {int isInit; TYPE_2__* aStatic; TYPE_1__ m; } ;


 int MAX_MUTEXES ;
 int SQLITE_MUTEX_FAST ;
 int SQLITE_MUTEX_RECURSIVE ;
 int SQLITE_MUTEX_STATIC_VFS3 ;
 int STATIC_MUTEXES ;
 int assert (int) ;
 TYPE_4__ g ;
 scalar_t__ malloc (int) ;
 TYPE_2__* stub1 (int) ;

__attribute__((used)) static sqlite3_mutex *counterMutexAlloc(int eType){
  sqlite3_mutex *pReal;
  sqlite3_mutex *pRet = 0;

  assert( g.isInit );
  assert( eType>=SQLITE_MUTEX_FAST );
  assert( eType<=SQLITE_MUTEX_STATIC_VFS3 );

  pReal = g.m.xMutexAlloc(eType);
  if( !pReal ) return 0;

  if( eType==SQLITE_MUTEX_FAST || eType==SQLITE_MUTEX_RECURSIVE ){
    pRet = (sqlite3_mutex *)malloc(sizeof(sqlite3_mutex));
  }else{
    int eStaticType = eType - (MAX_MUTEXES - STATIC_MUTEXES);
    assert( eStaticType>=0 );
    assert( eStaticType<STATIC_MUTEXES );
    pRet = &g.aStatic[eStaticType];
  }

  pRet->eType = eType;
  pRet->pReal = pReal;
  return pRet;
}
