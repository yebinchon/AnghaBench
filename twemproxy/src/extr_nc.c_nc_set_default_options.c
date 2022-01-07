
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instance {char* hostname; scalar_t__ pidfile; int * pid_filename; scalar_t__ pid; int mbuf_chunk_size; int stats_interval; int stats_addr; int stats_port; int conf_filename; int log_filename; int log_level; int * ctx; } ;
typedef scalar_t__ pid_t ;


 int NC_CONF_PATH ;
 int NC_LOG_DEFAULT ;
 int NC_LOG_PATH ;
 int NC_MAXHOSTNAMELEN ;
 int NC_MBUF_SIZE ;
 int NC_STATS_ADDR ;
 int NC_STATS_INTERVAL ;
 int NC_STATS_PORT ;
 int errno ;
 int log_warn (char*,int ) ;
 int nc_gethostname (char*,int) ;
 int nc_snprintf (char*,int,char*) ;
 int strerror (int ) ;

__attribute__((used)) static void
nc_set_default_options(struct instance *nci)
{
    int status;

    nci->ctx = ((void*)0);

    nci->log_level = NC_LOG_DEFAULT;
    nci->log_filename = NC_LOG_PATH;

    nci->conf_filename = NC_CONF_PATH;

    nci->stats_port = NC_STATS_PORT;
    nci->stats_addr = NC_STATS_ADDR;
    nci->stats_interval = NC_STATS_INTERVAL;

    status = nc_gethostname(nci->hostname, NC_MAXHOSTNAMELEN);
    if (status < 0) {
        log_warn("gethostname failed, ignored: %s", strerror(errno));
        nc_snprintf(nci->hostname, NC_MAXHOSTNAMELEN, "unknown");
    }
    nci->hostname[NC_MAXHOSTNAMELEN - 1] = '\0';

    nci->mbuf_chunk_size = NC_MBUF_SIZE;

    nci->pid = (pid_t)-1;
    nci->pid_filename = ((void*)0);
    nci->pidfile = 0;
}
