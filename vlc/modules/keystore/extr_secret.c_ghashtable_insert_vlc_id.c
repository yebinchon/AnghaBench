
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GHashTable ;


 scalar_t__ VLC_KEYSTORE_NAME ;
 int g_hash_table_insert (int *,int ,int ) ;

__attribute__((used)) static void
ghashtable_insert_vlc_id(GHashTable *g_hash)
{
    g_hash_table_insert(g_hash, (gpointer) ".created_by",
                        (gpointer) VLC_KEYSTORE_NAME);
}
