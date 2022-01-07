; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_queue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_output = type { i64, i32, i32, i64 }
%struct.vlc_h2_queue = type { %struct.vlc_h2_frame** }
%struct.vlc_h2_frame = type { %struct.vlc_h2_frame* }

@VLC_H2_MAX_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_output*, %struct.vlc_h2_queue*, %struct.vlc_h2_frame*)* @vlc_h2_output_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_output_queue(%struct.vlc_h2_output* %0, %struct.vlc_h2_queue* %1, %struct.vlc_h2_frame* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_h2_output*, align 8
  %6 = alloca %struct.vlc_h2_queue*, align 8
  %7 = alloca %struct.vlc_h2_frame*, align 8
  %8 = alloca %struct.vlc_h2_frame**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vlc_h2_frame*, align 8
  %11 = alloca %struct.vlc_h2_frame*, align 8
  store %struct.vlc_h2_output* %0, %struct.vlc_h2_output** %5, align 8
  store %struct.vlc_h2_queue* %1, %struct.vlc_h2_queue** %6, align 8
  store %struct.vlc_h2_frame* %2, %struct.vlc_h2_frame** %7, align 8
  %12 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %13 = icmp eq %struct.vlc_h2_frame* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %94

18:                                               ; preds = %3
  store %struct.vlc_h2_frame** %7, %struct.vlc_h2_frame*** %8, align 8
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %28, %18
  %20 = load %struct.vlc_h2_frame**, %struct.vlc_h2_frame*** %8, align 8
  %21 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %20, align 8
  store %struct.vlc_h2_frame* %21, %struct.vlc_h2_frame** %10, align 8
  %22 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  %23 = call i64 @vlc_h2_frame_size(%struct.vlc_h2_frame* %22)
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %9, align 8
  %26 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  %27 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %26, i32 0, i32 0
  store %struct.vlc_h2_frame** %27, %struct.vlc_h2_frame*** %8, align 8
  br label %28

28:                                               ; preds = %19
  %29 = load %struct.vlc_h2_frame**, %struct.vlc_h2_frame*** %8, align 8
  %30 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %29, align 8
  %31 = icmp ne %struct.vlc_h2_frame* %30, null
  br i1 %31, label %19, label %32

32:                                               ; preds = %28
  %33 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %5, align 8
  %34 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %33, i32 0, i32 1
  %35 = call i32 @vlc_mutex_lock(i32* %34)
  %36 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %5, align 8
  %37 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %79

41:                                               ; preds = %32
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %5, align 8
  %44 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %5, align 8
  %48 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VLC_H2_MAX_QUEUE, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %5, align 8
  %55 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %79

58:                                               ; preds = %41
  %59 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %6, align 8
  %60 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %59, i32 0, i32 0
  %61 = load %struct.vlc_h2_frame**, %struct.vlc_h2_frame*** %60, align 8
  %62 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %61, align 8
  %63 = icmp eq %struct.vlc_h2_frame* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %67 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %6, align 8
  %68 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %67, i32 0, i32 0
  %69 = load %struct.vlc_h2_frame**, %struct.vlc_h2_frame*** %68, align 8
  store %struct.vlc_h2_frame* %66, %struct.vlc_h2_frame** %69, align 8
  %70 = load %struct.vlc_h2_frame**, %struct.vlc_h2_frame*** %8, align 8
  %71 = load %struct.vlc_h2_queue*, %struct.vlc_h2_queue** %6, align 8
  %72 = getelementptr inbounds %struct.vlc_h2_queue, %struct.vlc_h2_queue* %71, i32 0, i32 0
  store %struct.vlc_h2_frame** %70, %struct.vlc_h2_frame*** %72, align 8
  %73 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %5, align 8
  %74 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %73, i32 0, i32 2
  %75 = call i32 @vlc_cond_signal(i32* %74)
  %76 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %5, align 8
  %77 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %76, i32 0, i32 1
  %78 = call i32 @vlc_mutex_unlock(i32* %77)
  store i32 0, i32* %4, align 4
  br label %94

79:                                               ; preds = %52, %40
  %80 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %5, align 8
  %81 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %80, i32 0, i32 1
  %82 = call i32 @vlc_mutex_unlock(i32* %81)
  br label %83

83:                                               ; preds = %86, %79
  %84 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %85 = icmp ne %struct.vlc_h2_frame* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %88 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %87, i32 0, i32 0
  %89 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %88, align 8
  store %struct.vlc_h2_frame* %89, %struct.vlc_h2_frame** %11, align 8
  %90 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %7, align 8
  %91 = call i32 @free(%struct.vlc_h2_frame* %90)
  %92 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %11, align 8
  store %struct.vlc_h2_frame* %92, %struct.vlc_h2_frame** %7, align 8
  br label %83

93:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %58, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlc_h2_frame_size(%struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
