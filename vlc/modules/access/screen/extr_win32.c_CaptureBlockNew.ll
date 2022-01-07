; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/screen/extr_win32.c_CaptureBlockNew.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/screen/extr_win32.c_CaptureBlockNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_17__, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.block_sys_t = type { i32, i64 }

@BI_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"screen-fragment-size\00", align 1
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot create bitmap\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot select bitmap\00", align 1
@CaptureBlockCallbacks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*)* @CaptureBlockNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CaptureBlockNew(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.block_sys_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %4, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %146

24:                                               ; preds = %1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 4, i32* %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 0, %42
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  store i32 1, i32* %51, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  store i32 %56, i32* %60, align 8
  %61 = load i32, i32* @BI_RGB, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 10
  store i32 %61, i32* %65, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 9
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 8
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 7
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 6
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = call i32 @var_CreateGetInteger(%struct.TYPE_15__* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %24
  %91 = load i32, i32* %10, align 4
  br label %98

92:                                               ; preds = %24
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  br label %98

98:                                               ; preds = %92, %90
  %99 = phi i32 [ %91, %90 ], [ %97, %92 ]
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %102, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  br label %119

115:                                              ; preds = %98
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  br label %119

119:                                              ; preds = %115, %109
  %120 = phi i32 [ %114, %109 ], [ %118, %115 ]
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sdiv i32 %127, %130
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @vlc_tick_rate_duration(i32 %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 5
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %119, %1
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 3
  %152 = load i32, i32* @DIB_RGB_COLORS, align 4
  %153 = call i64 @CreateDIBSection(i32 %149, %struct.TYPE_17__* %151, i32 %152, i8** %7, i32* null, i32 0)
  store i64 %153, i64* %9, align 8
  %154 = load i64, i64* %9, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i8*, i8** %7, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %156, %146
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %161 = call i32 @msg_Err(%struct.TYPE_15__* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %225

162:                                              ; preds = %156
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %9, align 8
  %172 = call i64 @SelectObject(i32 %170, i64 %171)
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  br label %181

175:                                              ; preds = %162
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i64, i64* %9, align 8
  %180 = call i64 @SelectObject(i32 %178, i64 %179)
  br label %181

181:                                              ; preds = %175, %167
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = call i32 @msg_Err(%struct.TYPE_15__* %187, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %225

189:                                              ; preds = %181
  %190 = call %struct.block_sys_t* @malloc(i32 16)
  store %struct.block_sys_t* %190, %struct.block_sys_t** %6, align 8
  %191 = icmp ne %struct.block_sys_t* %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  br label %225

193:                                              ; preds = %189
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %198, %203
  %205 = add nsw i32 %204, 31
  %206 = and i32 %205, -32
  %207 = ashr i32 %206, 3
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %208, %213
  store i32 %214, i32* %8, align 4
  %215 = load %struct.block_sys_t*, %struct.block_sys_t** %6, align 8
  %216 = getelementptr inbounds %struct.block_sys_t, %struct.block_sys_t* %215, i32 0, i32 0
  %217 = load i8*, i8** %7, align 8
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @block_Init(i32* %216, i32* @CaptureBlockCallbacks, i8* %217, i32 %218)
  %220 = load i64, i64* %9, align 8
  %221 = load %struct.block_sys_t*, %struct.block_sys_t** %6, align 8
  %222 = getelementptr inbounds %struct.block_sys_t, %struct.block_sys_t* %221, i32 0, i32 1
  store i64 %220, i64* %222, align 8
  %223 = load %struct.block_sys_t*, %struct.block_sys_t** %6, align 8
  %224 = getelementptr inbounds %struct.block_sys_t, %struct.block_sys_t* %223, i32 0, i32 0
  store i32* %224, i32** %2, align 8
  br label %232

225:                                              ; preds = %192, %186, %159
  %226 = load i64, i64* %9, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i64, i64* %9, align 8
  %230 = call i32 @DeleteObject(i64 %229)
  br label %231

231:                                              ; preds = %228, %225
  store i32* null, i32** %2, align 8
  br label %232

232:                                              ; preds = %231, %193
  %233 = load i32*, i32** %2, align 8
  ret i32* %233
}

declare dso_local i32 @var_CreateGetInteger(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @vlc_tick_rate_duration(i32) #1

declare dso_local i64 @CreateDIBSection(i32, %struct.TYPE_17__*, i32, i8**, i32*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local %struct.block_sys_t* @malloc(i32) #1

declare dso_local i32 @block_Init(i32*, i32*, i8*, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
