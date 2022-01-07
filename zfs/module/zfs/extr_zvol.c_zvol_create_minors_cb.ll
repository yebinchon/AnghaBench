; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_create_minors_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_create_minors_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i32* }

@spa_namespace_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"snapdev\00", align 1
@KM_SLEEP = common dso_local global i32 0, align 4
@system_taskq = common dso_local global i32 0, align 4
@zvol_prefetch_minors_impl = common dso_local global i32 0, align 4
@TQ_SLEEP = common dso_local global i32 0, align 4
@ZFS_SNAPDEV_VISIBLE = common dso_local global i64 0, align 8
@zvol_create_snap_minor_cb = common dso_local global i32 0, align 4
@DS_FIND_SNAPSHOTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"zvol_create_minors_cb(): %s is not a zvol name\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @zvol_create_minors_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zvol_create_minors_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %14 = call i32 @ASSERT0(i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @dsl_prop_get_integer(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %6, i32* null)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strchr(i8* %21, i8 signext 64)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @kmem_strdup(i8* %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %64

30:                                               ; preds = %24
  %31 = load i32, i32* @KM_SLEEP, align 4
  %32 = call %struct.TYPE_5__* @kmem_alloc(i32 24, i32 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = call i32 @list_insert_tail(i32* %41, %struct.TYPE_5__* %42)
  %44 = load i32, i32* @system_taskq, align 4
  %45 = load i32, i32* @zvol_prefetch_minors_impl, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = load i32, i32* @TQ_SLEEP, align 4
  %48 = call i32 @taskq_dispatch(i32 %44, i32 %45, %struct.TYPE_5__* %46, i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @ZFS_SNAPDEV_VISIBLE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %30
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* @zvol_create_snap_minor_cb, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = bitcast %struct.TYPE_5__* %55 to i8*
  %57 = load i32, i32* @DS_FIND_SNAPSHOTS, align 4
  %58 = call i32 @dmu_objset_find(i8* %53, i32 %54, i8* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %52, %30
  br label %63

60:                                               ; preds = %20
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @dprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %59
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %29, %19
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @dsl_prop_get_integer(i8*, i8*, i64*, i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @kmem_strdup(i8*) #1

declare dso_local %struct.TYPE_5__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @taskq_dispatch(i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @dmu_objset_find(i8*, i32, i8*, i32) #1

declare dso_local i32 @dprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
