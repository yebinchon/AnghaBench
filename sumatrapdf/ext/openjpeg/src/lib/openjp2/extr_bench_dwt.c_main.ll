; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_bench_dwt.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_bench_dwt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i8*, i32* }

@OPJ_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"-display\00", align 1
@OPJ_TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"-check\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-size\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-num_threads\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"-num_resolutions\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"Invalid value for num_resolutions. Should be >= 1 and <= 32\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"-offset\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Before\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"time for dwt_decode: %.03f s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"After IDWT\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"After FDWT\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Difference found at idx = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %27 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %27, i8** %17, align 8
  %28 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %28, i8** %18, align 8
  store i32 16383, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = add nsw i32 %29, 1
  %31 = sdiv i32 %30, 2
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %19, align 4
  %34 = add nsw i32 %33, 1
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %23, align 4
  store i32 6, i32* %24, align 4
  store i32 1, i32* %14, align 4
  br label %37

37:                                               ; preds = %179, %2
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %182

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %50, i8** %17, align 8
  %51 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %51, i8** %18, align 8
  br label %178

52:                                               ; preds = %41
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %61, i8** %18, align 8
  br label %177

62:                                               ; preds = %52
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %76, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @atoi(i8* %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %176

85:                                               ; preds = %70, %62
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %85
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @atoi(i8* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %175

108:                                              ; preds = %93, %85
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %108
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %116
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %122, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @atoi(i8* %127)
  store i32 %128, i32* %24, align 4
  %129 = load i32, i32* %24, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %24, align 4
  %133 = icmp sgt i32 %132, 32
  br i1 %133, label %134, label %138

134:                                              ; preds = %131, %121
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 @fprintf(i32 %135, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %137 = call i32 @exit(i32 1) #3
  unreachable

138:                                              ; preds = %131
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %14, align 4
  br label %174

141:                                              ; preds = %116, %108
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %141
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 2
  %152 = load i32, i32* %4, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %149
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @atoi(i8* %160)
  store i32 %161, i32* %22, align 4
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %162, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @atoi(i8* %167)
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 2
  store i32 %170, i32* %14, align 4
  br label %173

171:                                              ; preds = %149, %141
  %172 = call i32 (...) @usage()
  br label %173

173:                                              ; preds = %171, %154
  br label %174

174:                                              ; preds = %173, %138
  br label %175

175:                                              ; preds = %174, %98
  br label %176

176:                                              ; preds = %175, %75
  br label %177

177:                                              ; preds = %176, %60
  br label %178

178:                                              ; preds = %177, %49
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %37

182:                                              ; preds = %37
  %183 = load i32, i32* %6, align 4
  %184 = call i32* @opj_thread_pool_create(i32 %183)
  store i32* %184, i32** %13, align 8
  %185 = load i32, i32* %22, align 4
  %186 = load i32, i32* %23, align 4
  %187 = load i32, i32* %22, align 4
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* %23, align 4
  %191 = load i32, i32* %19, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %24, align 4
  %194 = call i32 @init_tilec(%struct.TYPE_13__* %10, i32 %185, i32 %186, i32 %189, i32 %192, i32 %193)
  %195 = load i8*, i8** %17, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %235

197:                                              ; preds = %182
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %199

199:                                              ; preds = %231, %197
  %200 = load i32, i32* %15, align 4
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %202, %204
  %206 = icmp slt i32 %200, %205
  br i1 %206, label %207, label %234

207:                                              ; preds = %199
  store i32 0, i32* %14, align 4
  br label %208

208:                                              ; preds = %226, %207
  %209 = load i32, i32* %14, align 4
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %211, %213
  %215 = icmp slt i32 %209, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %16, align 4
  br label %226

226:                                              ; preds = %216
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %14, align 4
  br label %208

229:                                              ; preds = %208
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %231

231:                                              ; preds = %229
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %15, align 4
  br label %199

234:                                              ; preds = %199
  br label %235

235:                                              ; preds = %234, %182
  %236 = call i32 @memset(%struct.TYPE_13__* %7, i32 0, i32 104)
  %237 = load i32*, i32** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 18
  store i32* %237, i32** %238, align 8
  %239 = load i8*, i8** @OPJ_TRUE, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 17
  store i8* %239, i8** %240, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 5
  store i32 %242, i32* %243, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 6
  store i32 %245, i32* %246, align 4
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 7
  store i32 %248, i32* %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 8
  store i32 %251, i32* %252, align 4
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 16
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %253, align 8
  %254 = call i32 @memset(%struct.TYPE_13__* %8, i32 0, i32 104)
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 15
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %255, align 8
  %256 = call i32 @memset(%struct.TYPE_13__* %9, i32 0, i32 104)
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 3
  store i32 %258, i32* %259, align 4
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i32 %261, i32* %262, align 4
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  store i32 %264, i32* %265, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i32 %267, i32* %268, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 9
  store i32 1, i32* %269, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 13
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %270, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 14
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %271, align 8
  %272 = call i32 @memset(%struct.TYPE_13__* %11, i32 0, i32 104)
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 9
  store i32 1, i32* %273, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 13
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %274, align 8
  %275 = call i32 @memset(%struct.TYPE_13__* %12, i32 0, i32 104)
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 10
  store i32 1, i32* %276, align 4
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 11
  store i32 1, i32* %277, align 8
  %278 = call double (...) @opj_clock()
  store double %278, double* %20, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 12
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @opj_dwt_decode(%struct.TYPE_13__* %7, %struct.TYPE_13__* %10, i32 %280)
  %282 = call double (...) @opj_clock()
  store double %282, double* %21, align 8
  %283 = load double, double* %21, align 8
  %284 = load double, double* %20, align 8
  %285 = fsub double %283, %284
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), double %285)
  %287 = load i8*, i8** %17, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %292, label %289

289:                                              ; preds = %235
  %290 = load i8*, i8** %18, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %419

292:                                              ; preds = %289, %235
  %293 = load i8*, i8** %17, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %333

295:                                              ; preds = %292
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %297

297:                                              ; preds = %329, %295
  %298 = load i32, i32* %15, align 4
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %300, %302
  %304 = icmp slt i32 %298, %303
  br i1 %304, label %305, label %332

305:                                              ; preds = %297
  store i32 0, i32* %14, align 4
  br label %306

306:                                              ; preds = %324, %305
  %307 = load i32, i32* %14, align 4
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = sub nsw i32 %309, %311
  %313 = icmp slt i32 %307, %312
  br i1 %313, label %314, label %327

314:                                              ; preds = %306
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %16, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %320)
  %322 = load i32, i32* %16, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %16, align 4
  br label %324

