; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_compute_samples.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_compute_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@channel_position = common dso_local global i32** null, align 8
@temp = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16*, i32, float**, i32, i32)* @compute_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_samples(i32 %0, i16* %1, i32 %2, float** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x float], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i16* %1, i16** %8, align 8
  store i32 %2, i32* %9, align 4
  store float** %3, float*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 32, i32* %17, align 4
  %19 = call i32 (...) @check_endianness()
  store i32 0, i32* %16, align 4
  br label %20

20:                                               ; preds = %121, %6
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %124

24:                                               ; preds = %20
  %25 = getelementptr inbounds [32 x float], [32 x float]* %13, i64 0, i64 0
  %26 = call i32 @memset(float* %25, i32 0, i32 128)
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %16, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %32, %24
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %83, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %86

41:                                               ; preds = %37
  %42 = load i32**, i32*** @channel_position, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %41
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %78, %54
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = load float**, float*** %10, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float*, float** %60, i64 %62
  %64 = load float*, float** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %64, i64 %70
  %72 = load float, float* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32 x float], [32 x float]* %13, i64 0, i64 %74
  %76 = load float, float* %75, align 4
  %77 = fadd float %76, %72
  store float %77, float* %75, align 4
  br label %78

78:                                               ; preds = %59
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %55

81:                                               ; preds = %55
  br label %82

82:                                               ; preds = %81, %41
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %37

86:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %117, %86
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %87
  %92 = load i32, i32* @temp, align 4
  %93 = call i32 @FASTDEF(i32 %92)
  %94 = load i32, i32* @temp, align 4
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [32 x float], [32 x float]* %13, i64 0, i64 %96
  %98 = load float, float* %97, align 4
  %99 = call i32 @FAST_SCALED_FLOAT_TO_INT(i32 %94, float %98, i32 15)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, 32768
  %102 = icmp ugt i32 %101, 65535
  br i1 %102, label %103, label %108

103:                                              ; preds = %91
  %104 = load i32, i32* %18, align 4
  %105 = icmp slt i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 -32768, i32 32767
  store i32 %107, i32* %18, align 4
  br label %108

108:                                              ; preds = %103, %91
  %109 = load i32, i32* %18, align 4
  %110 = trunc i32 %109 to i16
  %111 = load i16*, i16** %8, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %111, i64 %115
  store i16 %110, i16* %116, align 2
  br label %117

117:                                              ; preds = %108
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %87

120:                                              ; preds = %87
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 32
  store i32 %123, i32* %16, align 4
  br label %20

124:                                              ; preds = %20
  ret void
}

declare dso_local i32 @check_endianness(...) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @FASTDEF(i32) #1

declare dso_local i32 @FAST_SCALED_FLOAT_TO_INT(i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
