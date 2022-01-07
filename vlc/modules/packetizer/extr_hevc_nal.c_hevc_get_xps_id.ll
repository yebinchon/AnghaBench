; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_get_xps_id.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_get_xps_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEVC_NAL_PPS = common dso_local global i64 0, align 8
@HEVC_PPS_ID_MAX = common dso_local global i64 0, align 8
@HEVC_NAL_SPS = common dso_local global i64 0, align 8
@HEVC_SPS_ID_MAX = common dso_local global i64 0, align 8
@HEVC_VPS_ID_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hevc_get_xps_id(i64* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

13:                                               ; preds = %3
  %14 = load i64*, i64** %5, align 8
  %15 = call i64 @hevc_getNALType(i64* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %6, align 8
  %19 = sub i64 %18, 2
  %20 = call i32 @bs_init(i32* %9, i64* %17, i64 %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @HEVC_NAL_PPS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %13
  %25 = call i64 @bs_read_ue(i32* %9)
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HEVC_PPS_ID_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %55

32:                                               ; preds = %24
  br label %54

33:                                               ; preds = %13
  %34 = call i64 @bs_read(i32* %9, i32 4)
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @HEVC_NAL_SPS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HEVC_SPS_ID_MAX, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %55

45:                                               ; preds = %39
  br label %53

46:                                               ; preds = %33
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HEVC_VPS_ID_MAX, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %55

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %45
  br label %54

54:                                               ; preds = %53, %32
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %51, %44, %31, %12
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @hevc_getNALType(i64*) #1

declare dso_local i32 @bs_init(i32*, i64*, i64) #1

declare dso_local i64 @bs_read_ue(i32*) #1

declare dso_local i64 @bs_read(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