324:                                              ; preds = %314
  %325 = load i32, i32* %14, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %14, align 4
  br label %306

327:                                              ; preds = %306
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %329

329:                                              ; preds = %327
  %330 = load i32, i32* %15, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %15, align 4
  br label %297

332:                                              ; preds = %297
  br label %333

333:                                              ; preds = %332, %292
  %334 = call i32 @opj_dwt_encode(%struct.TYPE_13__* %10)
  %335 = load i8*, i8** %17, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %375

337:                                              ; preds = %333
  %338 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %339

339:                                              ; preds = %371, %337
  %340 = load i32, i32* %15, align 4
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = sub nsw i32 %342, %344
  %346 = icmp slt i32 %340, %345
  br i1 %346, label %347, label %374

347:                                              ; preds = %339
  store i32 0, i32* %14, align 4
  br label %348

348:                                              ; preds = %366, %347
  %349 = load i32, i32* %14, align 4
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %351, %353
  %355 = icmp slt i32 %349, %354
  br i1 %355, label %356, label %369

356:                                              ; preds = %348
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %16, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %362)
  %364 = load i32, i32* %16, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %16, align 4
  br label %366

366:                                              ; preds = %356
  %367 = load i32, i32* %14, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %14, align 4
  br label %348

369:                                              ; preds = %348
  %370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %371

371:                                              ; preds = %369
  %372 = load i32, i32* %15, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %15, align 4
  br label %339

374:                                              ; preds = %339
  br label %375

375:                                              ; preds = %374, %333
  %376 = load i8*, i8** %18, align 8
  %377 = icmp ne i8* %376, null
  br i1 %377, label %378, label %418

378:                                              ; preds = %375
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 %380, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = sub nsw i32 %386, %388
  %390 = sext i32 %389 to i64
  %391 = mul i64 %384, %390
  store i64 %391, i64* %26, align 8
  store i64 0, i64* %25, align 8
  br label %392

392:                                              ; preds = %414, %378
  %393 = load i32, i32* %14, align 4
  %394 = load i64, i64* %26, align 8
  %395 = trunc i64 %394 to i32
  %396 = icmp slt i32 %393, %395
  br i1 %396, label %397, label %417

397:                                              ; preds = %392
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %399 = load i32*, i32** %398, align 8
  %400 = load i64, i64* %25, align 8
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  %404 = load i64, i64* %25, align 8
  %405 = trunc i64 %404 to i32
  %406 = call i64 @getValue(i32 %405)
  %407 = icmp ne i64 %403, %406
  br i1 %407, label %408, label %413

408:                                              ; preds = %397
  %409 = load i64, i64* %25, align 8
  %410 = trunc i64 %409 to i32
  %411 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %410)
  %412 = call i32 @exit(i32 1) #3
  unreachable

413:                                              ; preds = %397
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %14, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %14, align 4
  br label %392

417:                                              ; preds = %392
  br label %418

418:                                              ; preds = %417, %375
  br label %419

419:                                              ; preds = %418, %289
  %420 = call i32 @free_tilec(%struct.TYPE_13__* %10)
  %421 = load i32*, i32** %13, align 8
  %422 = call i32 @opj_thread_pool_destroy(i32* %421)
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i32* @opj_thread_pool_create(i32) #1

declare dso_local i32 @init_tilec(%struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local double @opj_clock(...) #1

declare dso_local i32 @opj_dwt_decode(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @opj_dwt_encode(%struct.TYPE_13__*) #1

declare dso_local i64 @getValue(i32) #1

declare dso_local i32 @free_tilec(%struct.TYPE_13__*) #1

declare dso_local i32 @opj_thread_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
