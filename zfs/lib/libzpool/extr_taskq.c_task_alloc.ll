; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzpool/extr_taskq.c_task_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzpool/extr_taskq.c_task_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_7__* }

@TQENT_FLAG_PREALLOC = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@hz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_6__*, i32)* @task_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @task_alloc(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %69, %2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TQENT_FLAG_PREALLOC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  br label %90

36:                                               ; preds = %13, %8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @KM_SLEEP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %92

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = call i64 (...) @ddi_get_lbolt()
  %60 = load i64, i64* @hz, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @cv_timedwait(i32* %56, i32* %58, i64 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %50
  br label %8

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70, %36
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = call i32 @mutex_exit(i32* %73)
  %75 = load i32, i32* %5, align 4
  %76 = call %struct.TYPE_7__* @kmem_alloc(i32 16, i32 %75)
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %6, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = call i32 @mutex_enter(i32* %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = icmp ne %struct.TYPE_7__* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %82, %71
  br label %90

90:                                               ; preds = %89, %21
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %3, align 8
  br label %92

92:                                               ; preds = %90, %49
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %93
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @cv_timedwait(i32*, i32*, i64) #1

declare dso_local i64 @ddi_get_lbolt(...) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local %struct.TYPE_7__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
