; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_placebo_utils.c_vlc_placebo_FormatSupported.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_placebo_utils.c_vlc_placebo_FormatSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl_gpu = type { i32 }
%struct.fmt_desc = type { i32 }
%struct.pl_plane_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_placebo_FormatSupported(%struct.pl_gpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pl_gpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fmt_desc*, align 8
  %7 = alloca [4 x %struct.pl_plane_data], align 16
  %8 = alloca i32, align 4
  store %struct.pl_gpu* %0, %struct.pl_gpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.fmt_desc* @FindDesc(i32 %9)
  store %struct.fmt_desc* %10, %struct.fmt_desc** %6, align 8
  %11 = load %struct.fmt_desc*, %struct.fmt_desc** %6, align 8
  %12 = icmp ne %struct.fmt_desc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.fmt_desc*, %struct.fmt_desc** %6, align 8
  %17 = getelementptr inbounds [4 x %struct.pl_plane_data], [4 x %struct.pl_plane_data]* %7, i64 0, i64 0
  %18 = call i32 @FillDesc(i32 %15, %struct.fmt_desc* %16, %struct.pl_plane_data* %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %34, %14
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.fmt_desc*, %struct.fmt_desc** %6, align 8
  %22 = getelementptr inbounds %struct.fmt_desc, %struct.fmt_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.pl_gpu*, %struct.pl_gpu** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x %struct.pl_plane_data], [4 x %struct.pl_plane_data]* %7, i64 0, i64 %28
  %30 = call i32 @pl_plane_find_fmt(%struct.pl_gpu* %26, i32* null, %struct.pl_plane_data* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %38

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %19

37:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.fmt_desc* @FindDesc(i32) #1

declare dso_local i32 @FillDesc(i32, %struct.fmt_desc*, %struct.pl_plane_data*) #1

declare dso_local i32 @pl_plane_find_fmt(%struct.pl_gpu*, i32*, %struct.pl_plane_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
