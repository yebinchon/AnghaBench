; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/testzlib/extr_testzlib.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/testzlib/extr_testzlib.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i8*, i64, i64, i32, i64 }

@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"run TestZlib <File> [BlockSizeCompress] [BlockSizeUncompress] [compres. level]\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"error reading %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"file %s read, %u bytes\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"total compress size = %u, in %u step\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"time = %u msec = %f sec\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"defcpr time QP = %u msec = %f sec\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"defcpr result rdtsc = %I64x\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"total uncompress size = %u, in %u step\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"uncpr  time QP = %u msec = %f sec\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"uncpr  result rdtsc = %I64x\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"compare ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.TYPE_16__, align 4
  %21 = alloca %struct.TYPE_16__, align 4
  %22 = alloca %struct.TYPE_16__, align 4
  %23 = alloca %struct.TYPE_15__, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_16__, align 4
  %30 = alloca %struct.TYPE_15__, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca %struct.TYPE_16__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 32768, i32* %6, align 4
  store i32 32768, i32* %7, align 4
  %37 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  store i32 %37, i32* %8, align 4
  store i64 0, i64* %13, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp sle i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %277

42:                                               ; preds = %2
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @ReadFileMemory(i8* %45, i64* %9, i8** %10)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  store i32 1, i32* %3, align 4
  br label %277

53:                                               ; preds = %42
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %56, i64 %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 3
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @atol(i8* %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %4, align 4
  %69 = icmp sge i32 %68, 4
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @atol(i8* %73)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %4, align 4
  %77 = icmp sge i32 %76, 5
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 4
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @atol(i8* %81)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sdiv i64 %85, 16
  %87 = add nsw i64 %84, %86
  %88 = add nsw i64 %87, 512
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = call i64 @malloc(i64 %93)
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %14, align 8
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @BeginCountPerfCounter(%struct.TYPE_16__* %20, i32 %96)
  %98 = call double (...) @GetTickCount()
  store double %98, double* %18, align 8
  %99 = call i32 @BeginCountRdtsc(%struct.TYPE_16__* %21)
  %100 = load i32, i32* @Z_OK, align 4
  store i32 %100, i32* %24, align 4
  %101 = load i64, i64* %9, align 8
  store i64 %101, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i32 0, i32* %27, align 4
  %102 = call i32 @memset(%struct.TYPE_15__* %23, i32 0, i32 48)
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @deflateInit(%struct.TYPE_15__* %23, i32 %103)
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  br label %109

109:                                              ; preds = %144, %83
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %28, align 8
  %112 = load i64, i64* %25, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i8* @min(i64 %112, i32 %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  store i64 %115, i64* %116, align 8
  %117 = load i32, i32* %6, align 4
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 4
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %25, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %109
  %124 = load i32, i32* @Z_FINISH, align 4
  br label %127

125:                                              ; preds = %109
  %126 = load i32, i32* @Z_SYNC_FLUSH, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = call i32 @deflate(%struct.TYPE_15__* %23, i32 %128)
  store i32 %129, i32* %24, align 4
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %28, align 8
  %133 = sub nsw i64 %131, %132
  %134 = load i64, i64* %26, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %26, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %28, align 8
  %139 = sub nsw i64 %137, %138
  %140 = load i64, i64* %25, align 8
  %141 = sub nsw i64 %140, %139
  store i64 %141, i64* %25, align 8
  %142 = load i32, i32* %27, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %27, align 4
  br label %144

144:                                              ; preds = %127
  %145 = load i32, i32* %24, align 4
  %146 = load i32, i32* @Z_OK, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %109, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %16, align 8
  %151 = call i32 @deflateEnd(%struct.TYPE_15__* %23)
  %152 = call double (...) @GetTickCount()
  %153 = load double, double* %18, align 8
  %154 = fsub double %152, %153
  store double %154, double* %18, align 8
  %155 = load i32, i32* @TRUE, align 4
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call double @GetMsecSincePerfCounter(i32 %157, i32 %155)
  store double %158, double* %19, align 8
  %159 = load i32, i32* @TRUE, align 4
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @GetResRdtsc(i32 %161, i32 %159)
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i32 %162, i32* %163, align 4
  %164 = bitcast %struct.TYPE_16__* %22 to i8*
  %165 = bitcast %struct.TYPE_16__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 4 %165, i64 4, i1 false)
  %166 = load i64, i64* %16, align 8
  %167 = load i32, i32* %27, align 4
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %166, i32 %167)
  %169 = load double, double* %18, align 8
  %170 = load double, double* %18, align 8
  %171 = fdiv double %170, 1.000000e+03
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), double %169, double %171)
  %173 = load double, double* %19, align 8
  %174 = load double, double* %19, align 8
  %175 = fdiv double %174, 1.000000e+03
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), double %173, double %175)
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %178)
  %180 = load i8*, i8** %14, align 8
  %181 = load i64, i64* %16, align 8
  %182 = call i64 @realloc(i8* %180, i64 %181)
  %183 = inttoptr i64 %182 to i8*
  store i8* %183, i8** %14, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = call i64 @malloc(i64 %187)
  %189 = inttoptr i64 %188 to i8*
  store i8* %189, i8** %15, align 8
  %190 = load i32, i32* @TRUE, align 4
  %191 = call i32 @BeginCountPerfCounter(%struct.TYPE_16__* %20, i32 %190)
  %192 = call double (...) @GetTickCount()
  store double %192, double* %18, align 8
  %193 = call i32 @BeginCountRdtsc(%struct.TYPE_16__* %21)
  %194 = load i32, i32* @Z_OK, align 4
  store i32 %194, i32* %31, align 4
  %195 = load i64, i64* %16, align 8
  store i64 %195, i64* %32, align 8
  store i64 0, i64* %33, align 8
  store i32 0, i32* %34, align 4
  %196 = call i32 @memset(%struct.TYPE_15__* %30, i32 0, i32 48)
  %197 = call i32 @inflateInit(%struct.TYPE_15__* %30)
  %198 = load i8*, i8** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i8* %198, i8** %199, align 8
  %200 = load i8*, i8** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store i8* %200, i8** %201, align 8
  br label %202

