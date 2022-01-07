; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_find_extent_shared_data_refcount.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_find_extent_shared_data_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32 }

@BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA = common dso_local global i32 0, align 4
@TYPE_METADATA_ITEM = common dso_local global i64 0, align 8
@TYPE_EXTENT_ITEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"error - find_item returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"could not find address %I64x in extent tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"(%I64x,%x,%I64x): size was %u, expected at least %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"(%I64x,%x,%I64x): %x bytes left, expecting at least %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"(%I64x,%x,%I64x): unrecognized extent type %x\0A\00", align 1
@TYPE_SHARED_DATA_REF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"(%I64x,%x,%I64x) has size %u, not %u as expected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_extent_shared_data_refcount(%struct.TYPE_17__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  br label %35

33:                                               ; preds = %4
  %34 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i64 %36, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i32 -1, i32* %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @find_item(%struct.TYPE_17__* %39, i32 %42, %struct.TYPE_16__* %12, %struct.TYPE_19__* %11, i32 0, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @NT_SUCCESS(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %50)
  store i32 0, i32* %5, align 4
  br label %283

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %77, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69, %52
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  store i32 0, i32* %5, align 4
  br label %283

80:                                               ; preds = %69, %61
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %85, 8
  br i1 %86, label %87, label %108

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %92, i64 %97, i32 %102, i32 %106, i64 8)
  store i32 0, i32* %5, align 4
  br label %283

108:                                              ; preds = %80
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %113, %struct.TYPE_20__** %14, align 8
  store i64 0, i64* %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = sub i64 %118, 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %15, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i64 1
  %123 = bitcast %struct.TYPE_20__* %122 to i64*
  store i64* %123, i64** %16, align 8
  br label %124

124:                                              ; preds = %199, %108
  %125 = load i32, i32* %15, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %211

127:                                              ; preds = %124
  %128 = load i64*, i64** %16, align 8
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %17, align 8
  %130 = load i64, i64* %17, align 8
  %131 = call i32 @get_extent_data_len(i64 %130)
  store i32 %131, i32* %18, align 4
  %132 = load i64, i64* %17, align 8
  %133 = load i64*, i64** %16, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 8
  %135 = call i64 @get_extent_data_refcount(i64 %132, i64* %134)
  store i64 %135, i64* %19, align 8
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %127
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %18, align 4
  %159 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %146, i64 %151, i32 %156, i32 %157, i32 %158)
  store i32 0, i32* %5, align 4
  br label %283

160:                                              ; preds = %127
  %161 = load i32, i32* %18, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i64, i64* %17, align 8
  %180 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %168, i64 %173, i32 %178, i64 %179)
  store i32 0, i32* %5, align 4
  br label %283

181:                                              ; preds = %160
  %182 = load i64, i64* %17, align 8
  %183 = load i64, i64* @TYPE_SHARED_DATA_REF, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %181
  %186 = load i64*, i64** %16, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 8
  %188 = bitcast i64* %187 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %188, %struct.TYPE_18__** %20, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %8, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %185
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  store i32 %197, i32* %5, align 4
  br label %283

198:                                              ; preds = %185
  br label %199

199:                                              ; preds = %198, %181
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %15, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = add i64 8, %204
  %206 = load i64*, i64** %16, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 %205
  store i64* %207, i64** %16, align 8
  %208 = load i64, i64* %19, align 8
  %209 = load i64, i64* %13, align 8
  %210 = add nsw i64 %209, %208
  store i64 %210, i64* %13, align 8
  br label %124

211:                                              ; preds = %124
  %212 = load i64, i64* %13, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %212, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  store i32 0, i32* %5, align 4
  br label %283

218:                                              ; preds = %211
  %219 = load i64, i64* %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i64 %219, i64* %220, align 8
  %221 = load i64, i64* @TYPE_SHARED_DATA_REF, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i64 %221, i64* %222, align 8
  %223 = load i64, i64* %8, align 8
  %224 = trunc i64 %223 to i32
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i32 %224, i32* %225, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @find_item(%struct.TYPE_17__* %226, i32 %229, %struct.TYPE_16__* %12, %struct.TYPE_19__* %11, i32 0, i32 %230)
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @NT_SUCCESS(i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %218
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %237)
  store i32 0, i32* %5, align 4
  br label %283

239:                                              ; preds = %218
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 2
  %243 = call i32 @keycmp(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %11, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %282, label %245

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = icmp ult i64 %250, 4
  br i1 %251, label %252, label %273

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %257, i64 %262, i32 %267, i32 %271, i64 4)
  br label %281

273:                                              ; preds = %245
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = inttoptr i64 %277 to i32*
  store i32* %278, i32** %21, align 8
  %279 = load i32*, i32** %21, align 8
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %5, align 4
  br label %283

281:                                              ; preds = %252
  br label %282

282:                                              ; preds = %281, %239
  store i32 0, i32* %5, align 4
  br label %283

283:                                              ; preds = %282, %273, %235, %217, %194, %163, %141, %87, %77, %48
  %284 = load i32, i32* %5, align 4
  ret i32 %284
}

declare dso_local i32 @find_item(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @get_extent_data_len(i64) #1

declare dso_local i64 @get_extent_data_refcount(i64, i64*) #1

declare dso_local i32 @keycmp(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
