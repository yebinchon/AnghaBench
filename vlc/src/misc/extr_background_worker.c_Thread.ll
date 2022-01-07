; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_Thread.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_Thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_thread = type { i32, i32, i32, %struct.task*, %struct.background_worker* }
%struct.task = type { i64, i32 }
%struct.background_worker = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (i32, i8*)*, i64 (i32, i8*)*, i64 (i32, i32, i8**)* }

@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.background_thread*, align 8
  %4 = alloca %struct.background_worker*, align 8
  %5 = alloca %struct.task*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.background_thread*
  store %struct.background_thread* %11, %struct.background_thread** %3, align 8
  %12 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %13 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %12, i32 0, i32 4
  %14 = load %struct.background_worker*, %struct.background_worker** %13, align 8
  store %struct.background_worker* %14, %struct.background_worker** %4, align 8
  br label %15

15:                                               ; preds = %138, %63, %1
  %16 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %17 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %16, i32 0, i32 2
  %18 = call i32 @vlc_mutex_lock(i32* %17)
  %19 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %20 = call %struct.task* @QueueTake(%struct.background_worker* %19, i32 5000)
  store %struct.task* %20, %struct.task** %5, align 8
  %21 = load %struct.task*, %struct.task** %5, align 8
  %22 = icmp ne %struct.task* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %25 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %24, i32 0, i32 2
  %26 = call i32 @vlc_mutex_unlock(i32* %25)
  br label %139

27:                                               ; preds = %15
  %28 = load %struct.task*, %struct.task** %5, align 8
  %29 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %30 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %29, i32 0, i32 3
  store %struct.task* %28, %struct.task** %30, align 8
  %31 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %32 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %34 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.task*, %struct.task** %5, align 8
  %36 = getelementptr inbounds %struct.task, %struct.task* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = call i64 (...) @vlc_tick_now()
  %41 = load %struct.task*, %struct.task** %5, align 8
  %42 = getelementptr inbounds %struct.task, %struct.task* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  store i64 %44, i64* %6, align 8
  br label %47

45:                                               ; preds = %27
  %46 = load i64, i64* @INT64_MAX, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %45, %39
  %48 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %49 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %48, i32 0, i32 2
  %50 = call i32 @vlc_mutex_unlock(i32* %49)
  %51 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %52 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64 (i32, i32, i8**)*, i64 (i32, i32, i8**)** %53, align 8
  %55 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %56 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.task*, %struct.task** %5, align 8
  %59 = getelementptr inbounds %struct.task, %struct.task* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 %54(i32 %57, i32 %60, i8** %7)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %65 = load %struct.task*, %struct.task** %5, align 8
  %66 = call i32 @TerminateTask(%struct.background_thread* %64, %struct.task* %65)
  br label %15

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %137, %67
  %69 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %70 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %69, i32 0, i32 2
  %71 = call i32 @vlc_mutex_lock(i32* %70)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %88, %68
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %72
  %76 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %77 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %82 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %80, %75, %72
  %87 = phi i1 [ false, %75 ], [ false, %72 ], [ %85, %80 ]
  br i1 %87, label %88, label %97

88:                                               ; preds = %86
  %89 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %90 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %89, i32 0, i32 2
  %91 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %92 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %91, i32 0, i32 2
  %93 = load i64, i64* %6, align 8
  %94 = call i64 @vlc_cond_timedwait(i32* %90, i32* %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %8, align 4
  br label %72

97:                                               ; preds = %86
  %98 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %99 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %9, align 4
  %101 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %102 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %104 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %106 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %105, i32 0, i32 2
  %107 = call i32 @vlc_mutex_unlock(i32* %106)
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %97
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %110
  %114 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %115 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64 (i32, i8*)*, i64 (i32, i8*)** %116, align 8
  %118 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %119 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 %117(i32 %120, i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %113, %110, %97
  %125 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %126 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32 (i32, i8*)*, i32 (i32, i8*)** %127, align 8
  %129 = load %struct.background_worker*, %struct.background_worker** %4, align 8
  %130 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 %128(i32 %131, i8* %132)
  %134 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %135 = load %struct.task*, %struct.task** %5, align 8
  %136 = call i32 @TerminateTask(%struct.background_thread* %134, %struct.task* %135)
  br label %138

137:                                              ; preds = %113
  br label %68

138:                                              ; preds = %124
  br label %15

139:                                              ; preds = %23
  %140 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %141 = call i32 @RemoveThread(%struct.background_thread* %140)
  ret i8* null
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.task* @QueueTake(%struct.background_worker*, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @TerminateTask(%struct.background_thread*, %struct.task*) #1

declare dso_local i64 @vlc_cond_timedwait(i32*, i32*, i64) #1

declare dso_local i32 @RemoveThread(%struct.background_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
