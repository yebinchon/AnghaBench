; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CreateBTreeFromIndex.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CreateBTreeFromIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_32__ = type { i8*, %struct.TYPE_25__*, %struct.TYPE_32__*, i32, %struct.TYPE_32__*, %struct.TYPE_32__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32 }

@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CreateBTreeFromIndex(%p, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Couldn't allocate enough memory for B-Tree!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@AttributeIndexAllocation = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 36, i32 73, i32 51, i32 48, i32 0], align 4
@INDEX_ROOT_ATTRIBUTE = common dso_local global i32 0, align 4
@Header = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Filesystem corruption detected!\0A\00", align 1
@STATUS_FILE_CORRUPT_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"ERROR: Couldn't allocate memory for next key!\0A\00", align 1
@NTFS_INDEX_ENTRY_END = common dso_local global i32 0, align 4
@NTFS_INDEX_ENTRY_NODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"ERROR: Couldn't create child node!\0A\00", align 1
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateBTreeFromIndex(i32 %0, i32 %1, %struct.TYPE_29__* %2, %struct.TYPE_30__* %3, %struct.TYPE_32__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_32__**, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_32__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %9, align 8
  store %struct.TYPE_30__* %3, %struct.TYPE_30__** %10, align 8
  store %struct.TYPE_32__** %4, %struct.TYPE_32__*** %11, align 8
  %20 = load i32, i32* @NonPagedPool, align 4
  %21 = load i32, i32* @TAG_NTFS, align 4
  %22 = call i8* @ExAllocatePoolWithTag(i32 %20, i32 4, i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %23, %struct.TYPE_32__** %13, align 8
  %24 = load i32, i32* @NonPagedPool, align 4
  %25 = load i32, i32* @TAG_NTFS, align 4
  %26 = call i8* @ExAllocatePoolWithTag(i32 %24, i32 4, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %27, %struct.TYPE_32__** %14, align 8
  %28 = load i32, i32* @NonPagedPool, align 4
  %29 = load i32, i32* @TAG_NTFS, align 4
  %30 = call i8* @ExAllocatePoolWithTag(i32 %28, i32 4, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %31, %struct.TYPE_32__** %15, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %16, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %17, align 8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %37 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %11, align 8
  %38 = call i32 @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %36, %struct.TYPE_32__** %37)
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %40 = icmp ne %struct.TYPE_32__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %5
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %43 = icmp ne %struct.TYPE_32__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %46 = icmp ne %struct.TYPE_32__* %45, null
  br i1 %46, label %71, label %47

47:                                               ; preds = %44, %41, %5
  %48 = call i32 @DPRINT1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %50 = icmp ne %struct.TYPE_32__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %53 = load i32, i32* @TAG_NTFS, align 4
  %54 = call i32 @ExFreePoolWithTag(%struct.TYPE_32__* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %57 = icmp ne %struct.TYPE_32__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %60 = load i32, i32* @TAG_NTFS, align 4
  %61 = call i32 @ExFreePoolWithTag(%struct.TYPE_32__* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %64 = icmp ne %struct.TYPE_32__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %67 = load i32, i32* @TAG_NTFS, align 4
  %68 = call i32 @ExFreePoolWithTag(%struct.TYPE_32__* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %70, i32* %6, align 4
  br label %286

71:                                               ; preds = %44
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %73 = call i32 @RtlZeroMemory(%struct.TYPE_32__* %72, i32 4)
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %75 = call i32 @RtlZeroMemory(%struct.TYPE_32__* %74, i32 4)
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %77 = call i32 @RtlZeroMemory(%struct.TYPE_32__* %76, i32 4)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @AttributeIndexAllocation, align 4
  %81 = call i32 @FindAttribute(i32 %78, i32 %79, i32 %80, i8* bitcast ([5 x i32]* @.str.2 to i8*), i32 4, %struct.TYPE_29__** %17, i32* null)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @NT_SUCCESS(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %71
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %17, align 8
  br label %86

86:                                               ; preds = %85, %71
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 5
  store %struct.TYPE_32__* %87, %struct.TYPE_32__** %89, align 8
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 4
  store %struct.TYPE_32__* %90, %struct.TYPE_32__** %92, align 8
  %93 = load i32, i32* @INDEX_ROOT_ATTRIBUTE, align 4
  %94 = load i32, i32* @Header, align 4
  %95 = call i64 @FIELD_OFFSET(i32 %93, i32 %94)
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %95, %99
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %100, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %86
  %109 = call i32 @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %111 = call i32 @DestroyBTree(%struct.TYPE_32__* %110)
  %112 = load i32, i32* @STATUS_FILE_CORRUPT_ERROR, align 4
  store i32 %112, i32* %18, align 4
  br label %278

113:                                              ; preds = %86
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %115 = ptrtoint %struct.TYPE_30__* %114 to i64
  %116 = load i32, i32* @INDEX_ROOT_ATTRIBUTE, align 4
  %117 = load i32, i32* @Header, align 4
  %118 = call i64 @FIELD_OFFSET(i32 %116, i32 %117)
  %119 = add nsw i64 %115, %118
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %119, %123
  %125 = inttoptr i64 %124 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %125, %struct.TYPE_31__** %12, align 8
  br label %126

126:                                              ; preds = %273, %113
  %127 = load i64, i64* %16, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %127, %131
  br i1 %132, label %133, label %274

133:                                              ; preds = %126
  %134 = load i32, i32* @NonPagedPool, align 4
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @TAG_NTFS, align 4
  %139 = call i8* @ExAllocatePoolWithTag(i32 %134, i32 %137, i32 %138)
  %140 = bitcast i8* %139 to %struct.TYPE_25__*
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i32 0, i32 1
  store %struct.TYPE_25__* %140, %struct.TYPE_25__** %142, align 8
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %144, align 8
  %146 = icmp ne %struct.TYPE_25__* %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %133
  %148 = call i32 @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %150 = call i32 @DestroyBTree(%struct.TYPE_32__* %149)
  %151 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %151, i32* %18, align 4
  br label %278

152:                                              ; preds = %133
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @NTFS_INDEX_ENTRY_END, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %233, label %163

163:                                              ; preds = %152
  %164 = load i32, i32* @NonPagedPool, align 4
  %165 = load i32, i32* @TAG_NTFS, align 4
  %166 = call i8* @ExAllocatePoolWithTag(i32 %164, i32 4, i32 %165)
  %167 = bitcast i8* %166 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %167, %struct.TYPE_32__** %19, align 8
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %169 = icmp ne %struct.TYPE_32__* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %163
  %171 = call i32 @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %173 = call i32 @DestroyBTree(%struct.TYPE_32__* %172)
  %174 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %174, i32* %18, align 4
  br label %278

175:                                              ; preds = %163
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %177 = call i32 @RtlZeroMemory(%struct.TYPE_32__* %176, i32 4)
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 2
  store %struct.TYPE_32__* %178, %struct.TYPE_32__** %180, align 8
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %182, align 8
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @RtlCopyMemory(%struct.TYPE_25__* %183, %struct.TYPE_31__* %184, i32 %187)
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %175
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %202, align 8
  %204 = call i8* @CreateBTreeNodeFromIndexNode(i32 %198, %struct.TYPE_30__* %199, %struct.TYPE_29__* %200, %struct.TYPE_25__* %203)
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %205, i32 0, i32 0
  store i8* %204, i8** %206, align 8
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %216, label %211

211:                                              ; preds = %197
  %212 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %214 = call i32 @DestroyBTree(%struct.TYPE_32__* %213)
  %215 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %215, i32* %18, align 4
  br label %278

216:                                              ; preds = %197
  br label %217

217:                                              ; preds = %216, %175
  %218 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = load i64, i64* %16, align 8
  %223 = add nsw i64 %222, %221
  store i64 %223, i64* %16, align 8
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %225 = ptrtoint %struct.TYPE_31__* %224 to i64
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %225, %229
  %231 = inttoptr i64 %230 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %231, %struct.TYPE_31__** %12, align 8
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  store %struct.TYPE_32__* %232, %struct.TYPE_32__** %15, align 8
  br label %273

233:                                              ; preds = %152
  %234 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %235, align 8
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @RtlCopyMemory(%struct.TYPE_25__* %236, %struct.TYPE_31__* %237, i32 %240)
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 2
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %243, align 8
  %244 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %272

252:                                              ; preds = %233
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %256 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %257, align 8
  %259 = call i8* @CreateBTreeNodeFromIndexNode(i32 %253, %struct.TYPE_30__* %254, %struct.TYPE_29__* %255, %struct.TYPE_25__* %258)
  %260 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %260, i32 0, i32 0
  store i8* %259, i8** %261, align 8
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %263 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %271, label %266

266:                                              ; preds = %252
  %267 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %269 = call i32 @DestroyBTree(%struct.TYPE_32__* %268)
  %270 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %270, i32* %18, align 4
  br label %278

271:                                              ; preds = %252
  br label %272

272:                                              ; preds = %271, %233
  br label %274

273:                                              ; preds = %217
  br label %126

274:                                              ; preds = %272, %126
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %276 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %11, align 8
  store %struct.TYPE_32__* %275, %struct.TYPE_32__** %276, align 8
  %277 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %277, i32* %18, align 4
  br label %278

278:                                              ; preds = %274, %266, %211, %170, %147, %108
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %280 = icmp ne %struct.TYPE_29__* %279, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %283 = call i32 @ReleaseAttributeContext(%struct.TYPE_29__* %282)
  br label %284

284:                                              ; preds = %281, %278
  %285 = load i32, i32* %18, align 4
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %284, %69
  %287 = load i32, i32* %6, align 4
  ret i32 %287
}

declare dso_local i8* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_30__*, %struct.TYPE_32__**) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @FindAttribute(i32, i32, i32, i8*, i32, %struct.TYPE_29__**, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @DestroyBTree(%struct.TYPE_32__*) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_25__*, %struct.TYPE_31__*, i32) #1

declare dso_local i8* @CreateBTreeNodeFromIndexNode(i32, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
