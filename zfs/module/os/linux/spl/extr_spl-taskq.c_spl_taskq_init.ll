; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-taskq.c_spl_taskq_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-taskq.c_spl_taskq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tq_list_sem = common dso_local global i32 0, align 4
@taskq_tsd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"spl_system_taskq\00", align 1
@boot_ncpus = common dso_local global i32 0, align 4
@maxclsyspri = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@TASKQ_PREPOPULATE = common dso_local global i32 0, align 4
@TASKQ_DYNAMIC = common dso_local global i32 0, align 4
@system_taskq = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"spl_delay_taskq\00", align 1
@system_delay_taskq = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"spl_dynamic_taskq\00", align 1
@dynamic_taskq = common dso_local global %struct.TYPE_2__* null, align 8
@TQ_LOCK_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spl_taskq_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @init_rwsem(i32* @tq_list_sem)
  %3 = call i32 @tsd_create(i32* @taskq_tsd, i32* null)
  %4 = load i32, i32* @boot_ncpus, align 4
  %5 = call i32 @MAX(i32 %4, i32 64)
  %6 = load i32, i32* @maxclsyspri, align 4
  %7 = load i32, i32* @boot_ncpus, align 4
  %8 = load i32, i32* @INT_MAX, align 4
  %9 = load i32, i32* @TASKQ_PREPOPULATE, align 4
  %10 = load i32, i32* @TASKQ_DYNAMIC, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @taskq_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32 %7, i32 %8, i32 %11)
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** @system_taskq, align 8
  %14 = load i32*, i32** @system_taskq, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %51

17:                                               ; preds = %0
  %18 = load i32, i32* @boot_ncpus, align 4
  %19 = call i32 @MAX(i32 %18, i32 4)
  %20 = load i32, i32* @maxclsyspri, align 4
  %21 = load i32, i32* @boot_ncpus, align 4
  %22 = load i32, i32* @INT_MAX, align 4
  %23 = load i32, i32* @TASKQ_PREPOPULATE, align 4
  %24 = load i32, i32* @TASKQ_DYNAMIC, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @taskq_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, i32 %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** @system_delay_taskq, align 8
  %28 = load i32*, i32** @system_delay_taskq, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32*, i32** @system_taskq, align 8
  %32 = call i32 @taskq_destroy(i32* %31)
  store i32 1, i32* %1, align 4
  br label %51

33:                                               ; preds = %17
  %34 = load i32, i32* @maxclsyspri, align 4
  %35 = load i32, i32* @boot_ncpus, align 4
  %36 = load i32, i32* @INT_MAX, align 4
  %37 = load i32, i32* @TASKQ_PREPOPULATE, align 4
  %38 = call i8* @taskq_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** @dynamic_taskq, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dynamic_taskq, align 8
  %41 = icmp eq %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i32*, i32** @system_taskq, align 8
  %44 = call i32 @taskq_destroy(i32* %43)
  %45 = load i32*, i32** @system_delay_taskq, align 8
  %46 = call i32 @taskq_destroy(i32* %45)
  store i32 1, i32* %1, align 4
  br label %51

47:                                               ; preds = %33
  %48 = load i32, i32* @TQ_LOCK_DYNAMIC, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dynamic_taskq, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %47, %42, %30, %16
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @tsd_create(i32*, i32*) #1

declare dso_local i8* @taskq_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @taskq_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
