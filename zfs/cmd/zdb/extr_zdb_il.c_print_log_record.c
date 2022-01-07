
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* zl_os; } ;
typedef TYPE_2__ zilog_t ;
typedef scalar_t__ uint_t ;
typedef int uint64_t ;
typedef int u_longlong_t ;
struct TYPE_11__ {int lrc_txtype; int lrc_txg; scalar_t__ lrc_seq; scalar_t__ lrc_reclen; } ;
typedef TYPE_3__ lr_t ;
struct TYPE_12__ {int zri_count; int (* zri_print ) (TYPE_2__*,int,TYPE_3__*) ;int zri_name; } ;
struct TYPE_9__ {int os_encrypted; } ;


 int ASSERT (int) ;
 int MAX (int ,int ) ;
 int TX_CI ;
 scalar_t__ TX_MAX_TYPE ;
 int * dump_opt ;
 int printf (char*,char*,...) ;
 int stub1 (TYPE_2__*,int,TYPE_3__*) ;
 char* tab_prefix ;
 TYPE_4__* zil_rec_info ;

__attribute__((used)) static int
print_log_record(zilog_t *zilog, lr_t *lr, void *arg, uint64_t claim_txg)
{
 int txtype;
 int verbose = MAX(dump_opt['d'], dump_opt['i']);


 txtype = lr->lrc_txtype;

 ASSERT(txtype != 0 && (uint_t)txtype < TX_MAX_TYPE);
 ASSERT(lr->lrc_txg);

 (void) printf("\t\t%s%s len %6llu, txg %llu, seq %llu\n",
     (lr->lrc_txtype & TX_CI) ? "CI-" : "",
     zil_rec_info[txtype].zri_name,
     (u_longlong_t)lr->lrc_reclen,
     (u_longlong_t)lr->lrc_txg,
     (u_longlong_t)lr->lrc_seq);

 if (txtype && verbose >= 3) {
  if (!zilog->zl_os->os_encrypted) {
   zil_rec_info[txtype].zri_print(zilog, txtype, lr);
  } else {
   (void) printf("%s(encrypted)\n", tab_prefix);
  }
 }

 zil_rec_info[txtype].zri_count++;
 zil_rec_info[0].zri_count++;

 return (0);
}
