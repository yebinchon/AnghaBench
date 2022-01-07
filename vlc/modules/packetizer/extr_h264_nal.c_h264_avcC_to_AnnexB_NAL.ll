; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_avcC_to_AnnexB_NAL.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_avcC_to_AnnexB_NAL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@annexb_startcode4 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @h264_avcC_to_AnnexB_NAL(i32* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @get_avcC_to_AnnexB_NAL_size(i32* %16, i64 %17)
  %19 = load i64*, i64** %8, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %100

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 3
  %32 = add nsw i32 %31, 1
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32* @malloc(i64 %36)
  store i32* %37, i32** %10, align 8
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i64*, i64** %8, align 8
  store i64 0, i64* %41, align 8
  store i32* null, i32** %5, align 8
  br label %100

42:                                               ; preds = %34
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  store i32* %44, i32** %6, align 8
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %95, %42
  %46 = load i32, i32* %12, align 4
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %48, label %98

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 31, i32 255
  %56 = and i32 %51, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %91, %48
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %67, %70
  store i32 %71, i32* %15, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** @annexb_startcode4, align 8
  %76 = call i32 @memcpy(i32* %74, i32* %75, i32 4)
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @memcpy(i32* %79, i32* %80, i32 %81)
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %11, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %6, align 8
  br label %91

91:                                               ; preds = %63
  %92 = load i32, i32* %14, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %59

94:                                               ; preds = %59
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %45

98:                                               ; preds = %45
  %99 = load i32*, i32** %10, align 8
  store i32* %99, i32** %5, align 8
  br label %100

100:                                              ; preds = %98, %40, %23
  %101 = load i32*, i32** %5, align 8
  ret i32* %101
}

declare dso_local i64 @get_avcC_to_AnnexB_NAL_size(i32*, i64) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
