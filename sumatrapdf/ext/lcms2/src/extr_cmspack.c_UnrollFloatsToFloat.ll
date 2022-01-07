; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollFloatsToFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollFloatsToFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, i32*, i32*, i32)* @UnrollFloatsToFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @UnrollFloatsToFloat(i32 %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @T_CHANNELS(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @T_DOSWAP(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @T_FLAVOR(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @T_SWAPFIRST(i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @T_EXTRA(i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %15, align 4
  %47 = xor i32 %45, %46
  store i32 %47, i32* %17, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @T_PLANAR(i32 %50)
  store i32 %51, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IsInkSpace(i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, float 1.000000e+02, float 1.000000e+00
  %59 = fptosi float %58 to i32
  store i32 %59, i32* %22, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PixelSize(i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = sdiv i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %5
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %68, %5
  store i32 0, i32* %20, align 4
  br label %71

71:                                               ; preds = %124, %70
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %127

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %20, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  br label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %20, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi i32 [ %82, %78 ], [ %84, %83 ]
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %21, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %19, align 4
  br label %107

99:                                               ; preds = %85
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %21, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %19, align 4
  br label %107

107:                                              ; preds = %99, %89
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* %19, align 4
  %110 = sdiv i32 %109, %108
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* %19, align 4
  %115 = sub nsw i32 1, %114
  br label %118

116:                                              ; preds = %107
  %117 = load i32, i32* %19, align 4
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %115, %113 ], [ %117, %116 ]
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %23, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %20, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %20, align 4
  br label %71

127:                                              ; preds = %71
  %128 = load i32, i32* %16, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %127
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load i32*, i32** %9, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %24, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %12, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i32 @memmove(i32* %138, i32* %140, i32 %145)
  %147 = load i32, i32* %24, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %147, i32* %152, align 4
  br label %153

153:                                              ; preds = %133, %130, %127
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @T_PLANAR(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i32*, i32** %10, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  store i32* %161, i32** %6, align 8
  br label %170

162:                                              ; preds = %153
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 4
  %169 = getelementptr inbounds i32, i32* %163, i64 %168
  store i32* %169, i32** %6, align 8
  br label %170

170:                                              ; preds = %162, %159
  %171 = load i32*, i32** %6, align 8
  ret i32* %171
}

declare dso_local i32 @T_CHANNELS(i32) #1

declare dso_local i32 @T_DOSWAP(i32) #1

declare dso_local i32 @T_FLAVOR(i32) #1

declare dso_local i32 @T_SWAPFIRST(i32) #1

declare dso_local i32 @T_EXTRA(i32) #1

declare dso_local i32 @T_PLANAR(i32) #1

declare dso_local i64 @IsInkSpace(i32) #1

declare dso_local i32 @PixelSize(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
