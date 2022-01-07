; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_add_checksum_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_add_checksum_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i8*, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"(%p, %I64x, %x, %p, %p)\0A\00", align 1
@EXTENT_CSUM_ID = common dso_local global i8* null, align 8
@TYPE_EXTENT_CSUM = common dso_local global i8* null, align 8
@STATUS_NOT_FOUND = common dso_local global i64 0, align 8
@MAX_CSUM_SIZE = common dso_local global i32 0, align 4
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"insert_tree_item returned %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"find_item returned %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"cs starts at %I64x (%x sectors)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"startaddr = %I64x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"endaddr = %I64x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"delete_tree_item returned %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_checksum_entry(%struct.TYPE_21__* %0, i32 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %32, i32 %33, i64 %34, i64* %35, i32 %36)
  %38 = load i8*, i8** @EXTENT_CSUM_ID, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** @TYPE_EXTENT_CSUM, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @find_item(%struct.TYPE_21__* %44, i32 %47, %struct.TYPE_20__* %12, %struct.TYPE_22__* %11, i32 0, i32 %48)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @STATUS_NOT_FOUND, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %136

53:                                               ; preds = %5
  %54 = load i64*, i64** %9, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %135

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %23, align 8
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %24, align 4
  %59 = load i64*, i64** %9, align 8
  store i64* %59, i64** %25, align 8
  br label %60

60:                                               ; preds = %131, %56
  %61 = load i64, i64* %23, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @MAX_CSUM_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = udiv i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @min(i32 %62, i32 %66)
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %26, align 4
  %69 = load i32, i32* @PagedPool, align 4
  %70 = load i32, i32* %26, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @ALLOC_TAG, align 4
  %75 = call i64* @ExAllocatePoolWithTag(i32 %69, i32 %73, i32 %74)
  store i64* %75, i64** %18, align 8
  %76 = load i64*, i64** %18, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %60
  %79 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %610

80:                                               ; preds = %60
  %81 = load i64*, i64** %18, align 8
  %82 = load i64*, i64** %25, align 8
  %83 = load i32, i32* %26, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @RtlCopyMemory(i64* %81, i64* %82, i32 %86)
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** @EXTENT_CSUM_ID, align 8
  %93 = load i8*, i8** @TYPE_EXTENT_CSUM, align 8
  %94 = load i32, i32* %24, align 4
  %95 = load i64*, i64** %18, align 8
  %96 = load i32, i32* %26, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 8
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @insert_tree_item(%struct.TYPE_21__* %88, i32 %91, i8* %92, i8* %93, i32 %94, i64* %95, i32 %99, i32* null, i32 %100)
  store i64 %101, i64* %14, align 8
  %102 = load i64, i64* %14, align 8
  %103 = call i32 @NT_SUCCESS(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %80
  %106 = load i64, i64* %14, align 8
  %107 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %106)
  %108 = load i64*, i64** %18, align 8
  %109 = call i32 @ExFreePool(i64* %108)
  br label %610

110:                                              ; preds = %80
  %111 = load i32, i32* %26, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %23, align 8
  %114 = sub nsw i64 %113, %112
  store i64 %114, i64* %23, align 8
  %115 = load i64, i64* %23, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load i32, i32* %26, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %118, %122
  %124 = load i32, i32* %24, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %24, align 4
  %126 = load i32, i32* %26, align 4
  %127 = load i64*, i64** %25, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64* %129, i64** %25, align 8
  br label %130

130:                                              ; preds = %117, %110
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %23, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %60, label %134

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134, %53
  br label %610

136:                                              ; preds = %5
  %137 = load i64, i64* %14, align 8
  %138 = call i32 @NT_SUCCESS(i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %14, align 8
  %142 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %141)
  br label %610

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %179

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %161, %165
  %167 = sext i32 %166 to i64
  %168 = udiv i64 %167, 8
  %169 = add i64 %157, %168
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp uge i64 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %151
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %15, align 4
  br label %181