202:                                              ; preds = %228, %148
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %35, align 8
  %205 = load i64, i64* %32, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call i8* @min(i64 %205, i32 %206)
  %208 = ptrtoint i8* %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 3
  store i64 %208, i64* %209, align 8
  %210 = load i32, i32* %7, align 4
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 4
  store i32 %210, i32* %211, align 8
  %212 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %213 = call i32 @inflate(%struct.TYPE_15__* %30, i32 %212)
  store i32 %213, i32* %31, align 4
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %35, align 8
  %217 = sub nsw i64 %215, %216
  %218 = load i64, i64* %33, align 8
  %219 = add nsw i64 %218, %217
  store i64 %219, i64* %33, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %35, align 8
  %223 = sub nsw i64 %221, %222
  %224 = load i64, i64* %32, align 8
  %225 = sub nsw i64 %224, %223
  store i64 %225, i64* %32, align 8
  %226 = load i32, i32* %34, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %34, align 4
  br label %228

228:                                              ; preds = %202
  %229 = load i32, i32* %31, align 4
  %230 = load i32, i32* @Z_OK, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %202, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %17, align 8
  %235 = call i32 @inflateEnd(%struct.TYPE_15__* %30)
  %236 = call double (...) @GetTickCount()
  %237 = load double, double* %18, align 8
  %238 = fsub double %236, %237
  store double %238, double* %18, align 8
  %239 = load i32, i32* @TRUE, align 4
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call double @GetMsecSincePerfCounter(i32 %241, i32 %239)
  store double %242, double* %19, align 8
  %243 = load i32, i32* @TRUE, align 4
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @GetResRdtsc(i32 %245, i32 %243)
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  store i32 %246, i32* %247, align 4
  %248 = bitcast %struct.TYPE_16__* %22 to i8*
  %249 = bitcast %struct.TYPE_16__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %248, i8* align 4 %249, i64 4, i1 false)
  %250 = load i64, i64* %17, align 8
  %251 = load i32, i32* %34, align 4
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 %250, i32 %251)
  %253 = load double, double* %18, align 8
  %254 = load double, double* %18, align 8
  %255 = fdiv double %254, 1.000000e+03
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), double %253, double %255)
  %257 = load double, double* %19, align 8
  %258 = load double, double* %19, align 8
  %259 = fdiv double %258, 1.000000e+03
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), double %257, double %259)
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %262)
  %264 = load i64, i64* %17, align 8
  %265 = load i64, i64* %9, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %276

267:                                              ; preds = %232
  %268 = load i8*, i8** %10, align 8
  %269 = load i8*, i8** %15, align 8
  %270 = load i64, i64* %9, align 8
  %271 = call i64 @memcmp(i8* %268, i8* %269, i64 %270)
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %275

275:                                              ; preds = %273, %267
  br label %276

276:                                              ; preds = %275, %232
  store i32 0, i32* %3, align 4
  br label %277

277:                                              ; preds = %276, %48, %40
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @ReadFileMemory(i8*, i64*, i8**) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @BeginCountPerfCounter(%struct.TYPE_16__*, i32) #1

declare dso_local double @GetTickCount(...) #1

declare dso_local i32 @BeginCountRdtsc(%struct.TYPE_16__*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @deflateInit(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @min(i64, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_15__*) #1

declare dso_local double @GetMsecSincePerfCounter(i32, i32) #1

declare dso_local i32 @GetResRdtsc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @realloc(i8*, i64) #1

declare dso_local i32 @inflateInit(%struct.TYPE_15__*) #1

declare dso_local i32 @inflate(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_15__*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
