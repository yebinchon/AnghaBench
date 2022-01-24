#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list {int dummy; } ;
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsACString ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ http_header_t ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  NS_ERROR_NOT_AVAILABLE ; 
 int /*<<< orphan*/  NS_ERROR_UNEXPECTED ; 
 int /*<<< orphan*/  NS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (struct list*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static nsresult FUNC9(struct list *headers, const nsACString *header_name_str,
        nsACString *_retval)
{
    const char *header_namea;
    http_header_t *header;
    WCHAR *header_name;
    char *data;

    FUNC6(header_name_str, &header_namea);
    header_name = FUNC4(header_namea);
    if(!header_name)
        return NS_ERROR_UNEXPECTED;

    header = FUNC2(headers, header_name, FUNC8(header_name));
    FUNC3(header_name);
    if(!header)
        return NS_ERROR_NOT_AVAILABLE;

    data = FUNC5(header->data);
    if(!data)
        return NS_ERROR_UNEXPECTED;

    FUNC0("%s -> %s\n", FUNC1(header_namea), FUNC1(data));
    FUNC7(_retval, data);
    FUNC3(data);
    return NS_OK;
}