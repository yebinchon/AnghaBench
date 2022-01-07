; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame_test.c_test_header_block_fail.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame_test.c_test_header_block_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { %struct.vlc_h2_frame* }

@CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_header_block_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_header_block_fail() #0 {
  %1 = alloca %struct.vlc_h2_frame*, align 8
  %2 = alloca %struct.vlc_h2_frame*, align 8
  %3 = call %struct.vlc_h2_frame* @response(i32 1)
  store %struct.vlc_h2_frame* %3, %struct.vlc_h2_frame** %1, align 8
  %4 = call %struct.vlc_h2_frame* (...) @ping()
  store %struct.vlc_h2_frame* %4, %struct.vlc_h2_frame** %2, align 8
  %5 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %1, align 8
  %6 = icmp ne %struct.vlc_h2_frame* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %1, align 8
  %9 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %8, i32 0, i32 0
  %10 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %9, align 8
  %11 = icmp ne %struct.vlc_h2_frame* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %2, align 8
  %14 = icmp ne %struct.vlc_h2_frame* %13, null
  br label %15

15:                                               ; preds = %12, %7, %0
  %16 = phi i1 [ false, %7 ], [ false, %0 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %1, align 8
  %20 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %19, i32 0, i32 0
  %21 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %20, align 8
  %22 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %2, align 8
  %23 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %22, i32 0, i32 0
  store %struct.vlc_h2_frame* %21, %struct.vlc_h2_frame** %23, align 8
  %24 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %2, align 8
  %25 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %1, align 8
  %26 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %25, i32 0, i32 0
  store %struct.vlc_h2_frame* %24, %struct.vlc_h2_frame** %26, align 8
  %27 = load i32, i32* @CTX, align 4
  %28 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %1, align 8
  %29 = call i64 @test_bad_seq(i32 %27, %struct.vlc_h2_frame* %28, i32* null)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  ret void
}

declare dso_local %struct.vlc_h2_frame* @response(i32) #1

declare dso_local %struct.vlc_h2_frame* @ping(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @test_bad_seq(i32, %struct.vlc_h2_frame*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
