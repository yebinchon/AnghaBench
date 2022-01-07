
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef char* sds ;
struct TYPE_12__ {void* port; int name; void* configEpoch; void* pong_received; void* ping_sent; struct TYPE_12__* slaveof; int flags; void* fail_time; void* cport; int ip; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_13__ {TYPE_1__* cluster; } ;
struct TYPE_11__ {scalar_t__ currentEpoch; TYPE_2__* myself; TYPE_2__** importing_slots_from; TYPE_2__** migrating_slots_to; void* lastVoteEpoch; } ;
typedef int FILE ;


 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_MASTER ;
 int CLUSTER_NODE_MYSELF ;
 int CLUSTER_NODE_NOADDR ;
 int CLUSTER_NODE_NOFAILOVER ;
 int CLUSTER_NODE_PFAIL ;
 int CLUSTER_NODE_SLAVE ;
 int CLUSTER_PORT_INCR ;
 int CLUSTER_SLOTS ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ ENOENT ;
 int LL_NOTICE ;
 int LL_WARNING ;
 void* atoi (char*) ;
 int clusterAddNode (TYPE_2__*) ;
 int clusterAddSlot (TYPE_2__*,int ) ;
 scalar_t__ clusterGetMaxEpoch () ;
 TYPE_2__* clusterLookupNode (char*) ;
 int clusterNodeAddSlave (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* createClusterNode (char*,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fstat (int ,struct stat*) ;
 int memcpy (int ,char*,scalar_t__) ;
 void* mstime () ;
 TYPE_2__* myself ;
 int sdsfreesplitres (char**,int) ;
 char** sdssplitargs (char*,int*) ;
 TYPE_3__ server ;
 int serverAssert (int ) ;
 int serverLog (int ,char*,...) ;
 int serverPanic (char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 int strerror (scalar_t__) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;
 void* strtoull (char*,int *,int) ;
 int zfree (char*) ;
 char* zmalloc (int) ;

int clusterLoadConfig(char *filename) {
    FILE *fp = fopen(filename,"r");
    struct stat sb;
    char *line;
    int maxline, j;

    if (fp == ((void*)0)) {
        if (errno == ENOENT) {
            return C_ERR;
        } else {
            serverLog(LL_WARNING,
                "Loading the cluster node config from %s: %s",
                filename, strerror(errno));
            exit(1);
        }
    }



    if (fstat(fileno(fp),&sb) != -1 && sb.st_size == 0) {
        fclose(fp);
        return C_ERR;
    }
    maxline = 1024+CLUSTER_SLOTS*128;
    line = zmalloc(maxline);
    while(fgets(line,maxline,fp) != ((void*)0)) {
        int argc;
        sds *argv;
        clusterNode *n, *master;
        char *p, *s;




        if (line[0] == '\n' || line[0] == '\0') continue;


        argv = sdssplitargs(line,&argc);
        if (argv == ((void*)0)) goto fmterr;



        if (strcasecmp(argv[0],"vars") == 0) {
            if (!(argc % 2)) goto fmterr;
            for (j = 1; j < argc; j += 2) {
                if (strcasecmp(argv[j],"currentEpoch") == 0) {
                    server.cluster->currentEpoch =
                            strtoull(argv[j+1],((void*)0),10);
                } else if (strcasecmp(argv[j],"lastVoteEpoch") == 0) {
                    server.cluster->lastVoteEpoch =
                            strtoull(argv[j+1],((void*)0),10);
                } else {
                    serverLog(LL_WARNING,
                        "Skipping unknown cluster config variable '%s'",
                        argv[j]);
                }
            }
            sdsfreesplitres(argv,argc);
            continue;
        }


        if (argc < 8) goto fmterr;


        n = clusterLookupNode(argv[0]);
        if (!n) {
            n = createClusterNode(argv[0],0);
            clusterAddNode(n);
        }

        if ((p = strrchr(argv[1],':')) == ((void*)0)) goto fmterr;
        *p = '\0';
        memcpy(n->ip,argv[1],strlen(argv[1])+1);
        char *port = p+1;
        char *busp = strchr(port,'@');
        if (busp) {
            *busp = '\0';
            busp++;
        }
        n->port = atoi(port);



        n->cport = busp ? atoi(busp) : n->port + CLUSTER_PORT_INCR;


        p = s = argv[2];
        while(p) {
            p = strchr(s,',');
            if (p) *p = '\0';
            if (!strcasecmp(s,"myself")) {
                serverAssert(server.cluster->myself == ((void*)0));
                myself = server.cluster->myself = n;
                n->flags |= CLUSTER_NODE_MYSELF;
            } else if (!strcasecmp(s,"master")) {
                n->flags |= CLUSTER_NODE_MASTER;
            } else if (!strcasecmp(s,"slave")) {
                n->flags |= CLUSTER_NODE_SLAVE;
            } else if (!strcasecmp(s,"fail?")) {
                n->flags |= CLUSTER_NODE_PFAIL;
            } else if (!strcasecmp(s,"fail")) {
                n->flags |= CLUSTER_NODE_FAIL;
                n->fail_time = mstime();
            } else if (!strcasecmp(s,"handshake")) {
                n->flags |= CLUSTER_NODE_HANDSHAKE;
            } else if (!strcasecmp(s,"noaddr")) {
                n->flags |= CLUSTER_NODE_NOADDR;
            } else if (!strcasecmp(s,"nofailover")) {
                n->flags |= CLUSTER_NODE_NOFAILOVER;
            } else if (!strcasecmp(s,"noflags")) {

            } else {
                serverPanic("Unknown flag in redis cluster config file");
            }
            if (p) s = p+1;
        }



        if (argv[3][0] != '-') {
            master = clusterLookupNode(argv[3]);
            if (!master) {
                master = createClusterNode(argv[3],0);
                clusterAddNode(master);
            }
            n->slaveof = master;
            clusterNodeAddSlave(master,n);
        }


        if (atoi(argv[4])) n->ping_sent = mstime();
        if (atoi(argv[5])) n->pong_received = mstime();


        n->configEpoch = strtoull(argv[6],((void*)0),10);


        for (j = 8; j < argc; j++) {
            int start, stop;

            if (argv[j][0] == '[') {

                int slot;
                char direction;
                clusterNode *cn;

                p = strchr(argv[j],'-');
                serverAssert(p != ((void*)0));
                *p = '\0';
                direction = p[1];
                slot = atoi(argv[j]+1);
                if (slot < 0 || slot >= CLUSTER_SLOTS) goto fmterr;
                p += 3;
                cn = clusterLookupNode(p);
                if (!cn) {
                    cn = createClusterNode(p,0);
                    clusterAddNode(cn);
                }
                if (direction == '>') {
                    server.cluster->migrating_slots_to[slot] = cn;
                } else {
                    server.cluster->importing_slots_from[slot] = cn;
                }
                continue;
            } else if ((p = strchr(argv[j],'-')) != ((void*)0)) {
                *p = '\0';
                start = atoi(argv[j]);
                stop = atoi(p+1);
            } else {
                start = stop = atoi(argv[j]);
            }
            if (start < 0 || start >= CLUSTER_SLOTS) goto fmterr;
            if (stop < 0 || stop >= CLUSTER_SLOTS) goto fmterr;
            while(start <= stop) clusterAddSlot(n, start++);
        }

        sdsfreesplitres(argv,argc);
    }

    if (server.cluster->myself == ((void*)0)) goto fmterr;

    zfree(line);
    fclose(fp);

    serverLog(LL_NOTICE,"Node configuration loaded, I'm %.40s", myself->name);




    if (clusterGetMaxEpoch() > server.cluster->currentEpoch) {
        server.cluster->currentEpoch = clusterGetMaxEpoch();
    }
    return C_OK;

fmterr:
    serverLog(LL_WARNING,
        "Unrecoverable error: corrupted cluster config file.");
    zfree(line);
    if (fp) fclose(fp);
    exit(1);
}
