
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIFile ;
typedef int nsAString ;
typedef int PRUnichar ;


 int FALSE ;
 scalar_t__ NS_FAILED (int ) ;
 int NS_NewLocalFile (int *,int ,int **) ;
 int WARN (char*,int ) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,int const*) ;

nsresult create_nsfile(const PRUnichar *path, nsIFile **ret)
{
    nsAString str;
    nsresult nsres;

    nsAString_InitDepend(&str, path);
    nsres = NS_NewLocalFile(&str, FALSE, ret);
    nsAString_Finish(&str);

    if(NS_FAILED(nsres))
        WARN("NS_NewLocalFile failed: %08x\n", nsres);
    return nsres;
}
