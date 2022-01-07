; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_get_disto.c_SSIMScaleChannel.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_get_disto.c_SSIMScaleChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32, i32, i32, i32)* @SSIMScaleChannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SSIMScaleChannel(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %25 = load i32, i32* %15, align 4
  %26 = mul nsw i32 2, %25
  %27 = load i32, i32* %16, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i64 @malloc(i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %21, align 8
  %34 = load i32*, i32** %21, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32* %39, i32** %22, align 8
  %40 = load i32*, i32** %21, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %173

43:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %96, %43
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %99

48:                                               ; preds = %44
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %92, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %95

53:                                               ; preds = %49
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %14, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %54, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %21, align 8
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %15, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  store i32 %64, i32* %72, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %14, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %13, align 4
  %79 = mul nsw i32 %77, %78
  %80 = add nsw i32 %76, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %73, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %22, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %15, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  store i32 %83, i32* %91, align 4
  br label %92

92:                                               ; preds = %53
  %93 = load i32, i32* %18, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %18, align 4
  br label %49

95:                                               ; preds = %49
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %19, align 4
  br label %44

99:                                               ; preds = %44
  store i32 0, i32* %19, align 4
  br label %100

100:                                              ; preds = %155, %99
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %158

104:                                              ; preds = %100
  store i32 0, i32* %18, align 4
  br label %105

105:                                              ; preds = %151, %104
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %154

109:                                              ; preds = %105
  %110 = load i32*, i32** %21, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32*, i32** %22, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call double @SSIMGetClipped(i32* %110, i32 %111, i32* %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store double %118, double* %23, align 8
  %119 = load double, double* %23, align 8
  %120 = fsub double 1.000000e+00, %119
  %121 = fmul double 2.550000e+02, %120
  %122 = fptosi double %121 to i32
  store i32 %122, i32* %24, align 4
  %123 = load i32, i32* %24, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %109
  store i32 0, i32* %24, align 4
  br label %133

126:                                              ; preds = %109
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %20, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* %24, align 4
  store i32 %131, i32* %20, align 4
  br label %132

132:                                              ; preds = %130, %126
  br label %133

133:                                              ; preds = %132, %125
  %134 = load i32, i32* %24, align 4
  %135 = icmp sgt i32 %134, 255
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %139

137:                                              ; preds = %133
  %138 = load i32, i32* %24, align 4
  br label %139

139:                                              ; preds = %137, %136
  %140 = phi i32 [ 255, %136 ], [ %138, %137 ]
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %14, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %11, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %144, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %141, i64 %149
  store i32 %140, i32* %150, align 4
  br label %151

151:                                              ; preds = %139
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %105

154:                                              ; preds = %105
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %19, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %19, align 4
  br label %100

158:                                              ; preds = %100
  %159 = load i32*, i32** %21, align 8
  %160 = call i32 @free(i32* %159)
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %20, align 4
  %170 = call i32 @RescalePlane(i32* %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %163, %158
  %172 = load i32, i32* %20, align 4
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %171, %42
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

declare dso_local i64 @malloc(i32) #1

declare dso_local double @SSIMGetClipped(i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @RescalePlane(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