179:                                              ; preds = %151, %143
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %179, %173
  %182 = load i8*, i8** @EXTENT_CSUM_ID, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  store i8* %182, i8** %183, align 8
  %184 = load i8*, i8** @TYPE_EXTENT_CSUM, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  store i8* %184, i8** %185, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %8, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = mul nsw i64 %188, %193
  %195 = add nsw i64 %187, %194
  %196 = trunc i64 %195 to i32
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i32 %196, i32* %197, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %10, align 4
  %203 = call i64 @find_item(%struct.TYPE_21__* %198, i32 %201, %struct.TYPE_20__* %12, %struct.TYPE_22__* %11, i32 0, i32 %202)
  store i64 %203, i64* %14, align 8
  %204 = load i64, i64* %14, align 8
  %205 = call i32 @NT_SUCCESS(i64 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %181
  %208 = load i64, i64* %14, align 8
  %209 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %208)
  br label %610

210:                                              ; preds = %181
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = udiv i64 %215, 8
  store i64 %216, i64* %27, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %27, align 8
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = mul nsw i64 %223, %228
  %230 = add nsw i64 %222, %229
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* %8, align 8
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = mul nsw i64 %233, %238
  %240 = add nsw i64 %232, %239
  %241 = icmp sge i64 %230, %240
  br i1 %241, label %242, label %258

242:                                              ; preds = %210
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* %27, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = mul nsw i64 %249, %254
  %256 = add nsw i64 %248, %255
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %16, align 4
  br label %270

258:                                              ; preds = %210
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = load i64, i64* %8, align 8
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = mul nsw i64 %261, %266
  %268 = add nsw i64 %260, %267
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %16, align 4
  br label %270

270:                                              ; preds = %258, %242
  %271 = load i32, i32* %7, align 4
  %272 = load i64, i64* %8, align 8
  %273 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %271, i64 %272)
  %274 = load i32, i32* %15, align 4
  %275 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* %16, align 4
  %277 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* %16, align 4
  %279 = load i32, i32* %15, align 4
  %280 = sub nsw i32 %278, %279
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = sdiv i32 %280, %284
  %286 = sext i32 %285 to i64
  store i64 %286, i64* %17, align 8
  %287 = load i32, i32* @PagedPool, align 4
  %288 = load i64, i64* %17, align 8
  %289 = mul i64 8, %288
  %290 = trunc i64 %289 to i32
  %291 = load i32, i32* @ALLOC_TAG, align 4
  %292 = call i64* @ExAllocatePoolWithTag(i32 %287, i32 %290, i32 %291)
  store i64* %292, i64** %18, align 8
  %293 = load i64*, i64** %18, align 8
  %294 = icmp ne i64* %293, null
  br i1 %294, label %297, label %295

295:                                              ; preds = %270
  %296 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %610

297:                                              ; preds = %270
  %298 = load i32, i32* @PagedPool, align 4
  %299 = load i64, i64* %17, align 8
  %300 = sdiv i64 %299, 8
  %301 = add nsw i64 %300, 1
  %302 = mul i64 8, %301
  %303 = trunc i64 %302 to i32
  %304 = load i32, i32* @ALLOC_TAG, align 4
  %305 = call i64* @ExAllocatePoolWithTag(i32 %298, i32 %303, i32 %304)
  store i64* %305, i64** %20, align 8
  %306 = load i64*, i64** %20, align 8
  %307 = icmp ne i64* %306, null
  br i1 %307, label %312, label %308

308:                                              ; preds = %297
  %309 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %310 = load i64*, i64** %18, align 8
  %311 = call i32 @ExFreePool(i64* %310)
  br label %610

312:                                              ; preds = %297
  %313 = load i64*, i64** %20, align 8
  %314 = load i64, i64* %17, align 8
  %315 = call i32 @RtlInitializeBitMap(i32* %19, i64* %313, i64 %314)
  %316 = call i32 @RtlSetAllBits(i32* %19)
  %317 = load i8*, i8** @EXTENT_CSUM_ID, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  store i8* %317, i8** %318, align 8
  %319 = load i8*, i8** @TYPE_EXTENT_CSUM, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  store i8* %319, i8** %320, align 8
  %321 = load i32, i32* %7, align 4
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i32 %321, i32* %322, align 8
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %10, align 4
  %328 = call i64 @find_item(%struct.TYPE_21__* %323, i32 %326, %struct.TYPE_20__* %12, %struct.TYPE_22__* %11, i32 0, i32 %327)
  store i64 %328, i64* %14, align 8
  %329 = load i64, i64* %14, align 8
  %330 = call i32 @NT_SUCCESS(i64 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %339, label %332

332:                                              ; preds = %312
  %333 = load i64, i64* %14, align 8
  %334 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %333)
  %335 = load i64*, i64** %18, align 8
  %336 = call i32 @ExFreePool(i64* %335)
  %337 = load i64*, i64** %20, align 8
  %338 = call i32 @ExFreePool(i64* %337)
  br label %610

