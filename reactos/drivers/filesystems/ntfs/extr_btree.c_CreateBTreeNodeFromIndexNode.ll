; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CreateBTreeNodeFromIndexNode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CreateBTreeNodeFromIndexNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32 }

@.str = private unnamed_addr constant [82 x i8] c"ERROR: Couldn't find index allocation attribute even though there should be one!\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"ERROR: Couldn't allocate memory for new filename node.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"ERROR: Failed to allocate memory for key!\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"ERROR: Couldn't allocate memory for node buffer!\0A\00", align 1
@NRH_INDX_TYPE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"ERROR: Couldn't apply fixup array to index node buffer!\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"ERROR: Couldn't allocate memory for next key!\0A\00", align 1
@NTFS_INDEX_ENTRY_END = common dso_local global i32 0, align 4
@NTFS_INDEX_ENTRY_NODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @CreateBTreeNodeFromIndexNode(%struct.TYPE_25__* %0, i32 %1, i32* %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %9, align 8
  store i64 0, i64* %13, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %15, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 @DPRINT1(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %291

30:                                               ; preds = %4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %32 = ptrtoint %struct.TYPE_23__* %31 to i64
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = sub i64 %37, 4
  %39 = inttoptr i64 %38 to i64*
  store i64* %39, i64** %16, align 8
  %40 = load i32, i32* @NonPagedPool, align 4
  %41 = load i32, i32* @TAG_NTFS, align 4
  %42 = call i8* @ExAllocatePoolWithTag(i32 %40, i32 4, i32 %41)
  %43 = bitcast i8* %42 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %43, %struct.TYPE_24__** %10, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %45 = icmp ne %struct.TYPE_24__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %30
  %47 = call i32 @DPRINT1(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %291

48:                                               ; preds = %30
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %50 = call i32 @RtlZeroMemory(%struct.TYPE_24__* %49, i32 4)
  %51 = load i32, i32* @NonPagedPool, align 4
  %52 = load i32, i32* @TAG_NTFS, align 4
  %53 = call i8* @ExAllocatePoolWithTag(i32 %51, i32 4, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %54, %struct.TYPE_24__** %17, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %56 = icmp ne %struct.TYPE_24__* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %48
  %58 = call i32 @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %60 = load i32, i32* @TAG_NTFS, align 4
  %61 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %59, i32 %60)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %291

62:                                               ; preds = %48
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %64 = call i32 @RtlZeroMemory(%struct.TYPE_24__* %63, i32 4)
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 8
  store %struct.TYPE_24__* %65, %struct.TYPE_24__** %67, align 8
  %68 = load i32, i32* @NonPagedPool, align 4
  %69 = load i64, i64* %15, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @TAG_NTFS, align 4
  %72 = call i8* @ExAllocatePoolWithTag(i32 %68, i32 %70, i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %73, %struct.TYPE_24__** %14, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %75 = icmp ne %struct.TYPE_24__* %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %62
  %77 = call i32 @DPRINT1(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %79 = load i32, i32* @TAG_NTFS, align 4
  %80 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %78, i32 %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %82 = load i32, i32* @TAG_NTFS, align 4
  %83 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %81, i32 %82)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %291

84:                                               ; preds = %62
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64*, i64** %16, align 8
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @GetAllocationOffsetFromVCN(%struct.TYPE_25__* %85, i64 %86, i64 %88)
  store i32 %89, i32* %19, align 4
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %19, align 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %94 = ptrtoint %struct.TYPE_24__* %93 to i32
  %95 = load i64, i64* %15, align 8
  %96 = call i64 @ReadAttribute(%struct.TYPE_25__* %90, i32* %91, i32 %92, i32 %94, i64 %95)
  store i64 %96, i64* %20, align 8
  %97 = load i64, i64* %20, align 8
  %98 = load i64, i64* %15, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NRH_INDX_TYPE, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @NT_ASSERT(i32 %108)
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %16, align 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %112, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @NT_ASSERT(i32 %116)
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 7
  %121 = call i32 @FixupUpdateSequenceArray(%struct.TYPE_25__* %118, %struct.TYPE_20__* %120)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @NT_SUCCESS(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %84
  %126 = call i32 @DPRINT1(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %128 = load i32, i32* @TAG_NTFS, align 4
  %129 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %127, i32 %128)
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %131 = load i32, i32* @TAG_NTFS, align 4
  %132 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %130, i32 %131)
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %134 = load i32, i32* @TAG_NTFS, align 4
  %135 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %133, i32 %134)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %291

136:                                              ; preds = %84
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 6
  %139 = ptrtoint %struct.TYPE_22__* %138 to i64
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %139, %143
  %145 = inttoptr i64 %144 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %145, %struct.TYPE_23__** %12, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %146, %struct.TYPE_23__** %11, align 8
  br label %147

147:                                              ; preds = %264, %136
  %148 = load i64, i64* %13, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %154, label %279

154:                                              ; preds = %147
  %155 = load i32, i32* @NonPagedPool, align 4
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @TAG_NTFS, align 4
  %160 = call i8* @ExAllocatePoolWithTag(i32 %155, i32 %158, i32 %159)
  %161 = bitcast i8* %160 to %struct.TYPE_23__*
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 2
  store %struct.TYPE_23__* %161, %struct.TYPE_23__** %163, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %165, align 8
  %167 = icmp ne %struct.TYPE_23__* %166, null
  br i1 %167, label %175, label %168

168:                                              ; preds = %154
  %169 = call i32 @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %171 = call i32 @DestroyBTreeNode(%struct.TYPE_24__* %170)
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %173 = load i32, i32* @TAG_NTFS, align 4
  %174 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %172, i32 %173)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %291

175:                                              ; preds = %154
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @NTFS_INDEX_ENTRY_END, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %234, label %186

186:                                              ; preds = %175
  %187 = load i32, i32* @NonPagedPool, align 4
  %188 = load i32, i32* @TAG_NTFS, align 4
  %189 = call i8* @ExAllocatePoolWithTag(i32 %187, i32 4, i32 %188)
  %190 = bitcast i8* %189 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %190, %struct.TYPE_24__** %21, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %192 = icmp ne %struct.TYPE_24__* %191, null
  br i1 %192, label %200, label %193

193:                                              ; preds = %186
  %194 = call i32 @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %196 = call i32 @DestroyBTreeNode(%struct.TYPE_24__* %195)
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %198 = load i32, i32* @TAG_NTFS, align 4
  %199 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %197, i32 %198)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %291

200:                                              ; preds = %186
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %202 = call i32 @RtlZeroMemory(%struct.TYPE_24__* %201, i32 4)
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 4
  store %struct.TYPE_24__* %203, %struct.TYPE_24__** %205, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %207, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @RtlCopyMemory(%struct.TYPE_23__* %208, %struct.TYPE_23__* %209, i32 %212)
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %200
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load i32*, i32** %8, align 8
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %227, align 8
  %229 = call %struct.TYPE_24__* @CreateBTreeNodeFromIndexNode(%struct.TYPE_25__* %223, i32 %224, i32* %225, %struct.TYPE_23__* %228)
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 3
  store %struct.TYPE_24__* %229, %struct.TYPE_24__** %231, align 8
  br label %232

232:                                              ; preds = %222, %200
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %233, %struct.TYPE_24__** %17, align 8
  br label %264

234:                                              ; preds = %175
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %236, align 8
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @RtlCopyMemory(%struct.TYPE_23__* %237, %struct.TYPE_23__* %238, i32 %241)
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %244, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %234
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %255 = load i32, i32* %7, align 4
  %256 = load i32*, i32** %8, align 8
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %258, align 8
  %260 = call %struct.TYPE_24__* @CreateBTreeNodeFromIndexNode(%struct.TYPE_25__* %254, i32 %255, i32* %256, %struct.TYPE_23__* %259)
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 3
  store %struct.TYPE_24__* %260, %struct.TYPE_24__** %262, align 8
  br label %263

263:                                              ; preds = %253, %234
  br label %279

264:                                              ; preds = %232
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %13, align 8
  %270 = add nsw i64 %269, %268
  store i64 %270, i64* %13, align 8
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %272 = ptrtoint %struct.TYPE_23__* %271 to i64
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %272, %276
  %278 = inttoptr i64 %277 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %278, %struct.TYPE_23__** %11, align 8
  br label %147

279:                                              ; preds = %263, %147
  %280 = load i64*, i64** %16, align 8
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  %284 = load i32, i32* @TRUE, align 4
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 8
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %288 = load i32, i32* @TAG_NTFS, align 4
  %289 = call i32 @ExFreePoolWithTag(%struct.TYPE_24__* %287, i32 %288)
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %290, %struct.TYPE_24__** %5, align 8
  br label %291

291:                                              ; preds = %279, %193, %168, %125, %76, %57, %46, %28
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  ret %struct.TYPE_24__* %292
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i8* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @GetAllocationOffsetFromVCN(%struct.TYPE_25__*, i64, i64) #1

declare dso_local i64 @ReadAttribute(%struct.TYPE_25__*, i32*, i32, i32, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @NT_ASSERT(i32) #1

declare dso_local i32 @FixupUpdateSequenceArray(%struct.TYPE_25__*, %struct.TYPE_20__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DestroyBTreeNode(%struct.TYPE_24__*) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
