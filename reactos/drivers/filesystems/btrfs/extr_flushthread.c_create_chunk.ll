; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_create_chunk.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_create_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_36__ = type { i32, i32, i32, i32, i32, %struct.TYPE_27__**, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i64, i64 }
%struct.TYPE_37__ = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_38__ = type { i32 }

@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@TYPE_CHUNK_ITEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"insert_tree_item failed\0A\00", align 1
@BLOCK_FLAG_SYSTEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"add_to_bootstrap returned %08x\0A\00", align 1
@TYPE_BLOCK_GROUP_ITEM = common dso_local global i32 0, align 4
@BLOCK_FLAG_RAID0 = common dso_local global i32 0, align 4
@BLOCK_FLAG_RAID10 = common dso_local global i32 0, align 4
@BLOCK_FLAG_RAID5 = common dso_local global i32 0, align 4
@BLOCK_FLAG_RAID6 = common dso_local global i32 0, align 4
@TYPE_DEV_EXTENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"insert_tree_item returned %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"update_dev_item returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, %struct.TYPE_36__*, i32)* @create_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_chunk(%struct.TYPE_35__* %0, %struct.TYPE_36__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca %struct.TYPE_38__*, align 8
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_37__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @PagedPool, align 4
  %16 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ALLOC_TAG, align 4
  %20 = call %struct.TYPE_37__* @ExAllocatePoolWithTag(i32 %15, i32 %18, i32 %19)
  store %struct.TYPE_37__* %20, %struct.TYPE_37__** %8, align 8
  %21 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %22 = icmp ne %struct.TYPE_37__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %25, i32* %4, align 4
  br label %338

26:                                               ; preds = %3
  %27 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %28 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @RtlCopyMemory(%struct.TYPE_37__* %27, %struct.TYPE_30__* %30, i32 %33)
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %36 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  %39 = load i32, i32* @TYPE_CHUNK_ITEM, align 4
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @insert_tree_item(%struct.TYPE_35__* %35, %struct.TYPE_28__* %38, i32 256, i32 %39, i32 %42, %struct.TYPE_37__* %43, i32 %46, i32* null, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @NT_SUCCESS(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %26
  %53 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %55 = call i32 @ExFreePool(%struct.TYPE_37__* %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %4, align 4
  br label %338

57:                                               ; preds = %26
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 6
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @BLOCK_FLAG_SYSTEM, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %57
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %68 = load i32, i32* @TYPE_CHUNK_ITEM, align 4
  %69 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @add_to_bootstrap(%struct.TYPE_35__* %67, i32 256, i32 %68, i32 %71, %struct.TYPE_37__* %72, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @NT_SUCCESS(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %13, align 4
  %82 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %4, align 4
  br label %338

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i32, i32* @PagedPool, align 4
  %87 = load i32, i32* @ALLOC_TAG, align 4
  %88 = call %struct.TYPE_37__* @ExAllocatePoolWithTag(i32 %86, i32 40, i32 %87)
  store %struct.TYPE_37__* %88, %struct.TYPE_37__** %10, align 8
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %90 = icmp ne %struct.TYPE_37__* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %93, i32* %4, align 4
  br label %338

94:                                               ; preds = %85
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %100, i32 0, i32 0
  store i32 256, i32* %101, align 8
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 6
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %110 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %111, align 8
  %113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @TYPE_BLOCK_GROUP_ITEM, align 4
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 6
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @insert_tree_item(%struct.TYPE_35__* %109, %struct.TYPE_28__* %112, i32 %115, i32 %116, i32 %121, %struct.TYPE_37__* %122, i32 40, i32* null, i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @NT_SUCCESS(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %94
  %129 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %131 = call i32 @ExFreePool(%struct.TYPE_37__* %130)
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %4, align 4
  br label %338

133:                                              ; preds = %94
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @BLOCK_FLAG_RAID0, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %143, i32 0, i32 6
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %12, align 8
  br label %205

148:                                              ; preds = %133
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %149, i32 0, i32 6
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @BLOCK_FLAG_RAID10, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %148
  %158 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %163, i32 0, i32 6
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = udiv i64 %162, %167
  store i64 %168, i64* %12, align 8
  br label %204

169:                                              ; preds = %148
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 6
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @BLOCK_FLAG_RAID5, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %169
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = sub i64 %183, 1
  store i64 %184, i64* %12, align 8
  br label %203

185:                                              ; preds = %169
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @BLOCK_FLAG_RAID6, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %185
  %195 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %195, i32 0, i32 6
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = sub i64 %199, 2
  store i64 %200, i64* %12, align 8
  br label %202

201:                                              ; preds = %185
  store i64 1, i64* %12, align 8
  br label %202

202:                                              ; preds = %201, %194
  br label %203

203:                                              ; preds = %202, %178
  br label %204

204:                                              ; preds = %203, %157
  br label %205

205:                                              ; preds = %204, %142
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 6
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i64 1
  %210 = bitcast %struct.TYPE_30__* %209 to %struct.TYPE_38__*
  store %struct.TYPE_38__* %210, %struct.TYPE_38__** %9, align 8
  store i64 0, i64* %11, align 8
  br label %211

211:                                              ; preds = %313, %205
  %212 = load i64, i64* %11, align 8
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 6
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ult i64 %212, %217
  br i1 %218, label %219, label %316

219:                                              ; preds = %211
  %220 = load i32, i32* @PagedPool, align 4
  %221 = load i32, i32* @ALLOC_TAG, align 4
  %222 = call %struct.TYPE_37__* @ExAllocatePoolWithTag(i32 %220, i32 40, i32 %221)
  store %struct.TYPE_37__* %222, %struct.TYPE_37__** %14, align 8
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %224 = icmp ne %struct.TYPE_37__* %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %219
  %226 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %227 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %227, i32* %4, align 4
  br label %338

228:                                              ; preds = %219
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %234, i32 0, i32 6
  store i32 %233, i32* %235, align 4
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 2
  store i32 256, i32* %237, align 8
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %241, i32 0, i32 3
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 6
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* %12, align 8
  %250 = udiv i64 %248, %249
  %251 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %251, i32 0, i32 4
  store i64 %250, i64* %252, align 8
  %253 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_31__*, %struct.TYPE_31__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %266, align 8
  %268 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %268, i32 0, i32 5
  %270 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %269, align 8
  %271 = load i64, i64* %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %270, i64 %271
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @TYPE_DEV_EXTENT, align 4
  %278 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %279 = load i64, i64* %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %284 = load i32, i32* %7, align 4
  %285 = call i32 @insert_tree_item(%struct.TYPE_35__* %264, %struct.TYPE_28__* %267, i32 %276, i32 %277, i32 %282, %struct.TYPE_37__* %283, i32 40, i32* null, i32 %284)
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @NT_SUCCESS(i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %228
  %290 = load i32, i32* %13, align 4
  %291 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %290)
  %292 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %293 = call i32 @ExFreePool(%struct.TYPE_37__* %292)
  %294 = load i32, i32* %13, align 4
  store i32 %294, i32* %4, align 4
  br label %338

295:                                              ; preds = %228
  %296 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %297 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %297, i32 0, i32 5
  %299 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %298, align 8
  %300 = load i64, i64* %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %299, i64 %300
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %301, align 8
  %303 = load i32, i32* %7, align 4
  %304 = call i32 @update_dev_item(%struct.TYPE_35__* %296, %struct.TYPE_27__* %302, i32 %303)
  store i32 %304, i32* %13, align 4
  %305 = load i32, i32* %13, align 4
  %306 = call i32 @NT_SUCCESS(i32 %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %312, label %308

308:                                              ; preds = %295
  %309 = load i32, i32* %13, align 4
  %310 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %309)
  %311 = load i32, i32* %13, align 4
  store i32 %311, i32* %4, align 4
  br label %338

312:                                              ; preds = %295
  br label %313

313:                                              ; preds = %312
  %314 = load i64, i64* %11, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %11, align 8
  br label %211

316:                                              ; preds = %211
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 2
  store i32 0, i32* %318, align 8
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %322, i32 0, i32 4
  store i32 %321, i32* %323, align 8
  %324 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %325 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %326 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = call i64 @chunk_estimate_phys_size(%struct.TYPE_35__* %324, %struct.TYPE_36__* %325, i32 %328)
  %330 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %334, %329
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %332, align 8
  %337 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %337, i32* %4, align 4
  br label %338

338:                                              ; preds = %316, %308, %289, %225, %128, %91, %80, %52, %23
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local %struct.TYPE_37__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_37__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @insert_tree_item(%struct.TYPE_35__*, %struct.TYPE_28__*, i32, i32, i32, %struct.TYPE_37__*, i32, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_37__*) #1

declare dso_local i32 @add_to_bootstrap(%struct.TYPE_35__*, i32, i32, i32, %struct.TYPE_37__*, i32) #1

declare dso_local i32 @update_dev_item(%struct.TYPE_35__*, %struct.TYPE_27__*, i32) #1

declare dso_local i64 @chunk_estimate_phys_size(%struct.TYPE_35__*, %struct.TYPE_36__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