339:                                              ; preds = %312
  br label %340

340:                                              ; preds = %446, %339
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %16, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %447

348:                                              ; preds = %340
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* %15, align 4
  %355 = icmp sge i32 %353, %354
  br i1 %355, label %356, label %437

356:                                              ; preds = %348
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %423

362:                                              ; preds = %356
  %363 = load i64, i64* %17, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %15, align 4
  %370 = sub nsw i32 %368, %369
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = sdiv i32 %370, %374
  %376 = sext i32 %375 to i64
  %377 = sub nsw i64 %363, %376
  %378 = mul i64 %377, 8
  %379 = trunc i64 %378 to i32
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %381 = load %struct.TYPE_18__*, %struct.TYPE_18__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = call i64 @min(i32 %379, i32 %383)
  store i64 %384, i64* %28, align 8
  %385 = load i64*, i64** %18, align 8
  %386 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* %15, align 4
  %392 = sub nsw i32 %390, %391
  %393 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = sdiv i32 %392, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i64, i64* %385, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %401, i32 0, i32 1
  %403 = load i64*, i64** %402, align 8
  %404 = load i64, i64* %28, align 8
  %405 = trunc i64 %404 to i32
  %406 = call i32 @RtlCopyMemory(i64* %399, i64* %403, i32 %405)
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* %15, align 4
  %413 = sub nsw i32 %411, %412
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = sdiv i32 %413, %417
  %419 = sext i32 %418 to i64
  %420 = load i64, i64* %28, align 8
  %421 = udiv i64 %420, 8
  %422 = call i32 @RtlClearBits(i32* %19, i64 %419, i64 %421)
  br label %423

423:                                              ; preds = %362, %356
  %424 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %425 = call i64 @delete_tree_item(%struct.TYPE_21__* %424, %struct.TYPE_20__* %12)
  store i64 %425, i64* %14, align 8
  %426 = load i64, i64* %14, align 8
  %427 = call i32 @NT_SUCCESS(i64 %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %436, label %429

429:                                              ; preds = %423
  %430 = load i64, i64* %14, align 8
  %431 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %430)
  %432 = load i64*, i64** %18, align 8
  %433 = call i32 @ExFreePool(i64* %432)
  %434 = load i64*, i64** %20, align 8
  %435 = call i32 @ExFreePool(i64* %434)
  br label %610

436:                                              ; preds = %423
  br label %437

437:                                              ; preds = %436, %348
  %438 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %439 = load i32, i32* %10, align 4
  %440 = call i64 @find_next_item(%struct.TYPE_21__* %438, %struct.TYPE_20__* %12, %struct.TYPE_20__* %13, i32 0, i32 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %437
  %443 = bitcast %struct.TYPE_20__* %12 to i8*
  %444 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %443, i8* align 8 %444, i64 8, i1 false)
  br label %446

445:                                              ; preds = %437
  br label %447

446:                                              ; preds = %442
  br label %340

447:                                              ; preds = %445, %340
  %448 = load i64*, i64** %9, align 8
  %449 = icmp ne i64* %448, null
  br i1 %449, label %462, label %450

450:                                              ; preds = %447
  %451 = load i32, i32* %7, align 4
  %452 = load i32, i32* %15, align 4
  %453 = sub nsw i32 %451, %452
  %454 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %455 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = sdiv i32 %453, %457
  %459 = sext i32 %458 to i64
  %460 = load i64, i64* %8, align 8
  %461 = call i32 @RtlSetBits(i32* %19, i64 %459, i64 %460)
  br label %490

