; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_UpdateIndexEntryFileNameSize.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_UpdateIndexEntryFileNameSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i64, i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i64, i64, i64 }
%struct.TYPE_23__ = type { i64 }

@.str = private unnamed_addr constant [84 x i8] c"UpdateIndexEntrySize(%p, %p, %p, %lu, %p, %p, %wZ, %lu, %lu, %s, %I64u, %I64u, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@NTFS_INDEX_ENTRY_END = common dso_local global i32 0, align 4
@NTFS_MFT_MASK = common dso_local global i32 0, align 4
@NTFS_FILE_FIRST_USER_FILE = common dso_local global i32 0, align 4
@NTFS_FILE_NAME_DOS = common dso_local global i64 0, align 8
@STATUS_PENDING = common dso_local global i64 0, align 8
@STATUS_OBJECT_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@NTFS_INDEX_ENTRY_NODE = common dso_local global i32 0, align 4
@AttributeIndexAllocation = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 36, i32 73, i32 51, i32 48, i32 0], align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Corrupted filesystem!\0A\00", align 1
@NRH_INDX_TYPE = common dso_local global i64 0, align 8
@INDEX_BUFFER = common dso_local global i32 0, align 4
@Header = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Error: Failed to update fixup sequence array!\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"ERROR Performing write!\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @UpdateIndexEntryFileNameSize(i32* %0, %struct.TYPE_28__* %1, i32* %2, i64 %3, %struct.TYPE_26__* %4, %struct.TYPE_26__* %5, i32 %6, i64* %7, i64* %8, i32 %9, i64 %10, i64 %11, i32 %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_26__*, align 8
  %31 = alloca %struct.TYPE_25__*, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.TYPE_27__*, align 8
  %34 = alloca i64, align 8
  store i32* %0, i32** %15, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %16, align 8
  store i32* %2, i32** %17, align 8
  store i64 %3, i64* %18, align 8
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %5, %struct.TYPE_26__** %20, align 8
  store i32 %6, i32* %21, align 4
  store i64* %7, i64** %22, align 8
  store i64* %8, i64** %23, align 8
  store i32 %9, i32* %24, align 4
  store i64 %10, i64* %25, align 8
  store i64 %11, i64* %26, align 8
  store i32 %12, i32* %27, align 4
  %35 = load i32*, i32** %15, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = load i64, i64* %18, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %41 = load i32, i32* %21, align 4
  %42 = load i64*, i64** %22, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %23, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %24, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %50 = load i64, i64* %25, align 8
  %51 = load i64, i64* %26, align 8
  %52 = load i32, i32* %27, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %56 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32* %35, %struct.TYPE_28__* %36, i32* %37, i64 %38, %struct.TYPE_26__* %39, %struct.TYPE_26__* %40, i32 %41, i64 %43, i64 %45, i8* %49, i64 %50, i64 %51, i8* %55)
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %57, %struct.TYPE_26__** %30, align 8
  br label %58

58:                                               ; preds = %115, %13
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %61 = icmp ult %struct.TYPE_26__* %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NTFS_INDEX_ENTRY_END, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %62, %58
  %71 = phi i1 [ false, %58 ], [ %69, %62 ]
  br i1 %71, label %72, label %134

