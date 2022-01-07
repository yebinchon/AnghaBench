
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef scalar_t__ CoercionPathType ;


 int COERCION_EXPLICIT ;
 scalar_t__ COERCION_PATH_FUNC ;
 int TEXTOID ;
 scalar_t__ find_coercion_pathway (int ,int ,int ,int *) ;
 int getTypeOutputInfo (int ,int *,int*) ;

__attribute__((used)) static Oid
find_text_coercion_func(Oid type)
{
 Oid funcid;
 bool is_varlena;
 CoercionPathType cpt;





 cpt = find_coercion_pathway(TEXTOID, type, COERCION_EXPLICIT, &funcid);

 if (cpt != COERCION_PATH_FUNC)
  getTypeOutputInfo(type, &funcid, &is_varlena);

 return funcid;
}
