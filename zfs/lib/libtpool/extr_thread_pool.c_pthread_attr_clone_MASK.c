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
struct sched_param {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  cpuset ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int*) ; 
 int FUNC5 (int /*<<< orphan*/  const*,struct sched_param*) ; 
 int FUNC6 (int /*<<< orphan*/  const*,int*) ; 
 int FUNC7 (int /*<<< orphan*/  const*,int*) ; 
 int FUNC8 (int /*<<< orphan*/  const*,void**,size_t*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct sched_param*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,void*,size_t) ; 

__attribute__((used)) static int
FUNC18(pthread_attr_t *attr, const pthread_attr_t *old_attr)
{
	int error;

	error = FUNC9(attr);
	if (error || (old_attr == NULL))
		return (error);

#ifdef __GLIBC__
	cpu_set_t cpuset;
	size_t cpusetsize = sizeof (cpuset);
	error = pthread_attr_getaffinity_np(old_attr, cpusetsize, &cpuset);
	if (error == 0)
		error = pthread_attr_setaffinity_np(attr, cpusetsize, &cpuset);
	if (error)
		goto error;
#endif /* __GLIBC__ */

	int detachstate;
	error = FUNC2(old_attr, &detachstate);
	if (error == 0)
		error = FUNC11(attr, detachstate);
	if (error)
		goto error;

	size_t guardsize;
	error = FUNC3(old_attr, &guardsize);
	if (error == 0)
		error = FUNC12(attr, guardsize);
	if (error)
		goto error;

	int inheritsched;
	error = FUNC4(old_attr, &inheritsched);
	if (error == 0)
		error = FUNC13(attr, inheritsched);
	if (error)
		goto error;

	struct sched_param param;
	error = FUNC5(old_attr, &param);
	if (error == 0)
		error = FUNC14(attr, &param);
	if (error)
		goto error;

	int policy;
	error = FUNC6(old_attr, &policy);
	if (error == 0)
		error = FUNC15(attr, policy);
	if (error)
		goto error;

	int scope;
	error = FUNC7(old_attr, &scope);
	if (error == 0)
		error = FUNC16(attr, scope);
	if (error)
		goto error;

	void *stackaddr;
	size_t stacksize;
	error = FUNC8(old_attr, &stackaddr, &stacksize);
	if (error == 0)
		error = FUNC17(attr, stackaddr, stacksize);
	if (error)
		goto error;

	return (0);
error:
	FUNC0(attr);
	return (error);
}