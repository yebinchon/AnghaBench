; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_free-space.c_load_free_space_cache.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_free-space.c_load_free_space_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i64 }
%struct.TYPE_31__ = type { i64, i32, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64, i64 }
%struct.TYPE_32__ = type { i64, i64, i64 }
%struct.TYPE_29__ = type { i64, i64, i32 }

@BTRFS_COMPAT_RO_FLAGS_FREE_SPACE_CACHE = common dso_local global i32 0, align 4
@BTRFS_COMPAT_RO_FLAGS_FREE_SPACE_CACHE_VALID = common dso_local global i32 0, align 4
@STATUS_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"load_stored_free_space_tree returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"load_stored_free_space_cache returned %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"generating free space cache for chunk %I64x\0A\00", align 1
@TYPE_EXTENT_ITEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"error - find_item returned %08x\0A\00", align 1
@TYPE_METADATA_ITEM = common dso_local global i64 0, align 8
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"(%I64x,%I64x)\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_30__*, %struct.TYPE_31__*, i32)* @load_free_space_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_free_space_cache(%struct.TYPE_30__* %0, %struct.TYPE_31__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__, align 8
  %9 = alloca %struct.TYPE_28__, align 8
  %10 = alloca %struct.TYPE_32__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BTRFS_COMPAT_RO_FLAGS_FREE_SPACE_CACHE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %3
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BTRFS_COMPAT_RO_FLAGS_FREE_SPACE_CACHE_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @load_stored_free_space_tree(%struct.TYPE_30__* %31, %struct.TYPE_31__* %32, i32 %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @NT_SUCCESS(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* @STATUS_NOT_FOUND, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* %14, align 8
  %44 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %14, align 8
  store i64 %45, i64* %4, align 8
  br label %302

46:                                               ; preds = %38, %30
  br label %78

47:                                               ; preds = %22, %3
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %47
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @load_stored_free_space_cache(%struct.TYPE_30__* %59, %struct.TYPE_31__* %60, i32 0, i32 %61)
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i32 @NT_SUCCESS(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @STATUS_NOT_FOUND, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64, i64* %14, align 8
  %72 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i64, i64* %14, align 8
  store i64 %73, i64* %4, align 8
  br label %302

74:                                               ; preds = %66, %58
  br label %77

75:                                               ; preds = %47
  %76 = load i64, i64* @STATUS_NOT_FOUND, align 8
  store i64 %76, i64* %14, align 8
  br label %77

77:                                               ; preds = %75, %74
  br label %78

78:                                               ; preds = %77, %46
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* @STATUS_NOT_FOUND, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %300

82:                                               ; preds = %78
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  store i64 %89, i64* %90, align 8
  %91 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 2
  store i64 %91, i64* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @find_item(%struct.TYPE_30__* %94, i32 %97, %struct.TYPE_28__* %8, %struct.TYPE_32__* %10, i32 0, i32 %98)
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i32 @NT_SUCCESS(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %82
  %104 = load i64, i64* %14, align 8
  %105 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %104)
  %106 = load i64, i64* %14, align 8
  store i64 %106, i64* %4, align 8
  br label %302

107:                                              ; preds = %82
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %11, align 8
  br label %111

111:                                              ; preds = %242, %107
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %119, %124
  %126 = icmp sge i64 %116, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %111
  br label %245

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %133, %136
  br i1 %137, label %138, label %232

138:                                              ; preds = %128
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %232

154:                                              ; preds = %146, %138
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %11, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %200

162:                                              ; preds = %154
  %163 = load i32, i32* @PagedPool, align 4
  %164 = load i32, i32* @ALLOC_TAG, align 4
  %165 = call %struct.TYPE_29__* @ExAllocatePoolWithTag(i32 %163, i32 24, i32 %164)
  store %struct.TYPE_29__* %165, %struct.TYPE_29__** %13, align 8
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %167 = icmp ne %struct.TYPE_29__* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %162
  %169 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %170, i64* %4, align 8
  br label %302

171:                                              ; preds = %162
  %172 = load i64, i64* %11, align 8
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %11, align 8
  %181 = sub nsw i64 %179, %180
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 2
  %188 = call i32 @InsertTailList(i32* %185, i32* %187)
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 1
  %192 = call i32 @order_space_entry(%struct.TYPE_29__* %189, i32* %191)
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %195, i64 %198)
  br label %200

200:                                              ; preds = %171, %154
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %200
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %213, %217
  store i64 %218, i64* %11, align 8
  br label %231

219:                                              ; preds = %200
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %224, %229
  store i64 %230, i64* %11, align 8
  br label %231

231:                                              ; preds = %219, %208
  br label %232

232:                                              ; preds = %231, %146, %128
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @find_next_item(%struct.TYPE_30__* %233, %struct.TYPE_28__* %8, %struct.TYPE_28__* %9, i32 0, i32 %234)
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %12, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = bitcast %struct.TYPE_28__* %8 to i8*
  %240 = bitcast %struct.TYPE_28__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %239, i8* align 8 %240, i64 8, i1 false)
  br label %241

241:                                              ; preds = %238, %232
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %12, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %111, label %245

245:                                              ; preds = %242, %127
  %246 = load i64, i64* %11, align 8
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %249, %254
  %256 = icmp slt i64 %246, %255
  br i1 %256, label %257, label %299

257:                                              ; preds = %245
  %258 = load i32, i32* @PagedPool, align 4
  %259 = load i32, i32* @ALLOC_TAG, align 4
  %260 = call %struct.TYPE_29__* @ExAllocatePoolWithTag(i32 %258, i32 24, i32 %259)
  store %struct.TYPE_29__* %260, %struct.TYPE_29__** %13, align 8
  %261 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %262 = icmp ne %struct.TYPE_29__* %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %257
  %264 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %265 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %265, i64* %4, align 8
  br label %302

266:                                              ; preds = %257
  %267 = load i64, i64* %11, align 8
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %268, i32 0, i32 1
  store i64 %267, i64* %269, align 8
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %272, %277
  %279 = load i64, i64* %11, align 8
  %280 = sub nsw i64 %278, %279
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 0
  store i64 %280, i64* %282, align 8
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %285, i32 0, i32 2
  %287 = call i32 @InsertTailList(i32* %284, i32* %286)
  %288 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 1
  %291 = call i32 @order_space_entry(%struct.TYPE_29__* %288, i32* %290)
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %294, i64 %297)
  br label %299

299:                                              ; preds = %266, %245
  br label %300

300:                                              ; preds = %299, %78
  %301 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %301, i64* %4, align 8
  br label %302

302:                                              ; preds = %300, %263, %168, %103, %70, %42
  %303 = load i64, i64* %4, align 8
  ret i64 %303
}

declare dso_local i64 @load_stored_free_space_tree(%struct.TYPE_30__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @load_stored_free_space_cache(%struct.TYPE_30__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i64 @find_item(%struct.TYPE_30__*, i32, %struct.TYPE_28__*, %struct.TYPE_32__*, i32, i32) #1

declare dso_local %struct.TYPE_29__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @order_space_entry(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @find_next_item(%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
