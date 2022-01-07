; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_BrowseIndexEntries.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_BrowseIndexEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"BrowseIndexEntries(%p, %p, %p, %lu, %p, %p, %wZ, %lu, %lu, %s, %s, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@AttributeIndexAllocation = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 36, i32 73, i32 51, i32 48, i32 0], align 4
@AttributeBitmap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Potential file system corruption detected!\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Error: failed to allocate bitmap!\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"ERROR: Failed to read bitmap attribute!\0A\00", align 1
@NTFS_INDEX_ENTRY_NODE = common dso_local global i32 0, align 4
@INDEX_ROOT_LARGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Filesystem corruption detected!\0A\00", align 1
@NTFS_INDEX_ENTRY_END = common dso_local global i32 0, align 4
@NTFS_MFT_MASK = common dso_local global i32 0, align 4
@NTFS_FILE_FIRST_USER_FILE = common dso_local global i32 0, align 4
@NTFS_FILE_NAME_DOS = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_OBJECT_PATH_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BrowseIndexEntries(i32 %0, i32 %1, %struct.TYPE_25__* %2, i64 %3, %struct.TYPE_26__* %4, %struct.TYPE_26__* %5, i32 %6, i64* %7, i64* %8, i32 %9, i32 %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_26__*, align 8
  %28 = alloca %struct.TYPE_24__*, align 8
  %29 = alloca %struct.TYPE_24__*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i32 %1, i32* %15, align 4
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %16, align 8
  store i64 %3, i64* %17, align 8
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %5, %struct.TYPE_26__** %19, align 8
  store i32 %6, i32* %20, align 4
  store i64* %7, i64** %21, align 8
  store i64* %8, i64** %22, align 8
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32* %11, i32** %25, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %40 = load i32, i32* %20, align 4
  %41 = load i64*, i64** %21, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %22, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %23, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %49 = load i32, i32* %24, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32*, i32** %25, align 8
  %54 = call i32 @DPRINT(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, %struct.TYPE_25__* %36, i64 %37, %struct.TYPE_26__* %38, %struct.TYPE_26__* %39, i32 %40, i64 %42, i64 %44, i8* %48, i8* %52, i32* %53)
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @AttributeIndexAllocation, align 4
  %58 = call i32 @FindAttribute(i32 %55, i32 %56, i32 %57, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 4, %struct.TYPE_24__** %28, i32* null)
  store i32 %58, i32* %26, align 4
  %59 = load i32, i32* %26, align 4
  %60 = call i64 @NT_SUCCESS(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %131

62:                                               ; preds = %12
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @AttributeBitmap, align 4
  %66 = call i32 @FindAttribute(i32 %63, i32 %64, i32 %65, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 4, %struct.TYPE_24__** %29, i32* null)
  store i32 %66, i32* %26, align 4
  %67 = load i32, i32* %26, align 4
  %68 = call i64 @NT_SUCCESS(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %62
  %71 = call i32 @DPRINT1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %73 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %72)
  %74 = load i32, i32* %26, align 4
  store i32 %74, i32* %13, align 4
  br label %280

75:                                               ; preds = %62
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @AttributeDataLength(i32 %78)
  store i32 %79, i32* %33, align 4
  %80 = load i32, i32* @NonPagedPool, align 4
  %81 = load i32, i32* %33, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @TAG_NTFS, align 4
  %86 = call i64* @ExAllocatePoolWithTag(i32 %80, i32 %84, i32 %85)
  store i64* %86, i64** %30, align 8
  %87 = load i64*, i64** %30, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %75
  %90 = call i32 @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %92 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %91)
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %94 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %93)
  %95 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %95, i32* %13, align 4
  br label %280

96:                                               ; preds = %75
  %97 = load i64*, i64** %30, align 8
  %98 = load i32, i32* %33, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @RtlZeroMemory(i64* %97, i32 %101)
  %103 = load i64*, i64** %30, align 8
  %104 = ptrtoint i64* %103 to i32
  %105 = call i64 @ALIGN_UP_BY(i32 %104, i32 8)
  %106 = inttoptr i64 %105 to i64*
  store i64* %106, i64** %31, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %109 = load i64*, i64** %31, align 8
  %110 = ptrtoint i64* %109 to i64
  %111 = load i32, i32* %33, align 4
  %112 = call i32 @ReadAttribute(i32 %107, %struct.TYPE_24__* %108, i32 0, i64 %110, i32 %111)
  store i32 %112, i32* %26, align 4
  %113 = load i32, i32* %26, align 4
  %114 = call i64 @NT_SUCCESS(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %96
  %117 = call i32 @DPRINT1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %118 = load i64*, i64** %30, align 8
  %119 = load i32, i32* @TAG_NTFS, align 4
  %120 = call i32 @ExFreePoolWithTag(i64* %118, i32 %119)
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %122 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %124 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %123)
  %125 = load i32, i32* %26, align 4
  store i32 %125, i32* %13, align 4
  br label %280

126:                                              ; preds = %96
  %127 = load i64*, i64** %31, align 8
  %128 = load i32, i32* %33, align 4
  %129 = mul nsw i32 %128, 8
  %130 = call i32 @RtlInitializeBitMap(i32* %32, i64* %127, i32 %129)
  br label %132

131:                                              ; preds = %12
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %28, align 8
  br label %132

132:                                              ; preds = %131, %126
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %133, %struct.TYPE_26__** %27, align 8
  br label %134

134:                                              ; preds = %248, %132
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %137 = icmp ule %struct.TYPE_26__* %135, %136
  br i1 %137, label %138, label %267

138:                                              ; preds = %134
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %186

