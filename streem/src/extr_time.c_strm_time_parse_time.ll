; ModuleID = '/home/carl/AnghaBench/streem/src/extr_time.c_strm_time_parse_time.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_time.c_strm_time_parse_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%Y.%m.%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%Y/%m/%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%Y%m%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%b %d %Y\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%b %d\00", align 1
@TZ_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%H%M%S\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@TZ_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strm_time_parse_time(i8* %0, i64 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.tm, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.tm, align 4
  %21 = alloca i64, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %12, align 8
  %25 = bitcast %struct.tm* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 8, i1 false)
  %26 = call i32 @time_localoffset(i32 1)
  store i32 %26, i32* %17, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %5
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  %36 = call i8* @malloc(i64 %35)
  store i8* %36, i8** %19, align 8
  %37 = load i8*, i8** %19, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load i8*, i8** %19, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %19, align 8
  store i8* %44, i8** %12, align 8
  br label %45

45:                                               ; preds = %33, %5
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %15, align 8
  %49 = load i64*, i64** %10, align 8
  store i64 0, i64* %49, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i8* @strptime(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.tm* %16)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i8*, i8** %12, align 8
  %56 = call i8* @strptime(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %16)
  store i8* %56, i8** %13, align 8
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i8*, i8** %13, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %12, align 8
  %62 = call i8* @strptime(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %16)
  store i8* %62, i8** %13, align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i8*, i8** %13, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load i8*, i8** %12, align 8
  %68 = call i8* @strptime(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %16)
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 84
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %13, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  store i8* null, i8** %13, align 8
  br label %84

84:                                               ; preds = %83, %77, %71, %66
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i8*, i8** %13, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i8*, i8** %12, align 8
  %90 = call i8* @strptime(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %16)
  store i8* %90, i8** %13, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 58
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i8* null, i8** %13, align 8
  br label %100

100:                                              ; preds = %99, %93, %88
  br label %101

101:                                              ; preds = %100, %85
  %102 = load i8*, i8** %13, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = call i32 @time(i32* null)
  store i32 %105, i32* %18, align 4
  %106 = call i32 @localtime_r(i32* %18, %struct.tm* %20)
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load i8*, i8** %12, align 8
  %111 = call i8* @strptime(i8* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.tm* %16)
  store i8* %111, i8** %13, align 8
  br label %112

112:                                              ; preds = %104, %101
  %113 = load i8*, i8** %13, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %259

116:                                              ; preds = %112
  %117 = load i8*, i8** %13, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = icmp eq i8* %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = call i32 @mktime(%struct.tm* %16)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64*, i64** %9, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i64*, i64** %10, align 8
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* @TZ_NONE, align 4
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  br label %251

131:                                              ; preds = %116
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %13, align 8
  %134 = load i8, i8* %132, align 1
  %135 = sext i8 %134 to i32
  switch i32 %135, label %147 [
    i32 84, label %136
    i32 32, label %137
  ]

136:                                              ; preds = %131
  br label %148

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %143, %137
  %139 = load i8*, i8** %13, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 32
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i8*, i8** %13, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %13, align 8
  br label %138

146:                                              ; preds = %138
  br label %148

147:                                              ; preds = %131
  br label %259

148:                                              ; preds = %146, %136
  %149 = load i8*, i8** %13, align 8
  %150 = call i8* @strptime(i8* %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.tm* %16)
  store i8* %150, i8** %14, align 8
  %151 = load i8*, i8** %14, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i8*, i8** %13, align 8
  %155 = call i8* @strptime(i8* %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.tm* %16)
  store i8* %155, i8** %14, align 8
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i8*, i8** %14, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i8*, i8** %13, align 8
  %161 = call i8* @strptime(i8* %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %struct.tm* %16)
  store i8* %161, i8** %14, align 8
  %162 = load i8*, i8** %14, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %259

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165, %156
  %167 = load i8*, i8** %14, align 8
  store i8* %167, i8** %13, align 8
  %168 = call i32 @mktime(%struct.tm* %16)
  store i32 %168, i32* %18, align 4
  %169 = load i8*, i8** %13, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 46
  br i1 %173, label %174, label %200

