; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_filters_utils.c_WebPEstimateBestFilter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_filters_utils.c_WebPEstimateBestFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WEBP_FILTER_LAST = common dso_local global i32 0, align 4
@SMAX = common dso_local global i32 0, align 4
@WEBP_FILTER_NONE = common dso_local global i64 0, align 8
@WEBP_FILTER_HORIZONTAL = common dso_local global i64 0, align 8
@WEBP_FILTER_VERTICAL = common dso_local global i64 0, align 8
@WEBP_FILTER_GRADIENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WebPEstimateBestFilter(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %25 = load i32, i32* @WEBP_FILTER_LAST, align 4
  %26 = zext i32 %25 to i64
  %27 = load i32, i32* @SMAX, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = mul nuw i64 %26, %28
  %31 = alloca i32, i64 %30, align 16
  store i64 %26, i64* %12, align 8
  store i64 %28, i64* %13, align 8
  %32 = bitcast i32* %31 to i32**
  %33 = mul nuw i64 %26, %28
  %34 = mul nuw i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32** %32, i32 0, i32 %35)
  store i32 2, i32* %10, align 4
  br label %37

37:                                               ; preds = %157, %4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %160

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  store i32 2, i32* %9, align 4
  br label %52

52:                                               ; preds = %153, %42
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %156

57:                                               ; preds = %52
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @SDIFF(i32 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SDIFF(i32 %69, i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SDIFF(i32 %81, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @GradientPredictor(i32 %95, i32 %102, i32 %110)
  store i32 %111, i32* %19, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %19, align 4
  %118 = call i32 @SDIFF(i32 %116, i32 %117)
  store i32 %118, i32* %20, align 4
  %119 = load i64, i64* @WEBP_FILTER_NONE, align 8
  %120 = mul nsw i64 %119, %28
  %121 = getelementptr inbounds i32, i32* %31, i64 %120
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 1, i32* %124, align 4
  %125 = load i64, i64* @WEBP_FILTER_HORIZONTAL, align 8
  %126 = mul nsw i64 %125, %28
  %127 = getelementptr inbounds i32, i32* %31, i64 %126
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 1, i32* %130, align 4
  %131 = load i64, i64* @WEBP_FILTER_VERTICAL, align 8
  %132 = mul nsw i64 %131, %28
  %133 = getelementptr inbounds i32, i32* %31, i64 %132
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 1, i32* %136, align 4
  %137 = load i64, i64* @WEBP_FILTER_GRADIENT, align 8
  %138 = mul nsw i64 %137, %28
  %139 = getelementptr inbounds i32, i32* %31, i64 %138
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 1, i32* %142, align 4
  %143 = load i32, i32* %15, align 4
  %144 = mul nsw i32 3, %143
  %145 = load i32*, i32** %14, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %144, %149
  %151 = add nsw i32 %150, 2
  %152 = ashr i32 %151, 2
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %57
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 2
  store i32 %155, i32* %9, align 4
  br label %52

156:                                              ; preds = %52
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 2
  store i32 %159, i32* %10, align 4
  br label %37

160:                                              ; preds = %37
  %161 = load i64, i64* @WEBP_FILTER_NONE, align 8
  store i64 %161, i64* %22, align 8
  store i32 2147483647, i32* %23, align 4
  %162 = load i64, i64* @WEBP_FILTER_NONE, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %21, align 4
  br label %164

164:                                              ; preds = %200, %160
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* @WEBP_FILTER_LAST, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %203

168:                                              ; preds = %164
  store i32 0, i32* %24, align 4
  store i32 0, i32* %9, align 4
  br label %169

169:                                              ; preds = %188, %168
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @SMAX, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %191

173:                                              ; preds = %169
  %174 = load i32, i32* %21, align 4
  %175 = sext i32 %174 to i64
  %176 = mul nsw i64 %175, %28
  %177 = getelementptr inbounds i32, i32* %31, i64 %176
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %173
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %24, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %24, align 4
  br label %187

187:                                              ; preds = %183, %173
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %169

191:                                              ; preds = %169
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* %23, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load i32, i32* %24, align 4
  store i32 %196, i32* %23, align 4
  %197 = load i32, i32* %21, align 4
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %22, align 8
  br label %199

199:                                              ; preds = %195, %191
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  br label %164

203:                                              ; preds = %164
  %204 = load i64, i64* %22, align 8
  %205 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %205)
  ret i64 %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @SDIFF(i32, i32) #2

declare dso_local i32 @GradientPredictor(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
