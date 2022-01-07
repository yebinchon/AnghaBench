; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsalpha.c_ComputeIncrementsForChunky.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsalpha.c_ComputeIncrementsForChunky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAXEXTRACHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @ComputeIncrementsForChunky to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeIncrementsForChunky(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load i32, i32* @cmsMAXEXTRACHANNELS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @T_EXTRA(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @T_CHANNELS(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @trueBytesSize(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @cmsMAXEXTRACHANNELS, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %3
  store i32 1, i32* %15, align 4
  br label %155

40:                                               ; preds = %35
  %41 = mul nuw i64 4, %18
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32* %20, i32 0, i32 %42)
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %54, %40
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %44

57:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %80, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @T_DOSWAP(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %20, i64 %72
  store i32 %70, i32* %73, align 4
  br label %79

74:                                               ; preds = %62
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %20, i64 %77
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %66
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %58

83:                                               ; preds = %58
  %84 = load i32, i32* %4, align 4
  %85 = call i64 @T_SWAPFIRST(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %116

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  %91 = getelementptr inbounds i32, i32* %20, i64 0
  %92 = load i32, i32* %91, align 16
  store i32 %92, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %107, %90
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %95, 1
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %20, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %20, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %93

110:                                              ; preds = %93
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %20, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %87, %83
  %117 = load i32, i32* %13, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %131, %119
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %120
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %20, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, %125
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %120

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %134, %116
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %151, %135
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %20, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %146, i32* %150, align 4
  br label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %136

154:                                              ; preds = %136
  store i32 0, i32* %15, align 4
  br label %155

155:                                              ; preds = %154, %39
  %156 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %15, align 4
  switch i32 %157, label %159 [
    i32 0, label %158
    i32 1, label %158
  ]

158:                                              ; preds = %155, %155
  ret void

159:                                              ; preds = %155
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
