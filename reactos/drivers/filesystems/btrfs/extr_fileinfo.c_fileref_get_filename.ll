; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_fileref_get_filename.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_fileref_get_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i8*, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fileref_get_filename(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = icmp eq %struct.TYPE_13__* %16, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp uge i64 %29, 4
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 92, i8* %35, align 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  store i32 4, i32* %37, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32*, i32** %8, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %31
  %43 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %43, i32* %5, align 4
  br label %285

44:                                               ; preds = %25
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32*, i32** %9, align 8
  store i32 4, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  store i32 %52, i32* %5, align 4
  br label %285

53:                                               ; preds = %4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %10, align 8
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %244, %53
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %60, label %260

60:                                               ; preds = %55
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %66, i32* %5, align 4
  br label %285

67:                                               ; preds = %60
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add i64 %78, %82
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = icmp ugt i64 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %70
  store i32 1, i32* %14, align 4
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %90, %67
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %97, %103
  %105 = sext i32 %104 to i64
  %106 = sub i64 %105, 4
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %15, align 4
  br label %112

108:                                              ; preds = %91
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %108, %94
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, 4
  %128 = icmp ugt i64 %119, %127
  br i1 %128, label %129, label %163

129:                                              ; preds = %115, %112
  %130 = load i32, i32* %15, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %129
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = udiv i64 %142, 4
  %144 = add i64 %143, 1
  %145 = getelementptr inbounds i8, i8* %135, i64 %144
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @RtlMoveMemory(i8* %145, i8* %148, i32 %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 %157, 4
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %132, %129, %115
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = icmp uge i64 %167, 4
  br i1 %168, label %169, label %244

169:                                              ; preds = %163
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 58, i32 92
  %178 = trunc i32 %177 to i8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 0
  store i8 %178, i8* %182, align 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = add i64 %186, 4
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %184, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = icmp ugt i64 %192, 4
  br i1 %193, label %194, label %229

194:                                              ; preds = %169
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = sub i64 %214, 4
  %216 = trunc i64 %215 to i32
  %217 = call i32 @min(i32 %210, i32 %216)
  %218 = call i32 @RtlCopyMemory(i8* %198, i32 %204, i32 %217)
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %194, %169
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp sgt i32 %232, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %229
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  store i32 1, i32* %14, align 4
  br label %243

243:                                              ; preds = %237, %229
  br label %244

244:                                              ; preds = %243, %163
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = add i64 4, %251
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = add i64 %254, %252
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %12, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %258, align 8
  store %struct.TYPE_13__* %259, %struct.TYPE_13__** %10, align 8
  br label %55

260:                                              ; preds = %55
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = add i64 %262, 4
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %13, align 4
  %265 = load i32, i32* %14, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %260
  %268 = load i32*, i32** %9, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32, i32* %12, align 4
  %272 = load i32*, i32** %9, align 8
  store i32 %271, i32* %272, align 4
  br label %273

273:                                              ; preds = %270, %267
  %274 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  store i32 %274, i32* %11, align 4
  br label %283

275:                                              ; preds = %260
  %276 = load i32*, i32** %8, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32, i32* %13, align 4
  %280 = load i32*, i32** %8, align 8
  store i32 %279, i32* %280, align 4
  br label %281

281:                                              ; preds = %278, %275
  %282 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %282, i32* %11, align 4
  br label %283

283:                                              ; preds = %281, %273
  %284 = load i32, i32* %11, align 4
  store i32 %284, i32* %5, align 4
  br label %285

285:                                              ; preds = %283, %65, %49, %42
  %286 = load i32, i32* %5, align 4
  ret i32 %286
}

declare dso_local i32 @RtlMoveMemory(i8*, i8*, i32) #1

declare dso_local i32 @RtlCopyMemory(i8*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
