; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_AddConversion.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_AddConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsAT_END = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32*, i32*)* @AddConversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddConversion(i32 %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %12, align 8
  store i32* %16, i32** %14, align 8
  %17 = load i32*, i32** %13, align 8
  store i32* %17, i32** %15, align 8
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %142 [
    i32 128, label %19
    i32 129, label %72
  ]

19:                                               ; preds = %6
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %69 [
    i32 128, label %21
    i32 129, label %40
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @IsEmptyLayer(i32 %22, i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @cmsAT_END, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = call i32 @cmsStageAllocMatrix(i32 %31, i32 3, i32 3, i32* %32, i32* %33)
  %35 = call i32 @cmsPipelineInsertStage(i32 %28, i32* %29, i32 %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %7, align 4
  br label %151

39:                                               ; preds = %27, %21
  br label %71

40:                                               ; preds = %19
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @IsEmptyLayer(i32 %41, i32* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* @cmsAT_END, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @cmsStageAllocMatrix(i32 %50, i32 3, i32 3, i32* %51, i32* %52)
  %54 = call i32 @cmsPipelineInsertStage(i32 %47, i32* %48, i32 %49, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %7, align 4
  br label %151

58:                                               ; preds = %46, %40
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @cmsAT_END, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @_cmsStageAllocXYZ2Lab(i32 %62)
  %64 = call i32 @cmsPipelineInsertStage(i32 %59, i32* %60, i32 %61, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %7, align 4
  br label %151

68:                                               ; preds = %58
  br label %71

69:                                               ; preds = %19
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %7, align 4
  br label %151

71:                                               ; preds = %68, %39
  br label %149

72:                                               ; preds = %6
  %73 = load i32, i32* %11, align 4
  switch i32 %73, label %139 [
    i32 128, label %74
    i32 129, label %103
  ]

74:                                               ; preds = %72
  %75 = load i32, i32* %8, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @cmsAT_END, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @_cmsStageAllocLab2XYZ(i32 %78)
  %80 = call i32 @cmsPipelineInsertStage(i32 %75, i32* %76, i32 %77, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %7, align 4
  br label %151

84:                                               ; preds = %74
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @IsEmptyLayer(i32 %85, i32* %86, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* @cmsAT_END, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @cmsStageAllocMatrix(i32 %94, i32 3, i32 3, i32* %95, i32* %96)
  %98 = call i32 @cmsPipelineInsertStage(i32 %91, i32* %92, i32 %93, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %7, align 4
  br label %151

102:                                              ; preds = %90, %84
  br label %141

103:                                              ; preds = %72
  %104 = load i32, i32* %8, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @IsEmptyLayer(i32 %104, i32* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %138, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* @cmsAT_END, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @_cmsStageAllocLab2XYZ(i32 %113)
  %115 = call i32 @cmsPipelineInsertStage(i32 %110, i32* %111, i32 %112, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* @cmsAT_END, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32*, i32** %14, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @cmsStageAllocMatrix(i32 %121, i32 3, i32 3, i32* %122, i32* %123)
  %125 = call i32 @cmsPipelineInsertStage(i32 %118, i32* %119, i32 %120, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %117
  %128 = load i32, i32* %8, align 4
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* @cmsAT_END, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @_cmsStageAllocXYZ2Lab(i32 %131)
  %133 = call i32 @cmsPipelineInsertStage(i32 %128, i32* %129, i32 %130, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %127, %117, %109
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %7, align 4
  br label %151

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %103
  br label %141

139:                                              ; preds = %72
  %140 = load i32, i32* @FALSE, align 4
  store i32 %140, i32* %7, align 4
  br label %151

141:                                              ; preds = %138, %102
  br label %149

142:                                              ; preds = %6
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %7, align 4
  br label %151

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %141, %71
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %149, %146, %139, %135, %100, %82, %69, %66, %56, %37
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @IsEmptyLayer(i32, i32*, i32*) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #1

declare dso_local i32 @cmsStageAllocMatrix(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_cmsStageAllocXYZ2Lab(i32) #1

declare dso_local i32 @_cmsStageAllocLab2XYZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
