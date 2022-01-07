; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsalpha.c_ComputeIncrementsForPlanar.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsalpha.c_ComputeIncrementsForPlanar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAXEXTRACHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @ComputeIncrementsForPlanar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeIncrementsForPlanar(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load i32, i32* @cmsMAXEXTRACHANNELS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @T_EXTRA(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @T_CHANNELS(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @trueBytesSize(i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @cmsMAXEXTRACHANNELS, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %4
  store i32 1, i32* %16, align 4
  br label %149

38:                                               ; preds = %33
  %39 = mul nuw i64 4, %19
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memset(i32* %21, i32 0, i32 %40)
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %52, %38
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %15, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %42

55:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %78, %55
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @T_DOSWAP(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %21, i64 %70
  store i32 %68, i32* %71, align 4
  br label %77

72:                                               ; preds = %60
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %21, i64 %75
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %64
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %56

81:                                               ; preds = %56
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @T_SWAPFIRST(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = getelementptr inbounds i32, i32* %21, i64 0
  %90 = load i32, i32* %89, align 16
  store i32 %90, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %105, %88
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %21, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %21, i64 %103
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %91

108:                                              ; preds = %91
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %21, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %85, %81
  store i32 0, i32* %14, align 4
  br label %115

115:                                              ; preds = %126, %114
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %21, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %124, %120
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %115

129:                                              ; preds = %115
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %145, %129
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %21, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %134
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %130

148:                                              ; preds = %130
  store i32 0, i32* %16, align 4
  br label %149

149:                                              ; preds = %148, %37
  %150 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %16, align 4
  switch i32 %151, label %153 [
    i32 0, label %152
    i32 1, label %152
  ]

152:                                              ; preds = %149, %149
  ret void

153:                                              ; preds = %149
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @T_EXTRA(i32) #2

declare dso_local i32 @T_CHANNELS(i32) #2

declare dso_local i32 @trueBytesSize(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @T_DOSWAP(i32) #2

declare dso_local i64 @T_SWAPFIRST(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
