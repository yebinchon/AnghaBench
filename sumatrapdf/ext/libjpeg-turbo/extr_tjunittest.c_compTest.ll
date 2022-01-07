; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_compTest.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_compTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yuv = common dso_local global i64 0, align 8
@YUVENCODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s %s -> %s YUV ... \00", align 1
@pixFormatStr = common dso_local global i8** null, align 8
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Bottom-Up\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Top-Down \00", align 1
@subNameLong = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"%s %s -> %s Q%d ... \00", align 1
@tjPixelSize = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@alloc = common dso_local global i32 0, align 4
@TJFLAG_NOREALLOC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"%s_enc_%s_%s_%s.yuv\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"BU\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"TD\00", align 1
@subName = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"%s_enc_%s_%s_%s_Q%d.jpg\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Passed.\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"FAILED!\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"  %f ms\0A  Result in %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compTest(i32 %0, i8** %1, i64* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [1024 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca double, align 8
  store i32 %0, i32* %11, align 4
  store i8** %1, i8*** %12, align 8
  store i64* %2, i64** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i8* null, i8** %22, align 8
  %24 = load i64, i64* @yuv, align 8
  %25 = load i64, i64* @YUVENCODE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %10
  %28 = load i8**, i8*** @pixFormatStr, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %39 = load i8**, i8*** @subNameLong, align 8
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %38, i8* %43)
  br label %64

45:                                               ; preds = %10
  %46 = load i8**, i8*** @pixFormatStr, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i8**, i8*** @subNameLong, align 8
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %19, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %50, i8* %56, i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %45, %27
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32*, i32** @tjPixelSize, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %67, %72
  %74 = call i64 @malloc(i32 %73)
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %22, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %64
  %80 = load i8*, i8** %22, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %20, align 4
  %85 = call i32 @initBuf(i8* %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i8**, i8*** %12, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %79
  %90 = load i64*, i64** %13, align 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i8**, i8*** %12, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = load i64*, i64** %13, align 8
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @memset(i8* %95, i32 0, i64 %97)
  br label %99

99:                                               ; preds = %93, %89, %79
  %100 = call double (...) @gettime()
  store double %100, double* %23, align 8
  %101 = load i64, i64* @yuv, align 8
  %102 = load i64, i64* @YUVENCODE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load i32, i32* %11, align 4
  %106 = load i8*, i8** %22, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i8**, i8*** %12, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %20, align 4
  %114 = call i32 @tjEncodeYUV2(i32 %105, i8* %106, i32 %107, i32 0, i32 %108, i32 %109, i8* %111, i32 %112, i32 %113)
  %115 = call i32 @_tj(i32 %114)
  br label %152

116:                                              ; preds = %99
  %117 = load i32, i32* @alloc, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %139, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @TJFLAG_NOREALLOC, align 4
  %121 = load i32, i32* %20, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %20, align 4
  %123 = load i64, i64* @yuv, align 8
  %124 = load i64, i64* @YUVENCODE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %18, align 4
  %130 = call i64 @tjBufSizeYUV(i32 %127, i32 %128, i32 %129)
  br label %136

131:                                              ; preds = %119
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i64 @tjBufSize(i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i64 [ %130, %126 ], [ %135, %131 ]
  %138 = load i64*, i64** %13, align 8
  store i64 %137, i64* %138, align 8
  br label %139

139:                                              ; preds = %136, %116
  %140 = load i32, i32* %11, align 4
  %141 = load i8*, i8** %22, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i8**, i8*** %12, align 8
  %146 = load i64*, i64** %13, align 8
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %20, align 4
  %150 = call i32 @tjCompress2(i32 %140, i8* %141, i32 %142, i32 0, i32 %143, i32 %144, i8** %145, i64* %146, i32 %147, i32 %148, i32 %149)
  %151 = call i32 @_tj(i32 %150)
  br label %152

152:                                              ; preds = %139, %104
  %153 = call double (...) @gettime()
  %154 = load double, double* %23, align 8
  %155 = fsub double %153, %154
  store double %155, double* %23, align 8
  %156 = load i64, i64* @yuv, align 8
  %157 = load i64, i64* @YUVENCODE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %179

159:                                              ; preds = %152
  %160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %161 = load i8*, i8** %17, align 8
  %162 = load i8**, i8*** @pixFormatStr, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %173 = load i8**, i8*** @subName, align 8
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %160, i32 1024, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %161, i8* %166, i8* %172, i8* %177)
  br label %200

179:                                              ; preds = %152
  %180 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %181 = load i8*, i8** %17, align 8
  %182 = load i8**, i8*** @pixFormatStr, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %193 = load i8**, i8*** @subName, align 8
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = load i32, i32* %19, align 4
  %199 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %180, i32 1024, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %181, i8* %186, i8* %192, i8* %197, i32 %198)
  br label %200

200:                                              ; preds = %179, %159
  %201 = load i8**, i8*** %12, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = load i64*, i64** %13, align 8
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %206 = call i32 @writeJPEG(i8* %202, i64 %204, i8* %205)
  %207 = load i64, i64* @yuv, align 8
  %208 = load i64, i64* @YUVENCODE, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %200
  %211 = load i8**, i8*** %12, align 8
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %18, align 4
  %216 = call i64 @checkBufYUV(i8* %212, i32 %213, i32 %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %210
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %222

220:                                              ; preds = %210
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %222

222:                                              ; preds = %220, %218
  br label %225

223:                                              ; preds = %200
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %222
  %226 = load double, double* %23, align 8
  %227 = fmul double %226, 1.000000e+03
  %228 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), double %227, i8* %228)
  br label %230

230:                                              ; preds = %225
  %231 = load i8*, i8** %22, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i8*, i8** %22, align 8
  %235 = call i32 @free(i8* %234)
  br label %236

236:                                              ; preds = %233, %230
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i32 @initBuf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local double @gettime(...) #1

declare dso_local i32 @_tj(i32) #1

declare dso_local i32 @tjEncodeYUV2(i32, i8*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @tjBufSizeYUV(i32, i32, i32) #1

declare dso_local i64 @tjBufSize(i32, i32, i32) #1

declare dso_local i32 @tjCompress2(i32, i8*, i32, i32, i32, i32, i8**, i64*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @writeJPEG(i8*, i64, i8*) #1

declare dso_local i64 @checkBufYUV(i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
