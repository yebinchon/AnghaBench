; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_ungif.c_DGifGetImageDesc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_ungif.c_DGifGetImageDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__, %struct.TYPE_19__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32, i64, i64, %struct.TYPE_16__*, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32*, %struct.TYPE_18__ }
%struct.TYPE_17__ = type { i32*, i64 }
%struct.TYPE_21__ = type { i64 }

@GIF_ERROR = common dso_local global i64 0, align 8
@GIF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @DGifGetImageDesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DGifGetImageDesc(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %8, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 5
  %17 = call i64 @DGifGetWord(%struct.TYPE_20__* %13, i64* %16)
  %18 = load i64, i64* @GIF_ERROR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %44, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 4
  %25 = call i64 @DGifGetWord(%struct.TYPE_20__* %21, i64* %24)
  %26 = load i64, i64* @GIF_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %44, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = call i64 @DGifGetWord(%struct.TYPE_20__* %29, i64* %32)
  %34 = load i64, i64* @GIF_ERROR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = call i64 @DGifGetWord(%struct.TYPE_20__* %37, i64* %40)
  %42 = load i64, i64* @GIF_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36, %28, %20, %1
  %45 = load i64, i64* @GIF_ERROR, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %303

47:                                               ; preds = %36
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %50 = call i32 @READ(%struct.TYPE_20__* %48, i32* %49, i32 1)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* @GIF_ERROR, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %303

55:                                               ; preds = %47
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 7
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 32
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 64
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %169

75:                                               ; preds = %55
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = call i32 @FreeMapObject(%struct.TYPE_16__* %79)
  %81 = load i32, i32* %5, align 4
  %82 = shl i32 1, %81
  %83 = call i8* @MakeMapObject(i32 %82, %struct.TYPE_15__* null)
  %84 = bitcast i8* %83 to %struct.TYPE_16__*
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = icmp eq %struct.TYPE_16__* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %75
  %94 = load i64, i64* @GIF_ERROR, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %2, align 4
  br label %303

96:                                               ; preds = %75
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %165, %96
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %104, %110
  br i1 %111, label %112, label %168

112:                                              ; preds = %103
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %115 = call i32 @READ(%struct.TYPE_20__* %113, i32* %114, i32 3)
  %116 = icmp ne i32 %115, 3
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = call i32 @FreeMapObject(%struct.TYPE_16__* %121)
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %125, align 8
  %126 = load i64, i64* @GIF_ERROR, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %2, align 4
  br label %303

128:                                              ; preds = %112
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  store i32 %130, i32* %140, align 4
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  store i32 %142, i32* %152, align 4
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  store i32 %154, i32* %164, align 4
  br label %165

165:                                              ; preds = %128
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %103

168:                                              ; preds = %103
  br label %185

169:                                              ; preds = %55
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = icmp ne %struct.TYPE_16__* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %169
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = call i32 @FreeMapObject(%struct.TYPE_16__* %179)
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %183, align 8
  br label %184

184:                                              ; preds = %175, %169
  br label %185

185:                                              ; preds = %184, %168
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %187, align 8
  %189 = icmp ne %struct.TYPE_19__* %188, null
  br i1 %189, label %190, label %209

190:                                              ; preds = %185
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %192, align 8
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = mul i64 72, %198
  %200 = trunc i64 %199 to i32
  %201 = call %struct.TYPE_19__* @ungif_realloc(%struct.TYPE_19__* %193, i32 %200)
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 2
  store %struct.TYPE_19__* %201, %struct.TYPE_19__** %203, align 8
  %204 = icmp eq %struct.TYPE_19__* %201, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %190
  %206 = load i64, i64* @GIF_ERROR, align 8
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %2, align 4
  br label %303

208:                                              ; preds = %190
  br label %218

209:                                              ; preds = %185
  %210 = call %struct.TYPE_19__* @ungif_alloc(i32 72)
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 2
  store %struct.TYPE_19__* %210, %struct.TYPE_19__** %212, align 8
  %213 = icmp eq %struct.TYPE_19__* %210, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i64, i64* @GIF_ERROR, align 8
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %2, align 4
  br label %303

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %217, %208
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %220, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i64 %225
  store %struct.TYPE_19__* %226, %struct.TYPE_19__** %9, align 8
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 1
  %231 = bitcast %struct.TYPE_18__* %228 to i8*
  %232 = bitcast %struct.TYPE_18__* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %231, i8* align 8 %232, i64 48, i1 false)
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %235, align 8
  %237 = icmp ne %struct.TYPE_16__* %236, null
  br i1 %237, label %238, label %276

238:                                              ; preds = %218
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %249, align 8
  %251 = call i8* @MakeMapObject(i32 %244, %struct.TYPE_15__* %250)
  %252 = bitcast i8* %251 to %struct.TYPE_16__*
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 3
  store %struct.TYPE_16__* %252, %struct.TYPE_16__** %255, align 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 3
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %258, align 8
  %260 = icmp eq %struct.TYPE_16__* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %238
  %262 = load i64, i64* @GIF_ERROR, align 8
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %2, align 4
  br label %303

264:                                              ; preds = %238
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 0
  store i32 %270, i32* %275, align 8
  br label %276

276:                                              ; preds = %264, %218
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 1
  store i32* null, i32** %278, align 8
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  store i64 0, i64* %281, align 8
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 0
  store i32* null, i32** %284, align 8
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %286, align 8
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = mul nsw i64 %292, %296
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 0
  store i64 %297, i64* %299, align 8
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %301 = call i32 @DGifSetupDecompress(%struct.TYPE_20__* %300)
  %302 = load i32, i32* @GIF_OK, align 4
  store i32 %302, i32* %2, align 4
  br label %303

303:                                              ; preds = %276, %261, %214, %205, %117, %93, %52, %44
  %304 = load i32, i32* %2, align 4
  ret i32 %304
}

declare dso_local i64 @DGifGetWord(%struct.TYPE_20__*, i64*) #1

declare dso_local i32 @READ(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @FreeMapObject(%struct.TYPE_16__*) #1

declare dso_local i8* @MakeMapObject(i32, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_19__* @ungif_realloc(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_19__* @ungif_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DGifSetupDecompress(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
