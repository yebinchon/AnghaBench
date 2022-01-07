; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_execute_stack_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_execute_stack_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@curthread = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ZIO_TASKQ_ISSUE = common dso_local global i32 0, align 4
@ZIO_TASKQ_ISSUE_HIGH = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_execute_stack_check(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_9__* @spa_get_dsl(i32 %7)
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i64, i64* @curthread, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @B_TRUE, align 4
  store i32 %19, i32* %2, align 4
  br label %43

20:                                               ; preds = %11, %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @spa_is_initializing(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load i32, i32* @ZIO_TASKQ_ISSUE, align 4
  %32 = call i32 @zio_taskq_member(%struct.TYPE_8__* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = load i32, i32* @ZIO_TASKQ_ISSUE_HIGH, align 4
  %37 = call i32 @zio_taskq_member(%struct.TYPE_8__* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @B_TRUE, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %34, %29, %23, %20
  %42 = load i32, i32* @B_FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %39, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_9__* @spa_get_dsl(i32) #1

declare dso_local i64 @spa_is_initializing(i32) #1

declare dso_local i32 @zio_taskq_member(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
