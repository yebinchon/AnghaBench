; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_helper_process_avcC_h264.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_helper_process_avcC_h264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i32 }

@H264_MIN_AVCC_SIZE = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hxxx_helper*, i32*, i64)* @helper_process_avcC_h264 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helper_process_avcC_h264(%struct.hxxx_helper* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hxxx_helper*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @H264_MIN_AVCC_SIZE, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %4, align 4
  br label %99

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 5
  store i32* %21, i32** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %22, 5
  store i64 %23, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %94, %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %28, 0
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %97

32:                                               ; preds = %30
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 31, i32 255
  %40 = and i32 %35, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %90, %32
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = icmp uge i64 %50, 2
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ]
  br i1 %53, label %54, label %93

54:                                               ; preds = %52
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, 2
  %67 = icmp ugt i64 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %69, i32* %4, align 4
  br label %99

70:                                               ; preds = %54
  %71 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, 2
  %75 = call i32 @h264_helper_parse_nal(%struct.hxxx_helper* %71, i32* %72, i64 %74, i32 2, i32* %12)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @VLC_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %4, align 4
  br label %99

81:                                               ; preds = %70
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 2
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 %83
  store i32* %85, i32** %6, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 2
  %88 = load i64, i64* %7, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %7, align 8
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %45

93:                                               ; preds = %52
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %24

97:                                               ; preds = %30
  %98 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %79, %68, %17
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @h264_helper_parse_nal(%struct.hxxx_helper*, i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
