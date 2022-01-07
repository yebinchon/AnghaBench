; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_get_avcC_to_AnnexB_NAL_size.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_get_avcC_to_AnnexB_NAL_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H264_MIN_AVCC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @get_avcC_to_AnnexB_NAL_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_avcC_to_AnnexB_NAL_size(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @H264_MIN_AVCC_SIZE, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %88

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 5
  store i32* %17, i32** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 %18, 5
  store i64 %19, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %83, %15
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %86

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 31, i32 255
  %31 = and i32 %26, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %72, %23
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = icmp ult i64 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  br label %88

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %5, align 8
  %56 = sub i64 %55, 2
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i64 0, i64* %3, align 8
  br label %88

59:                                               ; preds = %44
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 4
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 2
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 %65
  store i32* %67, i32** %4, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 2
  %70 = load i64, i64* %5, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %36

75:                                               ; preds = %36
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i64, i64* %5, align 8
  %80 = icmp ult i64 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i64 0, i64* %3, align 8
  br label %88

82:                                               ; preds = %78, %75
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %20

86:                                               ; preds = %20
  %87 = load i64, i64* %6, align 8
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %86, %81, %58, %43, %14
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
