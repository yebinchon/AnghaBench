; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_FreeClusters.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_FreeClusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Error: Unable to allocate memory for bitmap file record!\0A\00", align 1
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@NTFS_FILE_BITMAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Error: Unable to read file record for bitmap!\0A\00", align 1
@AttributeData = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Error: Unable to find data attribute for bitmap file!\0A\00", align 1
@ULONG_MAX = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Error: Unable to allocate memory for bitmap file data!\0A\00", align 1
@.str.5 = private unnamed_addr constant [115 x i8] c"DRIVER ERROR: FreeClusters called to free %lu clusters, which is %lu more clusters than are assigned to attribute!\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"ERROR: Couldn't allocate memory for data runs!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@AttributeEnd = common dso_local global i64 0, align 8
@ATTR_RECORD_ALIGNMENT = common dso_local global i32 0, align 4
@FILE_RECORD_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FreeClusters(%struct.TYPE_24__* %0, %struct.TYPE_26__* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %27 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i64, i64* %11, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %30, %31
  %33 = inttoptr i64 %32 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %14, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %34, %39
  store i64 %40, i64* %15, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = load i64, i64* %15, align 8
  %44 = add nsw i64 %42, %43
  %45 = inttoptr i64 %44 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %45, %struct.TYPE_25__** %16, align 8
  store i64 0, i64* %18, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %5
  %53 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %53, i32* %6, align 4
  br label %334

54:                                               ; preds = %5
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  %57 = call i32* @ExAllocateFromNPagedLookasideList(i32* %56)
  store i32* %57, i32** %19, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %62, i32* %6, align 4
  br label %334

63:                                               ; preds = %54
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %65 = load i32, i32* @NTFS_FILE_BITMAP, align 4
  %66 = load i32*, i32** %19, align 8
  %67 = call i32 @ReadFileRecord(%struct.TYPE_24__* %64, i32 %65, i32* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @NT_SUCCESS(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %63
  %72 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = load i32*, i32** %19, align 8
  %76 = call i32 @ExFreeToNPagedLookasideList(i32* %74, i32* %75)
  store i32 0, i32* %6, align 4
  br label %334

77:                                               ; preds = %63
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = load i32, i32* @AttributeData, align 4
  %81 = call i32 @FindAttribute(%struct.TYPE_24__* %78, i32* %79, i32 %80, i8* bitcast ([1 x i32]* @.str.2 to i8*), i32 0, %struct.TYPE_26__** %20, i32* null)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @NT_SUCCESS(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %77
  %86 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  %89 = load i32*, i32** %19, align 8
  %90 = call i32 @ExFreeToNPagedLookasideList(i32* %88, i32* %89)
  store i32 0, i32* %6, align 4
  br label %334

91:                                               ; preds = %77
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %93, align 8
  %95 = call i32 @AttributeDataLength(%struct.TYPE_20__* %94)
  store i32 %95, i32* %21, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* @ULONG_MAX, align 4
  %98 = call i8* @min(i32 %96, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* %21, align 4
  %101 = mul nsw i32 %100, 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %101, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @ASSERT(i32 %107)
  %109 = load i32, i32* @NonPagedPool, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ROUND_UP(i32 %110, i32 %114)
  %116 = load i32, i32* @TAG_NTFS, align 4
  %117 = call i32* @ExAllocatePoolWithTag(i32 %109, i32 %115, i32 %116)
  store i32* %117, i32** %22, align 8
  %118 = load i32*, i32** %22, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %91
  %121 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %123 = call i32 @ReleaseAttributeContext(%struct.TYPE_26__* %122)
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load i32*, i32** %19, align 8
  %127 = call i32 @ExFreeToNPagedLookasideList(i32* %125, i32* %126)
  store i32 0, i32* %6, align 4
  br label %334

128:                                              ; preds = %91
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %131 = load i32*, i32** %22, align 8
  %132 = ptrtoint i32* %131 to i32
  %133 = load i32, i32* %21, align 4
  %134 = sext i32 %133 to i64
  %135 = call i32 @ReadAttribute(%struct.TYPE_24__* %129, %struct.TYPE_26__* %130, i32 0, i32 %132, i64 %134)
  %136 = load i32*, i32** %22, align 8
  %137 = ptrtoint i32* %136 to i32
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @RtlInitializeBitMap(i32* %23, i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %162, %128
  %144 = load i64, i64* %13, align 8
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %194

146:                                              ; preds = %143
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 2
  %149 = call i32 @FsRtlLookupLastLargeMcbEntry(i32* %148, i32* %25, i32* %26)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %152, i32* %12, align 4
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.5, i64 0, i64 0), i64 %153, i64 %154)
  br label %194

156:                                              ; preds = %146
  %157 = load i32, i32* %26, align 4
  %158 = icmp ne i32 %157, -1
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %26, align 4
  %161 = call i32 @RtlClearBits(i32* %23, i32 %160, i32 1)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @FsRtlTruncateLargeMcb(i32* %164, i32 %170)
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %183, 1
  %185 = call i8* @min(i32 %177, i32 %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  store i32 %186, i32* %191, align 8
  %192 = load i64, i64* %13, align 8
  %193 = add nsw i64 %192, -1
  store i64 %193, i64* %13, align 8
  br label %143

194:                                              ; preds = %151, %143
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %197 = load i32*, i32** %22, align 8
  %198 = load i32, i32* %21, align 4
  %199 = sext i32 %198 to i64
  %200 = load i32*, i32** %10, align 8
  %201 = call i32 @WriteAttribute(%struct.TYPE_24__* %195, %struct.TYPE_26__* %196, i32 0, i32* %197, i64 %199, i64* %24, i32* %200)
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @NT_SUCCESS(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %216, label %205

205:                                              ; preds = %194
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %207 = call i32 @ReleaseAttributeContext(%struct.TYPE_26__* %206)
  %208 = load i32*, i32** %22, align 8
  %209 = load i32, i32* @TAG_NTFS, align 4
  %210 = call i32 @ExFreePoolWithTag(i32* %208, i32 %209)
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 1
  %213 = load i32*, i32** %19, align 8
  %214 = call i32 @ExFreeToNPagedLookasideList(i32* %212, i32* %213)
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %6, align 4
  br label %334

216:                                              ; preds = %194
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %218 = call i32 @ReleaseAttributeContext(%struct.TYPE_26__* %217)
  %219 = load i32*, i32** %22, align 8
  %220 = load i32, i32* @TAG_NTFS, align 4
  %221 = call i32 @ExFreePoolWithTag(i32* %219, i32 %220)
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 1
  %224 = load i32*, i32** %19, align 8
  %225 = call i32 @ExFreeToNPagedLookasideList(i32* %223, i32* %224)
  %226 = load i32, i32* @NonPagedPool, align 4
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @TAG_NTFS, align 4
  %232 = call i32* @ExAllocatePoolWithTag(i32 %226, i32 %230, i32 %231)
  store i32* %232, i32** %17, align 8
  %233 = load i32*, i32** %17, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %238, label %235

235:                                              ; preds = %216
  %236 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %237 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %237, i32* %6, align 4
  br label %334

238:                                              ; preds = %216
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 2
  %241 = load i32*, i32** %17, align 8
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @ConvertLargeMCBToDataRuns(i32* %240, i32* %241, i32 %245, i64* %18)
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 0
  store i32 %252, i32* %255, align 8
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %257 = ptrtoint %struct.TYPE_25__* %256 to i64
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %257, %261
  %263 = trunc i64 %262 to i32
  %264 = load i32*, i32** %17, align 8
  %265 = load i64, i64* %18, align 8
  %266 = call i32 @RtlCopyMemory(i32 %263, i32* %264, i64 %265)
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @AttributeEnd, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %314

272:                                              ; preds = %238
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* %18, align 8
  %280 = add nsw i64 %278, %279
  %281 = load i32, i32* @ATTR_RECORD_ALIGNMENT, align 4
  %282 = call i64 @ALIGN_UP_BY(i64 %280, i32 %281)
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 1
  store i64 %282, i64* %284, align 8
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp sle i64 %287, %292
  %294 = zext i1 %293 to i32
  %295 = call i32 @ASSERT(i32 %294)
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 0
  store i64 %298, i64* %302, align 8
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %304 = ptrtoint %struct.TYPE_25__* %303 to i64
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = add nsw i64 %304, %307
  %309 = inttoptr i64 %308 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %309, %struct.TYPE_25__** %16, align 8
  %310 = load i32*, i32** %10, align 8
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %312 = load i32, i32* @FILE_RECORD_END, align 4
  %313 = call i32 @SetFileRecordEnd(i32* %310, %struct.TYPE_25__* %311, i32 %312)
  br label %314

314:                                              ; preds = %272, %238
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32*, i32** %10, align 8
  %320 = call i32 @UpdateFileRecord(%struct.TYPE_24__* %315, i32 %318, i32* %319)
  store i32 %320, i32* %12, align 4
  %321 = load i32*, i32** %17, align 8
  %322 = load i32, i32* @TAG_NTFS, align 4
  %323 = call i32 @ExFreePoolWithTag(i32* %321, i32 %322)
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %325 = ptrtoint %struct.TYPE_25__* %324 to i64
  %326 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = add nsw i64 %325, %329
  %331 = inttoptr i64 %330 to i32*
  %332 = call i32 @NtfsDumpDataRuns(i32* %331, i32 0)
  %333 = load i32, i32* %12, align 4
  store i32 %333, i32* %6, align 4
  br label %334

334:                                              ; preds = %314, %235, %205, %120, %85, %71, %60, %52
  %335 = load i32, i32* %6, align 4
  ret i32 %335
}

declare dso_local i32* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, i32*) #1

declare dso_local i32 @FindAttribute(%struct.TYPE_24__*, i32*, i32, i8*, i32, %struct.TYPE_26__**, i32*) #1

declare dso_local i32 @AttributeDataLength(%struct.TYPE_20__*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_26__*) #1

declare dso_local i32 @ReadAttribute(%struct.TYPE_24__*, %struct.TYPE_26__*, i32, i32, i64) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i32, i32) #1

declare dso_local i32 @FsRtlLookupLastLargeMcbEntry(i32*, i32*, i32*) #1

declare dso_local i32 @RtlClearBits(i32*, i32, i32) #1

declare dso_local i32 @FsRtlTruncateLargeMcb(i32*, i32) #1

declare dso_local i32 @WriteAttribute(%struct.TYPE_24__*, %struct.TYPE_26__*, i32, i32*, i64, i64*, i32*) #1

declare dso_local i32 @ExFreePoolWithTag(i32*, i32) #1

declare dso_local i32 @ConvertLargeMCBToDataRuns(i32*, i32*, i32, i64*) #1

declare dso_local i32 @RtlCopyMemory(i32, i32*, i64) #1

declare dso_local i64 @ALIGN_UP_BY(i64, i32) #1

declare dso_local i32 @SetFileRecordEnd(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @UpdateFileRecord(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @NtfsDumpDataRuns(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