174:                                              ; preds = %166
  %175 = load i8*, i8** %13, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %13, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = call i64 @scan_num(i8** %13, i8* %177)
  store i64 %178, i64* %21, align 8
  %179 = load i64, i64* %21, align 8
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %259

182:                                              ; preds = %174
  %183 = load i64, i64* %21, align 8
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %182
  %186 = load i64, i64* %21, align 8
  %187 = sitofp i64 %186 to double
  %188 = call i32 @log10(double %187)
  %189 = call double @ceil(i32 %188)
  store double %189, double* %22, align 8
  %190 = load i64, i64* %21, align 8
  %191 = sitofp i64 %190 to double
  %192 = load double, double* %22, align 8
  %193 = call double @pow(double 1.000000e+01, double %192) #4
  %194 = fdiv double %191, %193
  store double %194, double* %22, align 8
  %195 = load double, double* %22, align 8
  %196 = fmul double %195, 1.000000e+06
  %197 = fptosi double %196 to i64
  %198 = load i64*, i64** %10, align 8
  store i64 %197, i64* %198, align 8
  br label %199

199:                                              ; preds = %185, %182
  br label %200

200:                                              ; preds = %199, %166
  %201 = load i8*, i8** %13, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 0
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 90
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %18, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %18, align 4
  %210 = load i32*, i32** %11, align 8
  store i32 0, i32* %210, align 4
  br label %247

211:                                              ; preds = %200
  %212 = load i8*, i8** %13, align 8
  %213 = load i8*, i8** %15, align 8
  %214 = icmp eq i8* %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* %17, align 4
  %217 = load i32*, i32** %11, align 8
  store i32 %216, i32* %217, align 4
  br label %246

218:                                              ; preds = %211
  %219 = load i8*, i8** %13, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 0
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  switch i32 %222, label %244 [
    i32 43, label %223
    i32 45, label %223
  ]

223:                                              ; preds = %218, %218
  %224 = load i8*, i8** %13, align 8
  %225 = load i8*, i8** %15, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = ptrtoint i8* %225 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = call i32 @parse_tz(i8* %224, i64 %229)
  store i32 %230, i32* %23, align 4
  %231 = load i32, i32* %23, align 4
  %232 = load i32, i32* @TZ_FAIL, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %223
  br label %259

235:                                              ; preds = %223
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* %18, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %18, align 4
  %239 = load i32, i32* %23, align 4
  %240 = load i32, i32* %18, align 4
  %241 = sub nsw i32 %240, %239
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %23, align 4
  %243 = load i32*, i32** %11, align 8
  store i32 %242, i32* %243, align 4
  br label %245

244:                                              ; preds = %218
  br label %259

245:                                              ; preds = %235
  br label %246

246:                                              ; preds = %245, %215
  br label %247

247:                                              ; preds = %246, %206
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = load i64*, i64** %9, align 8
  store i64 %249, i64* %250, align 8
  br label %251

251:                                              ; preds = %247, %120
  %252 = load i8*, i8** %12, align 8
  %253 = load i8*, i8** %7, align 8
  %254 = icmp ne i8* %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load i8*, i8** %12, align 8
  %257 = call i32 @free(i8* %256)
  br label %258

258:                                              ; preds = %255, %251
  store i32 0, i32* %6, align 4
  br label %267

259:                                              ; preds = %244, %234, %181, %164, %147, %115
  %260 = load i8*, i8** %12, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = icmp ne i8* %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i8*, i8** %12, align 8
  %265 = call i32 @free(i8* %264)
  br label %266

266:                                              ; preds = %263, %259
  store i32 -1, i32* %6, align 4
  br label %267

267:                                              ; preds = %266, %258
  %268 = load i32, i32* %6, align 4
  ret i32 %268
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @time_localoffset(i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i8* @strptime(i8*, i8*, %struct.tm*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #2

declare dso_local i32 @mktime(%struct.tm*) #2

declare dso_local i64 @scan_num(i8**, i8*) #2

declare dso_local double @ceil(i32) #2

declare dso_local i32 @log10(double) #2

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #3

declare dso_local i32 @parse_tz(i8*, i64) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
