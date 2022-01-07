; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_video_buffer.c_video_buffer_offer_decoded_frame.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_video_buffer.c_video_buffer_offer_decoded_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_buffer = type { i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @video_buffer_offer_decoded_frame(%struct.video_buffer* %0, i32* %1) #0 {
  %3 = alloca %struct.video_buffer*, align 8
  %4 = alloca i32*, align 8
  store %struct.video_buffer* %0, %struct.video_buffer** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @mutex_lock(i32 %7)
  %9 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %27, %13
  %15 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi i1 [ false, %14 ], [ %24, %19 ]
  br i1 %26, label %27, label %35

27:                                               ; preds = %25
  %28 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cond_wait(i32 %30, i32 %33)
  br label %14

35:                                               ; preds = %25
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @fps_counter_add_skipped_frame(i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %35
  %48 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %49 = call i32 @video_buffer_swap_frames(%struct.video_buffer* %48)
  %50 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32*, i32** %4, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %58 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.video_buffer*, %struct.video_buffer** %3, align 8
  %60 = getelementptr inbounds %struct.video_buffer, %struct.video_buffer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mutex_unlock(i32 %61)
  ret void
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @cond_wait(i32, i32) #1

declare dso_local i32 @fps_counter_add_skipped_frame(i32) #1

declare dso_local i32 @video_buffer_swap_frames(%struct.video_buffer*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
