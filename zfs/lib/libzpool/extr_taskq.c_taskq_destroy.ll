; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzpool/extr_taskq.c_taskq_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzpool/extr_taskq.c_taskq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32*, i64, i32 }

@TASKQ_ACTIVE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taskq_destroy(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = call i32 @taskq_wait(%struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  %11 = call i32 @mutex_enter(i32* %10)
  %12 = load i32, i32* @TASKQ_ACTIVE, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = call i32 @cv_broadcast(i32* %19)
  br label %21

21:                                               ; preds = %26, %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = call i32 @cv_wait(i32* %28, i32* %30)
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 9
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %40, %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 8
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = load i32, i32* @KM_SLEEP, align 4
  %50 = call i32 @task_alloc(%struct.TYPE_7__* %48, i32 %49)
  %51 = call i32 @task_free(%struct.TYPE_7__* %47, i32 %50)
  br label %35

52:                                               ; preds = %35
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 5
  %55 = call i32 @mutex_exit(i32* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 7
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @kmem_free(%struct.TYPE_7__* %58, i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 6
  %66 = call i32 @rw_destroy(i32* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 5
  %69 = call i32 @mutex_destroy(i32* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  %72 = call i32 @cv_destroy(i32* %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = call i32 @cv_destroy(i32* %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = call i32 @cv_destroy(i32* %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = call i32 @kmem_free(%struct.TYPE_7__* %79, i32 72)
  ret void
}

declare dso_local i32 @taskq_wait(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @task_free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @task_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rw_destroy(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