72:                                               ; preds = %70
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @NTFS_MFT_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @NTFS_FILE_FIRST_USER_FILE, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %72
  %83 = load i64*, i64** %23, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %22, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %84, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %82
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NTFS_FILE_NAME_DOS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %88
  %96 = load i32, i32* %21, align 4
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %27, align 4
  %100 = call i64 @CompareFileName(i32 %96, %struct.TYPE_26__* %97, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  %103 = load i64*, i64** %23, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %22, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* %25, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 2
  store i64 %106, i64* %109, align 8
  %110 = load i64, i64* %26, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  %114 = load i64, i64* @STATUS_PENDING, align 8
  store i64 %114, i64* %14, align 8
  br label %289

115:                                              ; preds = %95, %88, %82, %72
  %116 = load i64*, i64** %23, align 8
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp uge i64 %122, 4
  %124 = zext i1 %123 to i32
  %125 = call i32 @ASSERT(i32 %124)
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %127 = bitcast %struct.TYPE_26__* %126 to i32*
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = bitcast i32* %132 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %133, %struct.TYPE_26__** %30, align 8
  br label %58

134:                                              ; preds = %70
  %135 = load i32*, i32** %17, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i64, i64* @STATUS_OBJECT_PATH_NOT_FOUND, align 8
  store i64 %138, i64* %14, align 8
  br label %289

139:                                              ; preds = %134
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %139
  %147 = load i64, i64* @STATUS_OBJECT_PATH_NOT_FOUND, align 8
  store i64 %147, i64* %14, align 8
  br label %289

148:                                              ; preds = %139
  %149 = load i32*, i32** %15, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %151 = load i32, i32* @AttributeIndexAllocation, align 4
  %152 = call i64 @FindAttribute(i32* %149, %struct.TYPE_28__* %150, i32 %151, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 4, %struct.TYPE_25__** %31, i32* null)
  store i64 %152, i64* %28, align 8
  %153 = load i64, i64* %28, align 8
  %154 = call i64 @NT_SUCCESS(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %148
  %157 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i64, i64* %28, align 8
  store i64 %158, i64* %14, align 8
  br label %289

159:                                              ; preds = %148
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @AttributeDataLength(i32 %162)
  store i64 %163, i64* %32, align 8
  %164 = load i64, i64* @STATUS_OBJECT_PATH_NOT_FOUND, align 8
  store i64 %164, i64* %28, align 8
  store i64 0, i64* %29, align 8
  br label %165

165:                                              ; preds = %281, %159
  %166 = load i64, i64* %29, align 8
  %167 = load i64, i64* %32, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %285

169:                                              ; preds = %165
  %170 = load i32*, i32** %15, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %172 = load i64, i64* %29, align 8
  %173 = load i32*, i32** %17, align 8
  %174 = load i64, i64* %18, align 8
  %175 = call i32 @ReadAttribute(i32* %170, %struct.TYPE_25__* %171, i64 %172, i32* %173, i64 %174)
  %176 = load i32*, i32** %15, align 8
  %177 = load i32*, i32** %17, align 8
  %178 = bitcast i32* %177 to %struct.TYPE_28__*
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 0
  %180 = call i64 @FixupUpdateSequenceArray(i32* %176, i32* %179)
  store i64 %180, i64* %28, align 8
  %181 = load i64, i64* %28, align 8
  %182 = call i64 @NT_SUCCESS(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %169
  br label %285

185:                                              ; preds = %169
  %186 = load i32*, i32** %17, align 8
  %187 = bitcast i32* %186 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %187, %struct.TYPE_27__** %33, align 8
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @NRH_INDX_TYPE, align 8
  %193 = icmp eq i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @ASSERT(i32 %194)
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* @INDEX_BUFFER, align 4
  %201 = load i32, i32* @Header, align 4
  %202 = call i64 @FIELD_OFFSET(i32 %200, i32 %201)
  %203 = add nsw i64 %199, %202
  %204 = load i64, i64* %18, align 8
  %205 = icmp eq i64 %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @ASSERT(i32 %206)
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 0
  %210 = ptrtoint %struct.TYPE_24__* %209 to i64
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %210, %214
  %216 = inttoptr i64 %215 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %216, %struct.TYPE_26__** %19, align 8
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 0
  %219 = ptrtoint %struct.TYPE_24__* %218 to i64
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %219, %223
  %225 = inttoptr i64 %224 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %225, %struct.TYPE_26__** %20, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %228 = ptrtoint %struct.TYPE_27__* %227 to i64
  %229 = load i64, i64* %18, align 8
  %230 = add nsw i64 %228, %229
  %231 = inttoptr i64 %230 to %struct.TYPE_26__*
  %232 = icmp ule %struct.TYPE_26__* %226, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @ASSERT(i32 %233)
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %237 = load i32, i32* %21, align 4
  %238 = load i64*, i64** %22, align 8
  %239 = load i64*, i64** %23, align 8
  %240 = load i32, i32* %24, align 4
  %241 = load i64, i64* %25, align 8
  %242 = load i64, i64* %26, align 8
  %243 = load i32, i32* %27, align 4
  %244 = call i64 @UpdateIndexEntryFileNameSize(i32* null, %struct.TYPE_28__* null, i32* null, i64 0, %struct.TYPE_26__* %235, %struct.TYPE_26__* %236, i32 %237, i64* %238, i64* %239, i32 %240, i64 %241, i64 %242, i32 %243)
  store i64 %244, i64* %28, align 8
  %245 = load i64, i64* %28, align 8
  %246 = load i64, i64* @STATUS_PENDING, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %275

248:                                              ; preds = %185
  %249 = load i32*, i32** %15, align 8
  %250 = load i32*, i32** %17, align 8
  %251 = bitcast i32* %250 to %struct.TYPE_28__*
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 0
  %253 = call i64 @AddFixupArray(i32* %249, i32* %252)
  store i64 %253, i64* %28, align 8
  %254 = load i64, i64* %28, align 8
  %255 = call i64 @NT_SUCCESS(i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %248
  %258 = call i32 @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %285

259:                                              ; preds = %248
  %260 = load i32*, i32** %15, align 8
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %262 = load i64, i64* %29, align 8
  %263 = load i32*, i32** %17, align 8
  %264 = ptrtoint i32* %263 to i32
  %265 = load i64, i64* %18, align 8
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %267 = call i64 @WriteAttribute(i32* %260, %struct.TYPE_25__* %261, i64 %262, i32 %264, i64 %265, i64* %34, %struct.TYPE_28__* %266)
  store i64 %267, i64* %28, align 8
  %268 = load i64, i64* %28, align 8
  %269 = call i64 @NT_SUCCESS(i64 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %259
  %272 = call i32 @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %285

273:                                              ; preds = %259
  %274 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %274, i64* %28, align 8
  br label %285

275:                                              ; preds = %185
  %276 = load i64, i64* %28, align 8
  %277 = call i64 @NT_SUCCESS(i64 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %285

280:                                              ; preds = %275
  br label %281

281:                                              ; preds = %280
  %282 = load i64, i64* %18, align 8
  %283 = load i64, i64* %29, align 8
  %284 = add nsw i64 %283, %282
  store i64 %284, i64* %29, align 8
  br label %165

285:                                              ; preds = %279, %273, %271, %257, %184, %165
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %287 = call i32 @ReleaseAttributeContext(%struct.TYPE_25__* %286)
  %288 = load i64, i64* %28, align 8
  store i64 %288, i64* %14, align 8
  br label %289

289:                                              ; preds = %285, %156, %146, %137, %102
  %290 = load i64, i64* %14, align 8
  ret i64 %290
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @CompareFileName(i32, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @FindAttribute(i32*, %struct.TYPE_28__*, i32, i8*, i32, %struct.TYPE_25__**, i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i64 @AttributeDataLength(i32) #1

declare dso_local i32 @ReadAttribute(i32*, %struct.TYPE_25__*, i64, i32*, i64) #1

declare dso_local i64 @FixupUpdateSequenceArray(i32*, i32*) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i64 @AddFixupArray(i32*, i32*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i64 @WriteAttribute(i32*, %struct.TYPE_25__*, i64, i32, i64, i64*, %struct.TYPE_28__*) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
