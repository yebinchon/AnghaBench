; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_bufSizeTest.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_bufSizeTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Buffer size regression test\0A\00", align 1
@TJ_NUMSAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%.4d x %.4d\08\08\08\08\08\08\08\08\08\08\08\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@alloc = common dso_local global i64 0, align 8
@yuv = common dso_local global i64 0, align 8
@YUVENCODE = common dso_local global i64 0, align 8
@RAND_MAX = common dso_local global i32 0, align 4
@TJPF_BGRX = common dso_local global i32 0, align 4
@TJFLAG_NOREALLOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Done.      \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufSizeTest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = call i32* (...) @tjInitCompress()
  store i32* %10, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (...) @_throwtj()
  br label %14

14:                                               ; preds = %12, %0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %250, %14
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TJ_NUMSAMP, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %253

20:                                               ; preds = %16
  store i32 1, i32* %1, align 4
  br label %21

21:                                               ; preds = %246, %20
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 48
  br i1 %23, label %24, label %249

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2048, i32 48
  store i32 %28, i32* %9, align 4
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %242, %24
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %245

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = srem i32 %34, 100
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %2, align 4
  %44 = mul nsw i32 %42, %43
  %45 = mul nsw i32 %44, 4
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %5, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %41
  %52 = load i64, i64* @alloc, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* @yuv, align 8
  %56 = load i64, i64* @YUVENCODE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %54, %51
  %59 = load i64, i64* @yuv, align 8
  %60 = load i64, i64* @YUVENCODE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @tjBufSizeYUV(i32 %63, i32 %64, i32 %65)
  store i64 %66, i64* %8, align 8
  br label %72

67:                                               ; preds = %58
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @tjBufSize(i32 %68, i32 %69, i32 %70)
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @tjAlloc(i64 %73)
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %6, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79, %54
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* %2, align 4
  %85 = mul nsw i32 %83, %84
  %86 = mul nsw i32 %85, 4
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %81
  %89 = call i32 (...) @random()
  %90 = load i32, i32* @RAND_MAX, align 4
  %91 = sdiv i32 %90, 2
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 0, i8* %97, align 1
  br label %103

98:                                               ; preds = %88
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 -1, i8* %102, align 1
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %81

107:                                              ; preds = %81
  %108 = load i64, i64* @yuv, align 8
  %109 = load i64, i64* @YUVENCODE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load i32*, i32** %7, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %1, align 4
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @TJPF_BGRX, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @tjEncodeYUV2(i32* %112, i8* %113, i32 %114, i32 0, i32 %115, i32 %116, i8* %117, i32 %118, i32 0)
  %120 = call i32 @_tj(i32 %119)
  br label %137

121:                                              ; preds = %107
  %122 = load i32*, i32** %7, align 8
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %1, align 4
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* @TJPF_BGRX, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i64, i64* @alloc, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %133

131:                                              ; preds = %121
  %132 = load i32, i32* @TJFLAG_NOREALLOC, align 4
  br label %133

133:                                              ; preds = %131, %130
  %134 = phi i32 [ 0, %130 ], [ %132, %131 ]
  %135 = call i32 @tjCompress2(i32* %122, i8* %123, i32 %124, i32 0, i32 %125, i32 %126, i8** %6, i64* %8, i32 %127, i32 100, i32 %134)
  %136 = call i32 @_tj(i32 %135)
  br label %137

137:                                              ; preds = %133, %111
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @free(i8* %138)
  store i8* null, i8** %5, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @tjFree(i8* %140)
  store i8* null, i8** %6, align 8
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* %1, align 4
  %144 = mul nsw i32 %142, %143
  %145 = mul nsw i32 %144, 4
  %146 = call i64 @malloc(i32 %145)
  %147 = inttoptr i64 %146 to i8*
  store i8* %147, i8** %5, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %137
  %152 = load i64, i64* @alloc, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i64, i64* @yuv, align 8
  %156 = load i64, i64* @YUVENCODE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %180

158:                                              ; preds = %154, %151
  %159 = load i64, i64* @yuv, align 8
  %160 = load i64, i64* @YUVENCODE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32, i32* %2, align 4
  %164 = load i32, i32* %1, align 4
  %165 = load i32, i32* %4, align 4
  %166 = call i64 @tjBufSizeYUV(i32 %163, i32 %164, i32 %165)
  store i64 %166, i64* %8, align 8
  br label %172

167:                                              ; preds = %158
  %168 = load i32, i32* %2, align 4
  %169 = load i32, i32* %1, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i64 @tjBufSize(i32 %168, i32 %169, i32 %170)
  store i64 %171, i64* %8, align 8
  br label %172