462:                                              ; preds = %447
  %463 = load i64*, i64** %18, align 8
  %464 = load i32, i32* %7, align 4
  %465 = load i32, i32* %15, align 4
  %466 = sub nsw i32 %464, %465
  %467 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = sdiv i32 %466, %470
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i64, i64* %463, i64 %472
  %474 = load i64*, i64** %9, align 8
  %475 = load i64, i64* %8, align 8
  %476 = mul i64 %475, 8
  %477 = trunc i64 %476 to i32
  %478 = call i32 @RtlCopyMemory(i64* %473, i64* %474, i32 %477)
  %479 = load i32, i32* %7, align 4
  %480 = load i32, i32* %15, align 4
  %481 = sub nsw i32 %479, %480
  %482 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = sdiv i32 %481, %485
  %487 = sext i32 %486 to i64
  %488 = load i64, i64* %8, align 8
  %489 = call i32 @RtlClearBits(i32* %19, i64 %487, i64 %488)
  br label %490

490:                                              ; preds = %462, %450
  %491 = call i64 @RtlFindFirstRunClear(i32* %19, i64* %22)
  store i64 %491, i64* %21, align 8
  br label %492

492:                                              ; preds = %601, %490
  %493 = load i64, i64* %21, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %604

495:                                              ; preds = %492
  %496 = load i64, i64* %22, align 8
  %497 = load i64, i64* %17, align 8
  %498 = icmp sge i64 %496, %497
  br i1 %498, label %499, label %500

499:                                              ; preds = %495
  br label %604

500:                                              ; preds = %495
  %501 = load i64, i64* %22, align 8
  %502 = load i64, i64* %21, align 8
  %503 = add nsw i64 %501, %502
  %504 = load i64, i64* %17, align 8
  %505 = icmp sge i64 %503, %504
  br i1 %505, label %506, label %514

506:                                              ; preds = %500
  %507 = load i64, i64* %17, align 8
  %508 = load i64, i64* %22, align 8
  %509 = sub nsw i64 %507, %508
  store i64 %509, i64* %21, align 8
  %510 = load i64, i64* %21, align 8
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %506
  br label %604

513:                                              ; preds = %506
  br label %514

514:                                              ; preds = %513, %500
  br label %515

515:                                              ; preds = %598, %514
  %516 = load i64, i64* %21, align 8
  %517 = mul i64 %516, 8
  %518 = load i32, i32* @MAX_CSUM_SIZE, align 4
  %519 = sext i32 %518 to i64
  %520 = icmp ugt i64 %517, %519
  br i1 %520, label %521, label %526

521:                                              ; preds = %515
  %522 = load i32, i32* @MAX_CSUM_SIZE, align 4
  %523 = sext i32 %522 to i64
  %524 = udiv i64 %523, 8
  %525 = trunc i64 %524 to i32
  store i32 %525, i32* %29, align 4
  br label %529

526:                                              ; preds = %515
  %527 = load i64, i64* %21, align 8
  %528 = trunc i64 %527 to i32
  store i32 %528, i32* %29, align 4
  br label %529

529:                                              ; preds = %526, %521
  %530 = load i32, i32* @PagedPool, align 4
  %531 = load i32, i32* %29, align 4
  %532 = sext i32 %531 to i64
  %533 = mul i64 8, %532
  %534 = trunc i64 %533 to i32
  %535 = load i32, i32* @ALLOC_TAG, align 4
  %536 = call i64* @ExAllocatePoolWithTag(i32 %530, i32 %534, i32 %535)
  store i64* %536, i64** %31, align 8
  %537 = load i64*, i64** %31, align 8
  %538 = icmp ne i64* %537, null
  br i1 %538, label %545, label %539

539:                                              ; preds = %529
  %540 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %541 = load i64*, i64** %20, align 8
  %542 = call i32 @ExFreePool(i64* %541)
  %543 = load i64*, i64** %18, align 8
  %544 = call i32 @ExFreePool(i64* %543)
  br label %610

