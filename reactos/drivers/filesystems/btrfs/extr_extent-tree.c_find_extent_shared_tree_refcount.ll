; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_find_extent_shared_tree_refcount.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_find_extent_shared_tree_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA = common dso_local global i32 0, align 4
@TYPE_METADATA_ITEM = common dso_local global i64 0, align 8
@TYPE_EXTENT_ITEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"error - find_item returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"could not find address %I64x in extent tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"extent %I64x had size %I64x, not %I64x as expected\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"(%I64x,%x,%I64x): size was %u, expected at least %u\0A\00", align 1
@EXTENT_ITEM_TREE_BLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"(%I64x,%x,%I64x): %x bytes left, expecting at least %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"(%I64x,%x,%I64x): unrecognized extent type %x\0A\00", align 1
@TYPE_SHARED_BLOCK_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_extent_shared_tree_refcount(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  br label %34

32:                                               ; preds = %4
  %33 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i32 -1, i32* %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @find_item(%struct.TYPE_17__* %38, i32 %41, %struct.TYPE_16__* %12, %struct.TYPE_19__* %11, i32 0, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @NT_SUCCESS(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 0, i32* %5, align 4
  br label %323

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %76, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TYPE_METADATA_ITEM, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68, %50
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 0, i32* %5, align 4
  br label %323

79:                                               ; preds = %68, %60
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %92, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %87
  %99 = load i32, i32* %7, align 4
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %99, i64 %104, i64 %108)
  store i32 0, i32* %5, align 4
  br label %323

110:                                              ; preds = %87, %79
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = icmp ult i64 %115, 8
  br i1 %116, label %117, label %139

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %123, i64 %128, i64 %133, i32 %137, i64 8)
  store i32 0, i32* %5, align 4
  br label %323

139:                                              ; preds = %110
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %144, %struct.TYPE_20__** %14, align 8
  store i32 0, i32* %13, align 4
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = sub i64 %149, 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %15, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i64 1
  %154 = bitcast %struct.TYPE_20__* %153 to i64*
  store i64* %154, i64** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %202

159:                                              ; preds = %139
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @EXTENT_ITEM_TREE_BLOCK, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %202

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = icmp ult i64 %171, 12
  br i1 %172, label %173, label %195

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %179, i64 %184, i64 %189, i32 %193, i64 12)
  store i32 0, i32* %5, align 4
  br label %323

195:                                              ; preds = %166
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = sub i64 %197, 4
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %15, align 4
  %200 = load i64*, i64** %16, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 4
  store i64* %201, i64** %16, align 8
  br label %202

202:                                              ; preds = %195, %159, %139
  br label %203

203:                                              ; preds = %277, %202
  %204 = load i32, i32* %15, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %289

206:                                              ; preds = %203
  %207 = load i64*, i64** %16, align 8
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %17, align 8
  %209 = load i64, i64* %17, align 8
  %210 = call i32 @get_extent_data_len(i64 %209)
  store i32 %210, i32* %18, align 4
  %211 = load i64, i64* %17, align 8
  %212 = load i64*, i64** %16, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 8
  %214 = call i32 @get_extent_data_refcount(i64 %211, i64* %213)
  store i32 %214, i32* %19, align 4
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp sgt i32 %217, %218
  br i1 %219, label %220, label %240

220:                                              ; preds = %206
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %18, align 4
  %239 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %226, i64 %231, i64 %236, i32 %237, i32 %238)
  store i32 0, i32* %5, align 4
  br label %323

240:                                              ; preds = %206
  %241 = load i32, i32* %18, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %262

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %17, align 8
  %261 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %249, i64 %254, i64 %259, i64 %260)
  store i32 0, i32* %5, align 4
  br label %323

262:                                              ; preds = %240
  %263 = load i64, i64* %17, align 8
  %264 = load i64, i64* @TYPE_SHARED_BLOCK_REF, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %277

266:                                              ; preds = %262
  %267 = load i64*, i64** %16, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 8
  %269 = bitcast i64* %268 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %269, %struct.TYPE_18__** %20, align 8
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %266
  store i32 1, i32* %5, align 4
  br label %323

276:                                              ; preds = %266
  br label %277

277:                                              ; preds = %276, %262
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* %15, align 4
  %280 = sub nsw i32 %279, %278
  store i32 %280, i32* %15, align 4
  %281 = load i32, i32* %18, align 4
  %282 = sext i32 %281 to i64
  %283 = add i64 8, %282
  %284 = load i64*, i64** %16, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 %283
  store i64* %285, i64** %16, align 8
  %286 = load i32, i32* %19, align 4
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %13, align 4
  br label %203

289:                                              ; preds = %203
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %290, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  store i32 0, i32* %5, align 4
  br label %323

296:                                              ; preds = %289
  %297 = load i32, i32* %7, align 4
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %297, i32* %298, align 8
  %299 = load i64, i64* @TYPE_SHARED_BLOCK_REF, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i64 %299, i64* %300, align 8
  %301 = load i32, i32* %8, align 4
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i32 %301, i32* %302, align 8
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = call i32 @find_item(%struct.TYPE_17__* %303, i32 %306, %struct.TYPE_16__* %12, %struct.TYPE_19__* %11, i32 0, i32 %307)
  store i32 %308, i32* %10, align 4
  %309 = load i32, i32* %10, align 4
  %310 = call i32 @NT_SUCCESS(i32 %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %296
  %313 = load i32, i32* %10, align 4
  %314 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %313)
  store i32 0, i32* %5, align 4
  br label %323

315:                                              ; preds = %296
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 1
  %319 = call i32 @keycmp(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %11, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %315
  store i32 1, i32* %5, align 4
  br label %323

322:                                              ; preds = %315
  store i32 0, i32* %5, align 4
  br label %323

323:                                              ; preds = %322, %321, %312, %295, %275, %243, %220, %173, %117, %98, %76, %47
  %324 = load i32, i32* %5, align 4
  ret i32 %324
}

declare dso_local i32 @find_item(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @get_extent_data_len(i64) #1

declare dso_local i32 @get_extent_data_refcount(i64, i64*) #1

declare dso_local i32 @keycmp(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
