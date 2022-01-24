#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint32_t ;
struct string {char* data; int len; } ;
struct conf_server {int valid; int /*<<< orphan*/  addrstr; int /*<<< orphan*/  name; void* port; void* weight; int /*<<< orphan*/  pname; } ;
struct conf {int /*<<< orphan*/  arg; } ;
struct command {int offset; } ;
struct array {int dummy; } ;
typedef  scalar_t__ rstatus_t ;
typedef  int /*<<< orphan*/  delim ;

/* Variables and functions */
 void* CONF_DEFAULT_KETAMA_PORT ; 
 char* CONF_ERROR ; 
 char* CONF_OK ; 
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct array*) ; 
 struct conf_server* FUNC2 (struct array*) ; 
 struct string* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct conf_server*) ; 
 void* FUNC5 (char*,int) ; 
 char* FUNC6 (char*,char*,char) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

char *
FUNC9(struct conf *cf, struct command *cmd, void *conf)
{
    rstatus_t status;
    struct array *a;
    struct string *value;
    struct conf_server *field;
    uint8_t *p, *q, *start;
    uint8_t *pname, *addr, *port, *weight, *name;
    uint32_t k, delimlen, pnamelen, addrlen, portlen, weightlen, namelen;
    char delim[] = " ::";

    p = conf;
    a = (struct array *)(p + cmd->offset);

    field = FUNC2(a);
    if (field == NULL) {
        return CONF_ERROR;
    }

    FUNC4(field);

    value = FUNC3(&cf->arg);

    /* parse "hostname:port:weight [name]" or "/path/unix_socket:weight [name]" from the end */
    p = value->data + value->len - 1;
    start = value->data;
    addr = NULL;
    addrlen = 0;
    weight = NULL;
    weightlen = 0;
    port = NULL;
    portlen = 0;
    name = NULL;
    namelen = 0;

    delimlen = value->data[0] == '/' ? 2 : 3;

    for (k = 0; k < sizeof(delim); k++) {
        q = FUNC6(p, start, delim[k]);
        if (q == NULL) {
            if (k == 0) {
                /*
                 * name in "hostname:port:weight [name]" format string is
                 * optional
                 */
                continue;
            }
            break;
        }

        switch (k) {
        case 0:
            name = q + 1;
            namelen = (uint32_t)(p - name + 1);
            break;

        case 1:
            weight = q + 1;
            weightlen = (uint32_t)(p - weight + 1);
            break;

        case 2:
            port = q + 1;
            portlen = (uint32_t)(p - port + 1);
            break;

        default:
            FUNC0();
        }

        p = q - 1;
    }

    if (k != delimlen) {
        return "has an invalid \"hostname:port:weight [name]\"or \"/path/unix_socket:weight [name]\" format string";
    }

    pname = value->data;
    pnamelen = namelen > 0 ? value->len - (namelen + 1) : value->len;
    status = FUNC8(&field->pname, pname, pnamelen);
    if (status != NC_OK) {
        FUNC1(a);
        return CONF_ERROR;
    }

    addr = start;
    addrlen = (uint32_t)(p - start + 1);

    field->weight = FUNC5(weight, weightlen);
    if (field->weight < 0) {
        return "has an invalid weight in \"hostname:port:weight [name]\" format string";
    } else if (field->weight == 0) {
        return "has a zero weight in \"hostname:port:weight [name]\" format string";
    }

    if (value->data[0] != '/') {
        field->port = FUNC5(port, portlen);
        if (field->port < 0 || !FUNC7(field->port)) {
            return "has an invalid port in \"hostname:port:weight [name]\" format string";
        }
    }

    if (name == NULL) {
        /*
         * To maintain backward compatibility with libmemcached, we don't
         * include the port as the part of the input string to the consistent
         * hashing algorithm, when it is equal to 11211.
         */
        if (field->port == CONF_DEFAULT_KETAMA_PORT) {
            name = addr;
            namelen = addrlen;
        } else {
            name = addr;
            namelen = addrlen + 1 + portlen;
        }
    }

    status = FUNC8(&field->name, name, namelen);
    if (status != NC_OK) {
        return CONF_ERROR;
    }

    status = FUNC8(&field->addrstr, addr, addrlen);
    if (status != NC_OK) {
        return CONF_ERROR;
    }

    /*
     * The address resolution of the backend server hostname is lazy.
     * The resolution occurs when a new connection to the server is
     * created, which could either be the first time or every time
     * the server gets re-added to the pool after an auto ejection
     */

    field->valid = 1;

    return CONF_OK;
}