545:                                              ; preds = %529
  %546 = load i64*, i64** %31, align 8
  %547 = load i64*, i64** %18, align 8
  %548 = load i64, i64* %22, align 8
  %549 = getelementptr inbounds i64, i64* %547, i64 %548
  %550 = load i32, i32* %29, align 4
  %551 = sext i32 %550 to i64
  %552 = mul i64 8, %551
  %553 = trunc i64 %552 to i32
  %554 = call i32 @RtlCopyMemory(i64* %546, i64* %549, i32 %553)
  %555 = load i32, i32* %15, align 4
  %556 = load i64, i64* %22, align 8
  %557 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %558 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = call i32 @UInt32x32To64(i64 %556, i32 %560)
  %562 = add nsw i32 %555, %561
  store i32 %562, i32* %30, align 4
  %563 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %564 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %565 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = load i8*, i8** @EXTENT_CSUM_ID, align 8
  %568 = load i8*, i8** @TYPE_EXTENT_CSUM, align 8
  %569 = load i32, i32* %30, align 4
  %570 = load i64*, i64** %31, align 8
  %571 = load i32, i32* %29, align 4
  %572 = sext i32 %571 to i64
  %573 = mul i64 8, %572
  %574 = trunc i64 %573 to i32
  %575 = load i32, i32* %10, align 4
  %576 = call i64 @insert_tree_item(%struct.TYPE_21__* %563, i32 %566, i8* %567, i8* %568, i32 %569, i64* %570, i32 %574, i32* null, i32 %575)
  store i64 %576, i64* %14, align 8
  %577 = load i64, i64* %14, align 8
  %578 = call i32 @NT_SUCCESS(i64 %577)
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %589, label %580

580:                                              ; preds = %545
  %581 = load i64, i64* %14, align 8
  %582 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %581)
  %583 = load i64*, i64** %31, align 8
  %584 = call i32 @ExFreePool(i64* %583)
  %585 = load i64*, i64** %20, align 8
  %586 = call i32 @ExFreePool(i64* %585)
  %587 = load i64*, i64** %18, align 8
  %588 = call i32 @ExFreePool(i64* %587)
  br label %610

589:                                              ; preds = %545
  %590 = load i32, i32* %29, align 4
  %591 = sext i32 %590 to i64
  %592 = load i64, i64* %21, align 8
  %593 = sub nsw i64 %592, %591
  store i64 %593, i64* %21, align 8
  %594 = load i32, i32* %29, align 4
  %595 = sext i32 %594 to i64
  %596 = load i64, i64* %22, align 8
  %597 = add nsw i64 %596, %595
  store i64 %597, i64* %22, align 8
  br label %598

598:                                              ; preds = %589
  %599 = load i64, i64* %21, align 8
  %600 = icmp sgt i64 %599, 0
  br i1 %600, label %515, label %601

601:                                              ; preds = %598
  %602 = load i64, i64* %22, align 8
  %603 = call i64 @RtlFindNextForwardRunClear(i32* %19, i64 %602, i64* %22)
  store i64 %603, i64* %21, align 8
  br label %492

604:                                              ; preds = %512, %499, %492
  %605 = load i64*, i64** %20, align 8
  %606 = call i32 @ExFreePool(i64* %605)
  %607 = load i64*, i64** %18, align 8
  %608 = call i32 @ExFreePool(i64* %607)
  br label %609

609:                                              ; preds = %604
  br label %610

610:                                              ; preds = %78, %105, %140, %207, %295, %308, %332, %429, %539, %580, %609, %135
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @find_item(%struct.TYPE_21__*, i32, %struct.TYPE_20__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @RtlCopyMemory(i64*, i64*, i32) #1

declare dso_local i64 @insert_tree_item(%struct.TYPE_21__*, i32, i8*, i8*, i32, i64*, i32, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ExFreePool(i64*) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i64*, i64) #1

declare dso_local i32 @RtlSetAllBits(i32*) #1

declare dso_local i32 @RtlClearBits(i32*, i64, i64) #1

declare dso_local i64 @delete_tree_item(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i64 @find_next_item(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RtlSetBits(i32*, i64, i64) #1

declare dso_local i64 @RtlFindFirstRunClear(i32*, i64*) #1

declare dso_local i32 @UInt32x32To64(i64, i32) #1

declare dso_local i64 @RtlFindNextForwardRunClear(i32*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
