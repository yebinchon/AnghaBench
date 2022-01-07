; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_drop_root.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_drop_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__, %struct.TYPE_24__, i32 }
%struct.TYPE_25__ = type { i64* }
%struct.TYPE_24__ = type { i64* }
%struct.TYPE_31__ = type { i64, i64, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_23__, i64 }
%struct.TYPE_23__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"remove_root_extents returned %08x\0A\00", align 1
@TYPE_SUBVOL_UUID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"find_item returned %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"delete_tree_item returned %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"could not find (%I64x,%x,%I64x) in uuid tree\0A\00", align 1
@TYPE_SUBVOL_REC_UUID = common dso_local global i64 0, align 8
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"insert_tree_item returned %08x\0A\00", align 1
@TYPE_ROOT_ITEM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"could not find (%I64x,%x,%I64x) in root_root\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_30__*, %struct.TYPE_29__*, i32, i32*)* @drop_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @drop_root(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_31__, align 8
  %12 = alloca %struct.TYPE_28__, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @remove_root_extents(%struct.TYPE_30__* %17, %struct.TYPE_29__* %18, i32* %20, i32 %24, i32* null, i32 %25, i32* %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @NT_SUCCESS(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i64, i64* %10, align 8
  %33 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %5, align 8
  br label %406

35:                                               ; preds = %4
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %343

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = call i32 @RtlCopyMemory(i64* %41, i64* %47, i32 8)
  %49 = load i64, i64* @TYPE_SUBVOL_UUID, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 2
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 8
  %58 = call i32 @RtlCopyMemory(i64* %51, i64* %57, i32 8)
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %40
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %62, %40
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @find_item(%struct.TYPE_30__* %67, i64 %70, %struct.TYPE_28__* %12, %struct.TYPE_31__* %11, i32 0, i32 %71)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @NT_SUCCESS(i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = load i64, i64* %10, align 8
  %78 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  br label %105

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 1
  %83 = call i32 @keycmp(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %82, %struct.TYPE_31__* byval(%struct.TYPE_31__) align 8 %11)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %87 = call i64 @delete_tree_item(%struct.TYPE_30__* %86, %struct.TYPE_28__* %12)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @NT_SUCCESS(i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %10, align 8
  %93 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  %94 = load i64, i64* %10, align 8
  store i64 %94, i64* %5, align 8
  br label %406

95:                                               ; preds = %85
  br label %104

96:                                               ; preds = %79
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %98, i64 %100, i64 %102)
  br label %104

104:                                              ; preds = %96, %95
  br label %105

105:                                              ; preds = %104, %76
  br label %106

106:                                              ; preds = %105, %62
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %342

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = call i32 @RtlCopyMemory(i64* %113, i64* %119, i32 8)
  %121 = load i64, i64* @TYPE_SUBVOL_REC_UUID, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 2
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 8
  %130 = call i32 @RtlCopyMemory(i64* %123, i64* %129, i32 8)
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i64 @find_item(%struct.TYPE_30__* %131, i64 %134, %struct.TYPE_28__* %12, %struct.TYPE_31__* %11, i32 0, i32 %135)
  store i64 %136, i64* %10, align 8
  %137 = load i64, i64* %10, align 8
  %138 = call i32 @NT_SUCCESS(i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %112
  %141 = load i64, i64* %10, align 8
  %142 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %141)
  br label %341

143:                                              ; preds = %112
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 1
  %147 = call i32 @keycmp(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %146, %struct.TYPE_31__* byval(%struct.TYPE_31__) align 8 %11)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %332, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = icmp eq i64 %154, 8
  br i1 %155, label %156, label %180

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i64*
  store i64* %161, i64** %13, align 8
  %162 = load i64*, i64** %13, align 8
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %163, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %156
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %170 = call i64 @delete_tree_item(%struct.TYPE_30__* %169, %struct.TYPE_28__* %12)
  store i64 %170, i64* %10, align 8
  %171 = load i64, i64* %10, align 8
  %172 = call i32 @NT_SUCCESS(i64 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %168
  %175 = load i64, i64* %10, align 8
  %176 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %175)
  %177 = load i64, i64* %10, align 8
  store i64 %177, i64* %5, align 8
  br label %406

178:                                              ; preds = %168
  br label %179

179:                                              ; preds = %178, %156
  br label %331

180:                                              ; preds = %149
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = icmp ugt i64 %185, 8
  br i1 %186, label %187, label %330

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to i64*
  store i64* %192, i64** %15, align 8
  store i32 0, i32* %14, align 4
  br label %193

193:                                              ; preds = %326, %187
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = udiv i64 %200, 8
  %202 = icmp ult i64 %195, %201
  br i1 %202, label %203, label %329

203:                                              ; preds = %193
  %204 = load i64*, i64** %15, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %208, %211
  br i1 %212, label %213, label %325

213:                                              ; preds = %203
  %214 = load i32, i32* @PagedPool, align 4
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = sub i64 %219, 8
  %221 = trunc i64 %220 to i32
  %222 = load i32, i32* @ALLOC_TAG, align 4
  %223 = call i64* @ExAllocatePoolWithTag(i32 %214, i32 %221, i32 %222)
  store i64* %223, i64** %16, align 8
  %224 = load i64*, i64** %16, align 8
  %225 = icmp ne i64* %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %213
  %227 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %228 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %228, i64* %5, align 8
  br label %406

229:                                              ; preds = %213
  %230 = load i32, i32* %14, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = load i64*, i64** %16, align 8
  %234 = load i64*, i64** %15, align 8
  %235 = load i32, i32* %14, align 4
  %236 = sext i32 %235 to i64
  %237 = mul i64 8, %236
  %238 = trunc i64 %237 to i32
  %239 = call i32 @RtlCopyMemory(i64* %233, i64* %234, i32 %238)
  br label %240

240:                                              ; preds = %232, %229
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = icmp ult i64 %244, %249
  br i1 %250, label %251, label %273

251:                                              ; preds = %240
  %252 = load i64*, i64** %16, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64*, i64** %15, align 8
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %256, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = mul i64 %268, 8
  %270 = sub i64 %265, %269
  %271 = trunc i64 %270 to i32
  %272 = call i32 @RtlCopyMemory(i64* %255, i64* %260, i32 %271)
  br label %273

273:                                              ; preds = %251, %240
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %275 = call i64 @delete_tree_item(%struct.TYPE_30__* %274, %struct.TYPE_28__* %12)
  store i64 %275, i64* %10, align 8
  %276 = load i64, i64* %10, align 8
  %277 = call i32 @NT_SUCCESS(i64 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %273
  %280 = load i64, i64* %10, align 8
  %281 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %280)
  %282 = load i64*, i64** %16, align 8
  %283 = call i32 @ExFreePool(i64* %282)
  %284 = load i64, i64* %10, align 8
  store i64 %284, i64* %5, align 8
  br label %406

285:                                              ; preds = %273
  %286 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %287 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load i64*, i64** %16, align 8
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = sext i32 %309 to i64
  %311 = sub i64 %310, 8
  %312 = trunc i64 %311 to i32
  %313 = load i32, i32* %8, align 4
  %314 = call i64 @insert_tree_item(%struct.TYPE_30__* %286, i64 %289, i64 %294, i64 %299, i32 %304, i64* %305, i32 %312, i32* null, i32 %313)
  store i64 %314, i64* %10, align 8
  %315 = load i64, i64* %10, align 8
  %316 = call i32 @NT_SUCCESS(i64 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %285
  %319 = load i64, i64* %10, align 8
  %320 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %319)
  %321 = load i64*, i64** %16, align 8
  %322 = call i32 @ExFreePool(i64* %321)
  %323 = load i64, i64* %10, align 8
  store i64 %323, i64* %5, align 8
  br label %406

324:                                              ; preds = %285
  br label %329

325:                                              ; preds = %203
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %14, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %14, align 4
  br label %193

329:                                              ; preds = %324, %193
  br label %330

330:                                              ; preds = %329, %180
  br label %331

331:                                              ; preds = %330, %179
  br label %340

332:                                              ; preds = %143
  %333 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %334, i64 %336, i64 %338)
  br label %340

340:                                              ; preds = %332, %331
  br label %341

341:                                              ; preds = %340, %140
  br label %342

342:                                              ; preds = %341, %106
  br label %343

343:                                              ; preds = %342, %35
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  store i64 %346, i64* %347, align 8
  %348 = load i64, i64* @TYPE_ROOT_ITEM, align 8
  %349 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  store i64 %348, i64* %349, align 8
  %350 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 2
  store i64 -1, i64* %350, align 8
  %351 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %352 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = call i64 @find_item(%struct.TYPE_30__* %351, i64 %354, %struct.TYPE_28__* %12, %struct.TYPE_31__* %11, i32 0, i32 %355)
  store i64 %356, i64* %10, align 8
  %357 = load i64, i64* %10, align 8
  %358 = call i32 @NT_SUCCESS(i64 %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %343
  %361 = load i64, i64* %10, align 8
  %362 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %361)
  %363 = load i64, i64* %10, align 8
  store i64 %363, i64* %5, align 8
  br label %406

364:                                              ; preds = %343
  %365 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %366 = load %struct.TYPE_27__*, %struct.TYPE_27__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp eq i64 %369, %371
  br i1 %372, label %373, label %393

373:                                              ; preds = %364
  %374 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %375 = load %struct.TYPE_27__*, %struct.TYPE_27__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = icmp eq i64 %378, %380
  br i1 %381, label %382, label %393

382:                                              ; preds = %373
  %383 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %384 = call i64 @delete_tree_item(%struct.TYPE_30__* %383, %struct.TYPE_28__* %12)
  store i64 %384, i64* %10, align 8
  %385 = load i64, i64* %10, align 8
  %386 = call i32 @NT_SUCCESS(i64 %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %382
  %389 = load i64, i64* %10, align 8
  %390 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %389)
  %391 = load i64, i64* %10, align 8
  store i64 %391, i64* %5, align 8
  br label %406

392:                                              ; preds = %382
  br label %401

393:                                              ; preds = %373, %364
  %394 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %395, i64 %397, i64 %399)
  br label %401

401:                                              ; preds = %393, %392
  %402 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %403 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %404 = call i32 @free_trees_root(%struct.TYPE_30__* %402, %struct.TYPE_29__* %403)
  %405 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %405, i64* %5, align 8
  br label %406

406:                                              ; preds = %401, %388, %360, %318, %279, %226, %174, %91, %31
  %407 = load i64, i64* %5, align 8
  ret i64 %407
}

declare dso_local i64 @remove_root_extents(%struct.TYPE_30__*, %struct.TYPE_29__*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @RtlCopyMemory(i64*, i64*, i32) #1

declare dso_local i64 @find_item(%struct.TYPE_30__*, i64, %struct.TYPE_28__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @WARN(i8*, i64, ...) #1

declare dso_local i32 @keycmp(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_31__* byval(%struct.TYPE_31__) align 8) #1

declare dso_local i64 @delete_tree_item(%struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i64* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ExFreePool(i64*) #1

declare dso_local i64 @insert_tree_item(%struct.TYPE_30__*, i64, i64, i64, i32, i64*, i32, i32*, i32) #1

declare dso_local i32 @free_trees_root(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
