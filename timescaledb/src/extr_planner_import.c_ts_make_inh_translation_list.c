
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attcollation; int attname; scalar_t__ attisdropped; } ;
struct TYPE_6__ {int natts; } ;
typedef scalar_t__ Relation ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef int Index ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int AttrNumber ;


 int ERROR ;
 int * NIL ;
 char* NameStr (int ) ;
 TYPE_1__* RelationGetDescr (scalar_t__) ;
 int RelationGetRelationName (scalar_t__) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int elog (int ,char*,char*,int ) ;
 int * lappend (int *,int *) ;
 int * makeVar (int ,int ,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ strcmp (char*,char*) ;

void
ts_make_inh_translation_list(Relation oldrelation, Relation newrelation, Index newvarno,
        List **translated_vars)
{
 List *vars = NIL;
 TupleDesc old_tupdesc = RelationGetDescr(oldrelation);
 TupleDesc new_tupdesc = RelationGetDescr(newrelation);
 int oldnatts = old_tupdesc->natts;
 int newnatts = new_tupdesc->natts;
 int old_attno;

 for (old_attno = 0; old_attno < oldnatts; old_attno++)
 {
  Form_pg_attribute att;
  char *attname;
  Oid atttypid;
  int32 atttypmod;
  Oid attcollation;
  int new_attno;

  att = TupleDescAttr(old_tupdesc, old_attno);
  if (att->attisdropped)
  {

   vars = lappend(vars, ((void*)0));
   continue;
  }
  attname = NameStr(att->attname);
  atttypid = att->atttypid;
  atttypmod = att->atttypmod;
  attcollation = att->attcollation;





  if (oldrelation == newrelation)
  {
   vars = lappend(vars,
         makeVar(newvarno,
           (AttrNumber)(old_attno + 1),
           atttypid,
           atttypmod,
           attcollation,
           0));
   continue;
  }
  if (old_attno < newnatts && (att = TupleDescAttr(new_tupdesc, old_attno)) != ((void*)0) &&
   !att->attisdropped && strcmp(attname, NameStr(att->attname)) == 0)
   new_attno = old_attno;
  else
  {
   for (new_attno = 0; new_attno < newnatts; new_attno++)
   {
    att = TupleDescAttr(new_tupdesc, new_attno);
    if (!att->attisdropped && strcmp(attname, NameStr(att->attname)) == 0)
     break;
   }
   if (new_attno >= newnatts)
    elog(ERROR,
      "could not find inherited attribute \"%s\" of relation \"%s\"",
      attname,
      RelationGetRelationName(newrelation));
  }


  if (atttypid != att->atttypid || atttypmod != att->atttypmod)
   elog(ERROR,
     "attribute \"%s\" of relation \"%s\" does not match parent's type",
     attname,
     RelationGetRelationName(newrelation));
  if (attcollation != att->attcollation)
   elog(ERROR,
     "attribute \"%s\" of relation \"%s\" does not match parent's collation",
     attname,
     RelationGetRelationName(newrelation));

  vars = lappend(vars,
        makeVar(newvarno,
          (AttrNumber)(new_attno + 1),
          atttypid,
          atttypmod,
          attcollation,
          0));
 }

 *translated_vars = vars;
}