172:                                              ; preds = %167, %162
  %173 = load i64, i64* %8, align 8
  %174 = call i64 @tjAlloc(i64 %173)
  %175 = inttoptr i64 %174 to i8*
  store i8* %175, i8** %6, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %172
  br label %180

180:                                              ; preds = %179, %154
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %204, %180
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* %2, align 4
  %184 = load i32, i32* %1, align 4
  %185 = mul nsw i32 %183, %184
  %186 = mul nsw i32 %185, 4
  %187 = icmp slt i32 %182, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %181
  %189 = call i32 (...) @random()
  %190 = load i32, i32* @RAND_MAX, align 4
  %191 = sdiv i32 %190, 2
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load i8*, i8** %5, align 8
  %195 = load i32, i32* %3, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  store i8 0, i8* %197, align 1
  br label %203

198:                                              ; preds = %188
  %199 = load i8*, i8** %5, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  store i8 -1, i8* %202, align 1
  br label %203

203:                                              ; preds = %198, %193
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %3, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %3, align 4
  br label %181

207:                                              ; preds = %181
  %208 = load i64, i64* @yuv, align 8
  %209 = load i64, i64* @YUVENCODE, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %207
  %212 = load i32*, i32** %7, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = load i32, i32* %2, align 4
  %215 = load i32, i32* %1, align 4
  %216 = load i32, i32* @TJPF_BGRX, align 4
  %217 = load i8*, i8** %6, align 8
  %218 = load i32, i32* %4, align 4
  %219 = call i32 @tjEncodeYUV2(i32* %212, i8* %213, i32 %214, i32 0, i32 %215, i32 %216, i8* %217, i32 %218, i32 0)
  %220 = call i32 @_tj(i32 %219)
  br label %237

221:                                              ; preds = %207
  %222 = load i32*, i32** %7, align 8
  %223 = load i8*, i8** %5, align 8
  %224 = load i32, i32* %2, align 4
  %225 = load i32, i32* %1, align 4
  %226 = load i32, i32* @TJPF_BGRX, align 4
  %227 = load i32, i32* %4, align 4
  %228 = load i64, i64* @alloc, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  br label %233

231:                                              ; preds = %221
  %232 = load i32, i32* @TJFLAG_NOREALLOC, align 4
  br label %233

233:                                              ; preds = %231, %230
  %234 = phi i32 [ 0, %230 ], [ %232, %231 ]
  %235 = call i32 @tjCompress2(i32* %222, i8* %223, i32 %224, i32 0, i32 %225, i32 %226, i8** %6, i64* %8, i32 %227, i32 100, i32 %234)
  %236 = call i32 @_tj(i32 %235)
  br label %237

237:                                              ; preds = %233, %211
  %238 = load i8*, i8** %5, align 8
  %239 = call i32 @free(i8* %238)
  store i8* null, i8** %5, align 8
  %240 = load i8*, i8** %6, align 8
  %241 = call i32 @tjFree(i8* %240)
  store i8* null, i8** %6, align 8
  br label %242

242:                                              ; preds = %237
  %243 = load i32, i32* %2, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %2, align 4
  br label %29

245:                                              ; preds = %29
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %1, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %1, align 4
  br label %21

249:                                              ; preds = %21
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %4, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %4, align 4
  br label %16

253:                                              ; preds = %16
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %255

255:                                              ; preds = %253
  %256 = load i8*, i8** %5, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i8*, i8** %5, align 8
  %260 = call i32 @free(i8* %259)
  br label %261

261:                                              ; preds = %258, %255
  %262 = load i8*, i8** %6, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i8*, i8** %6, align 8
  %266 = call i32 @free(i8* %265)
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i32*, i32** %7, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32*, i32** %7, align 8
  %272 = call i32 @tjDestroy(i32* %271)
  br label %273

273:                                              ; preds = %270, %267
  ret void
}

declare dso_local i32* @tjInitCompress(...) #1

declare dso_local i32 @_throwtj(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i64 @tjBufSizeYUV(i32, i32, i32) #1

declare dso_local i64 @tjBufSize(i32, i32, i32) #1

declare dso_local i64 @tjAlloc(i64) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @_tj(i32) #1

declare dso_local i32 @tjEncodeYUV2(i32*, i8*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @tjCompress2(i32*, i8*, i32, i32, i32, i32, i8**, i64*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @tjFree(i8*) #1

declare dso_local i32 @tjDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
