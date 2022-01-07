; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_flush_unlocked.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_flush_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_output = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.vlc_h2_frame* }
%struct.vlc_h2_frame = type { %struct.vlc_h2_frame* }
%struct.TYPE_3__ = type { %struct.vlc_h2_frame* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_h2_output*)* @vlc_h2_output_flush_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_h2_output_flush_unlocked(%struct.vlc_h2_output* %0) #0 {
  %2 = alloca %struct.vlc_h2_output*, align 8
  %3 = alloca %struct.vlc_h2_frame*, align 8
  %4 = alloca %struct.vlc_h2_frame*, align 8
  %5 = alloca %struct.vlc_h2_frame*, align 8
  %6 = alloca %struct.vlc_h2_frame*, align 8
  store %struct.vlc_h2_output* %0, %struct.vlc_h2_output** %2, align 8
  %7 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %8 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %9, align 8
  store %struct.vlc_h2_frame* %10, %struct.vlc_h2_frame** %3, align 8
  br label %11

11:                                               ; preds = %20, %1
  %12 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  %13 = icmp ne %struct.vlc_h2_frame* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  %16 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %15, i32 0, i32 0
  %17 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %16, align 8
  store %struct.vlc_h2_frame* %17, %struct.vlc_h2_frame** %4, align 8
  %18 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  %19 = call i32 @free(%struct.vlc_h2_frame* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %4, align 8
  store %struct.vlc_h2_frame* %21, %struct.vlc_h2_frame** %3, align 8
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %24 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %25, align 8
  store %struct.vlc_h2_frame* %26, %struct.vlc_h2_frame** %5, align 8
  br label %27

27:                                               ; preds = %36, %22
  %28 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %29 = icmp ne %struct.vlc_h2_frame* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %32 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %31, i32 0, i32 0
  %33 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %32, align 8
  store %struct.vlc_h2_frame* %33, %struct.vlc_h2_frame** %6, align 8
  %34 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %35 = call i32 @free(%struct.vlc_h2_frame* %34)
  br label %36

36:                                               ; preds = %30
  %37 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %6, align 8
  store %struct.vlc_h2_frame* %37, %struct.vlc_h2_frame** %5, align 8
  br label %27

38:                                               ; preds = %27
  ret void
}

declare dso_local i32 @free(%struct.vlc_h2_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
