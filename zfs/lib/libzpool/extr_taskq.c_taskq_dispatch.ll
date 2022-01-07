; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzpool/extr_taskq.c_taskq_dispatch.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzpool/extr_taskq.c_taskq_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i8*, i32 (i8*)*, %struct.TYPE_7__*, %struct.TYPE_7__* }

@taskq_now = common dso_local global i64 0, align 8
@TASKQ_ACTIVE = common dso_local global i32 0, align 4
@TQ_FRONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taskq_dispatch(%struct.TYPE_6__* %0, i32 (i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32 (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 (i8*)* %1, i32 (i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* @taskq_now, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 %14(i8* %15)
  store i32 1, i32* %5, align 4
  br label %87

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = call i32 @mutex_enter(i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TASKQ_ACTIVE, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.TYPE_7__* @task_alloc(%struct.TYPE_6__* %27, i32 %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %10, align 8
  %30 = icmp eq %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = call i32 @mutex_exit(i32* %33)
  store i32 0, i32* %5, align 4
  br label %87

35:                                               ; preds = %17
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @TQ_FRONT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %50, align 8
  br label %62

51:                                               ; preds = %35
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %61, align 8
  br label %62

62:                                               ; preds = %51, %40
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %72, align 8
  %73 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 (i8*)* %73, i32 (i8*)** %75, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = call i32 @cv_signal(i32* %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = call i32 @mutex_exit(i32* %85)
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %62, %31, %13
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_7__* @task_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
