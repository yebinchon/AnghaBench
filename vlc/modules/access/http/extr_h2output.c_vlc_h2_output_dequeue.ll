; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_dequeue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { %struct.vlc_h2_frame* }
%struct.vlc_h2_output = type { i64, i32, i32, i32, %struct.vlc_h2_queue, %struct.vlc_h2_queue }
%struct.vlc_h2_queue = type { %struct.vlc_h2_frame**, %struct.vlc_h2_frame* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_h2_frame* (%struct.vlc_h2_output*)* @vlc_h2_output_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_h2_frame* @vlc_h2_output_dequeue(%struct.vlc_h2_output* %0) #0 {
  %2 = alloca %struct.vlc_h2_frame*, align 8
  %3 = alloca %struct.vlc_h2_output*, align 8
  %4 = alloca %struct.vlc_h2_queue*, align 8
  %5 = alloca %struct.vlc_h2_frame*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vlc_h2_output* %0, %struct.vlc_h2_output** %3, align 8
  %8 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %9 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %8, i32 0, i32 1
  %10 = call i32 @vlc_mutex_lock(i32* %9)
  br label %11

11:                                               ; preds = %37, %1
  %12 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %13 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %12, i32 0, i32 5
  store %struct.vlc_h2_queue* %13, %struct.vlc_h2_queue** %4, align 8
  %14 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %4, align 8
  %15 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %14, i32 0, i32 1
  %16 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %15, align 8
  %17 = icmp ne %struct.vlc_h2_frame* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %46

19:                                               ; preds = %11
  %20 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %21 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %20, i32 0, i32 4
  store %struct.vlc_h2_queue* %21, %struct.vlc_h2_queue** %4, align 8
  %22 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %4, align 8
  %23 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %22, i32 0, i32 1
  %24 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %23, align 8
  %25 = icmp ne %struct.vlc_h2_frame* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %46

27:                                               ; preds = %19
  %28 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %29 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %35 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %34, i32 0, i32 1
  %36 = call i32 @vlc_mutex_unlock(i32* %35)
  store %struct.vlc_h2_frame* null, %struct.vlc_h2_frame** %2, align 8
  br label %101

37:                                               ; preds = %27
  %38 = call i32 (...) @vlc_savecancel()
  store i32 %38, i32* %7, align 4
  %39 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %40 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %39, i32 0, i32 2
  %41 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %42 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %41, i32 0, i32 1
  %43 = call i32 @vlc_cond_wait(i32* %40, i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @vlc_restorecancel(i32 %44)
  br label %11

46:                                               ; preds = %26, %18
  %47 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %4, align 8
  %48 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %47, i32 0, i32 1
  %49 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %48, align 8
  store %struct.vlc_h2_frame* %49, %struct.vlc_h2_frame** %5, align 8
  %50 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %51 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %50, i32 0, i32 0
  %52 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %51, align 8
  %53 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %4, align 8
  %54 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %53, i32 0, i32 1
  store %struct.vlc_h2_frame* %52, %struct.vlc_h2_frame** %54, align 8
  %55 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %56 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %55, i32 0, i32 0
  %57 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %56, align 8
  %58 = icmp eq %struct.vlc_h2_frame* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %46
  %60 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %4, align 8
  %61 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %60, i32 0, i32 0
  %62 = load %struct.vlc_h2_frame**, %struct.vlc_h2_frame*** %61, align 8
  %63 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %64 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %63, i32 0, i32 0
  %65 = icmp eq %struct.vlc_h2_frame** %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %4, align 8
  %69 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %68, i32 0, i32 1
  %70 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %4, align 8
  %71 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %70, i32 0, i32 0
  store %struct.vlc_h2_frame** %69, %struct.vlc_h2_frame*** %71, align 8
  br label %72

72:                                               ; preds = %59, %46
  %73 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %4, align 8
  %74 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %73, i32 0, i32 0
  %75 = load %struct.vlc_h2_frame**, %struct.vlc_h2_frame*** %74, align 8
  %76 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %77 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %76, i32 0, i32 0
  %78 = icmp ne %struct.vlc_h2_frame** %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %82 = call i64 @vlc_h2_frame_size(%struct.vlc_h2_frame* %81)
  store i64 %82, i64* %6, align 8
  %83 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %84 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp uge i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %92 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %96 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %95, i32 0, i32 1
  %97 = call i32 @vlc_mutex_unlock(i32* %96)
  %98 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %99 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %98, i32 0, i32 0
  store %struct.vlc_h2_frame* null, %struct.vlc_h2_frame** %99, align 8
  %100 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  store %struct.vlc_h2_frame* %100, %struct.vlc_h2_frame** %2, align 8
  br label %101

101:                                              ; preds = %72, %33
  %102 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %2, align 8
  ret %struct.vlc_h2_frame* %102
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_h2_frame_size(%struct.vlc_h2_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
