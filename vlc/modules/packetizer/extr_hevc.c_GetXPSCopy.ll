; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_GetXPSCopy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_GetXPSCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.hevc_tuple_s*, %struct.hevc_tuple_s*, %struct.hevc_tuple_s* }
%struct.hevc_tuple_s = type { i64 }

@HEVC_VPS_ID_MAX = common dso_local global i64 0, align 8
@HEVC_SPS_ID_MAX = common dso_local global i64 0, align 8
@HEVC_PPS_ID_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @GetXPSCopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetXPSCopy(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca [3 x %struct.hevc_tuple_s*], align 16
  %6 = alloca [3 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32** %3, i32*** %4, align 8
  %10 = getelementptr inbounds [3 x %struct.hevc_tuple_s*], [3 x %struct.hevc_tuple_s*]* %5, i64 0, i64 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %12, align 8
  store %struct.hevc_tuple_s* %13, %struct.hevc_tuple_s** %10, align 8
  %14 = getelementptr inbounds %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %10, i64 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %16, align 8
  store %struct.hevc_tuple_s* %17, %struct.hevc_tuple_s** %14, align 8
  %18 = getelementptr inbounds %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %14, i64 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %20, align 8
  store %struct.hevc_tuple_s* %21, %struct.hevc_tuple_s** %18, align 8
  %22 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %23 = load i64, i64* @HEVC_VPS_ID_MAX, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 1
  %25 = load i64, i64* @HEVC_SPS_ID_MAX, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 1
  %27 = load i64, i64* @HEVC_PPS_ID_MAX, align 8
  store i64 %27, i64* %26, align 8
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %61, %1
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %29, 3
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds [3 x %struct.hevc_tuple_s*], [3 x %struct.hevc_tuple_s*]* %5, i64 0, i64 %39
  %41 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %40, align 8
  %42 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds [3 x %struct.hevc_tuple_s*], [3 x %struct.hevc_tuple_s*]* %5, i64 0, i64 %46
  %48 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %47, align 8
  %49 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32* @block_Duplicate(i64 %50)
  store i32* %51, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @block_ChainLastAppend(i32*** %4, i32* %54)
  br label %56

56:                                               ; preds = %53, %45, %38
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %32

60:                                               ; preds = %32
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %28

64:                                               ; preds = %28
  %65 = load i32*, i32** %3, align 8
  ret i32* %65
}

declare dso_local i32* @block_Duplicate(i64) #1

declare dso_local i32 @block_ChainLastAppend(i32***, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
