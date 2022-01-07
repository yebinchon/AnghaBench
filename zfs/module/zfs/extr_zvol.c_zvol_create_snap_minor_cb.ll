; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_create_snap_minor_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_create_snap_minor_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i32* }

@spa_namespace_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"zvol_create_snap_minor_cb(): %s is not a snapshot name\0A\00", align 1
@KM_SLEEP = common dso_local global i32 0, align 4
@system_taskq = common dso_local global i32 0, align 4
@zvol_prefetch_minors_impl = common dso_local global i32 0, align 4
@TQ_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @zvol_create_snap_minor_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zvol_create_snap_minor_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %20 = call i32 @ASSERT0(i32 %19)
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strcmp(i8* %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %62

29:                                               ; preds = %23, %2
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strchr(i8* %30, i8 signext 64)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @dprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %61

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @kmem_strdup(i8* %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %62

42:                                               ; preds = %36
  %43 = load i32, i32* @KM_SLEEP, align 4
  %44 = call %struct.TYPE_5__* @kmem_alloc(i32 24, i32 %43)
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %55 = call i32 @list_insert_tail(i32* %53, %struct.TYPE_5__* %54)
  %56 = load i32, i32* @system_taskq, align 4
  %57 = load i32, i32* @zvol_prefetch_minors_impl, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = load i32, i32* @TQ_SLEEP, align 4
  %60 = call i32 @taskq_dispatch(i32 %56, i32 %57, %struct.TYPE_5__* %58, i32 %59)
  br label %61

61:                                               ; preds = %42, %33
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %41, %28
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @dprintf(i8*, i8*) #1

declare dso_local i8* @kmem_strdup(i8*) #1

declare dso_local %struct.TYPE_5__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @taskq_dispatch(i32, i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