145:                                              ; preds = %138
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @INDEX_ROOT_LARGE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %155 = icmp ne %struct.TYPE_24__* %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %153, %145
  %157 = call i32 @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %185

158:                                              ; preds = %153
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load i64, i64* %17, align 8
  %162 = load i32, i32* %20, align 4
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %165 = call i32 @GetIndexEntryVCN(%struct.TYPE_26__* %164)
  %166 = load i64*, i64** %21, align 8
  %167 = load i64*, i64** %22, align 8
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %24, align 4
  %170 = load i32*, i32** %25, align 8
  %171 = call i32 @BrowseSubNodeIndexEntries(i32 %159, i32 %160, i64 %161, i32 %162, %struct.TYPE_24__* %163, i32* %32, i32 %165, i64* %166, i64* %167, i32 %168, i32 %169, i32* %170)
  store i32 %171, i32* %26, align 4
  %172 = load i32, i32* %26, align 4
  %173 = call i64 @NT_SUCCESS(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %158
  %176 = load i64*, i64** %30, align 8
  %177 = load i32, i32* @TAG_NTFS, align 4
  %178 = call i32 @ExFreePoolWithTag(i64* %176, i32 %177)
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %180 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %179)
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %182 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %181)
  %183 = load i32, i32* %26, align 4
  store i32 %183, i32* %13, align 4
  br label %280

184:                                              ; preds = %158
  br label %185

185:                                              ; preds = %184, %156
  br label %186

186:                                              ; preds = %185, %138
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @NTFS_INDEX_ENTRY_END, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  br label %267

194:                                              ; preds = %186
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @NTFS_MFT_MASK, align 4
  %201 = and i32 %199, %200
  %202 = load i32, i32* @NTFS_FILE_FIRST_USER_FILE, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %248

204:                                              ; preds = %194
  %205 = load i64*, i64** %22, align 8
  %206 = load i64, i64* %205, align 8
  %207 = load i64*, i64** %21, align 8
  %208 = load i64, i64* %207, align 8
  %209 = icmp sge i64 %206, %208
  br i1 %209, label %210, label %248

210:                                              ; preds = %204
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @NTFS_FILE_NAME_DOS, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %248

217:                                              ; preds = %210
  %218 = load i32, i32* %20, align 4
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* %24, align 4
  %222 = call i64 @CompareFileName(i32 %218, %struct.TYPE_26__* %219, i32 %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %248

224:                                              ; preds = %217
  %225 = load i64*, i64** %22, align 8
  %226 = load i64, i64* %225, align 8
  %227 = load i64*, i64** %21, align 8
  store i64 %226, i64* %227, align 8
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @NTFS_MFT_MASK, align 4
  %234 = and i32 %232, %233
  %235 = load i32*, i32** %25, align 8
  store i32 %234, i32* %235, align 4
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %237 = icmp ne %struct.TYPE_24__* %236, null
  br i1 %237, label %238, label %246

238:                                              ; preds = %224
  %239 = load i64*, i64** %30, align 8
  %240 = load i32, i32* @TAG_NTFS, align 4
  %241 = call i32 @ExFreePoolWithTag(i64* %239, i32 %240)
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %243 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %242)
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %245 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %244)
  br label %246

246:                                              ; preds = %238, %224
  %247 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %247, i32* %13, align 4
  br label %280

248:                                              ; preds = %217, %210, %204, %194
  %249 = load i64*, i64** %22, align 8
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* %249, align 8
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = icmp uge i64 %255, 4
  %257 = zext i1 %256 to i32
  %258 = call i32 @ASSERT(i32 %257)
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %260 = ptrtoint %struct.TYPE_26__* %259 to i64
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %260, %264
  %266 = inttoptr i64 %265 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %266, %struct.TYPE_26__** %27, align 8
  br label %134

267:                                              ; preds = %193, %134
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %269 = icmp ne %struct.TYPE_24__* %268, null
  br i1 %269, label %270, label %278

270:                                              ; preds = %267
  %271 = load i64*, i64** %30, align 8
  %272 = load i32, i32* @TAG_NTFS, align 4
  %273 = call i32 @ExFreePoolWithTag(i64* %271, i32 %272)
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %275 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %274)
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %277 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %276)
  br label %278

278:                                              ; preds = %270, %267
  %279 = load i32, i32* @STATUS_OBJECT_PATH_NOT_FOUND, align 4
  store i32 %279, i32* %13, align 4
  br label %280

280:                                              ; preds = %278, %246, %175, %116, %89, %70
  %281 = load i32, i32* %13, align 4
  ret i32 %281
}

declare dso_local i32 @DPRINT(i8*, i32, i32, %struct.TYPE_25__*, i64, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i64, i64, i8*, i8*, i32*) #1

declare dso_local i32 @FindAttribute(i32, i32, i32, i8*, i32, %struct.TYPE_24__**, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_24__*) #1

declare dso_local i32 @AttributeDataLength(i32) #1

declare dso_local i64* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @RtlZeroMemory(i64*, i32) #1

declare dso_local i64 @ALIGN_UP_BY(i32, i32) #1

declare dso_local i32 @ReadAttribute(i32, %struct.TYPE_24__*, i32, i64, i32) #1

declare dso_local i32 @ExFreePoolWithTag(i64*, i32) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i64*, i32) #1

declare dso_local i32 @BrowseSubNodeIndexEntries(i32, i32, i64, i32, %struct.TYPE_24__*, i32*, i32, i64*, i64*, i32, i32, i32*) #1

declare dso_local i32 @GetIndexEntryVCN(%struct.TYPE_26__*) #1

declare dso_local i64 @CompareFileName(i32, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
