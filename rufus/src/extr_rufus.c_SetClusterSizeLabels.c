
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ClusterSizeLabel ;
 unsigned int MAX_CLUSTER_SIZES ;
 unsigned int MSG_026 ;
 unsigned int MSG_029 ;
 int lmprintf (unsigned int) ;
 int safe_sprintf (int ,int,char*,...) ;

__attribute__((used)) static void SetClusterSizeLabels(void)
{
 unsigned int i, j, msg_id;
 safe_sprintf(ClusterSizeLabel[0], 64, lmprintf(MSG_029));
 for (i=512, j=1, msg_id=MSG_026; j<MAX_CLUSTER_SIZES; i<<=1, j++) {
  if (i > 8192) {
   i /= 1024;
   msg_id++;
  }
  safe_sprintf(ClusterSizeLabel[j], 64, "%d %s", i, lmprintf(msg_id));
 }
}
