; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_find_extent_data_refcount.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_find_extent_data_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }

@TYPE_EXTENT_ITEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"error - find_item returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"could not find address %I64x in extent tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"extent %I64x had size %I64x, not %I64x as expected\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"(%I64x,%x,%I64x): %x bytes left, expecting at least %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"(%I64x,%x,%I64x): unrecognized extent type %x\0A\00", align 1
@TYPE_EXTENT_DATA_REF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"(%I64x,%x,%I64x) has size %u, not %u as expected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i64, i64, i64, i64, i64, i32)* @find_extent_data_refcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_extent_data_refcount(%struct.TYPE_14__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__, align 8
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  store i32 -1, i32* %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @find_item(%struct.TYPE_14__* %32, i32 %35, %struct.TYPE_13__* %18, %struct.TYPE_15__* %17, i32 0, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @NT_SUCCESS(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %7
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %43)
  store i64 0, i64* %8, align 8
  br label %267

45:                                               ; preds = %7
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54, %45
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  store i64 0, i64* %8, align 8
  br label %267

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %75, i64 %80, i64 %81)
  store i64 0, i64* %8, align 8
  br label %267

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp uge i64 %88, 4
  br i1 %89, label %90, label %199

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = sub i64 %100, 4
  store i64 %101, i64* %20, align 8
  %102 = load i32*, i32** %19, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = bitcast i32* %103 to i64*
  store i64* %104, i64** %21, align 8
  br label %105

105:                                              ; preds = %190, %90
  %106 = load i64, i64* %20, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %198

108:                                              ; preds = %105
  %109 = load i64*, i64** %21, align 8
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %22, align 8
  %111 = load i64, i64* %22, align 8
  %112 = call i64 @get_extent_data_len(i64 %111)
  store i64 %112, i64* %23, align 8
  %113 = load i64, i64* %22, align 8
  %114 = load i64*, i64** %21, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 8
  %116 = call i64 @get_extent_data_refcount(i64 %113, i64* %115)
  store i64 %116, i64* %24, align 8
  %117 = load i64, i64* %20, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %20, align 8
  %119 = load i64, i64* %23, align 8
  %120 = load i64, i64* %20, align 8
  %121 = icmp sgt i64 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %108
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %20, align 8
  %139 = load i64, i64* %23, align 8
  %140 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %127, i64 %132, i64 %137, i64 %138, i64 %139)
  store i64 0, i64* %8, align 8
  br label %267

141:                                              ; preds = %108
  %142 = load i64, i64* %23, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %22, align 8
  %161 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %149, i64 %154, i64 %159, i64 %160)
  store i64 0, i64* %8, align 8
  br label %267

162:                                              ; preds = %141
  %163 = load i64, i64* %22, align 8
  %164 = load i64, i64* @TYPE_EXTENT_DATA_REF, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %162
  %167 = load i64*, i64** %21, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 8
  %169 = bitcast i64* %168 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %169, %struct.TYPE_16__** %25, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %12, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %166
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %13, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %175
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %14, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i64, i64* %24, align 8
  store i64 %188, i64* %8, align 8
  br label %267

189:                                              ; preds = %181, %175, %166
  br label %190

190:                                              ; preds = %189, %162
  %191 = load i64, i64* %23, align 8
  %192 = load i64, i64* %20, align 8
  %193 = sub nsw i64 %192, %191
  store i64 %193, i64* %20, align 8
  %194 = load i64, i64* %23, align 8
  %195 = add i64 8, %194
  %196 = load i64*, i64** %21, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 %195
  store i64* %197, i64** %21, align 8
  br label %105

198:                                              ; preds = %105
  br label %199

199:                                              ; preds = %198, %83
  %200 = load i64, i64* %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i64 %200, i64* %201, align 8
  %202 = load i64, i64* @TYPE_EXTENT_DATA_REF, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  store i64 %202, i64* %203, align 8
  %204 = load i64, i64* %12, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* %14, align 8
  %207 = call i32 @get_extent_data_ref_hash2(i64 %204, i64 %205, i64 %206)
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  store i32 %207, i32* %208, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %15, align 4
  %214 = call i32 @find_item(%struct.TYPE_14__* %209, i32 %212, %struct.TYPE_13__* %18, %struct.TYPE_15__* %17, i32 0, i32 %213)
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* %16, align 4
  %216 = call i32 @NT_SUCCESS(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %199
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %220)
  store i64 0, i64* %8, align 8
  br label %267

222:                                              ; preds = %199
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 2
  %226 = call i32 @keycmp(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %17, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %266, label %228

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = icmp ult i64 %233, 32
  br i1 %234, label %235, label %256

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %240, i64 %245, i64 %250, i32 %254, i64 32)
  br label %265

256:                                              ; preds = %228
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %261, %struct.TYPE_16__** %26, align 8
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %8, align 8
  br label %267

265:                                              ; preds = %235
  br label %266

266:                                              ; preds = %265, %222
  store i64 0, i64* %8, align 8
  br label %267

267:                                              ; preds = %266, %256, %218, %187, %144, %122, %74, %63, %41
  %268 = load i64, i64* %8, align 8
  ret i64 %268
}

declare dso_local i32 @find_item(%struct.TYPE_14__*, i32, %struct.TYPE_13__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @get_extent_data_len(i64) #1

declare dso_local i64 @get_extent_data_refcount(i64, i64*) #1

declare dso_local i32 @get_extent_data_ref_hash2(i64, i64, i64) #1

declare dso_local i32 @keycmp(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
