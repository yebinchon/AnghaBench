; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_rw.c_NtfsReadFile.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_rw.c_NtfsReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32, i64 }
%struct.TYPE_22__ = type { i32, i32, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"NtfsReadFile(%p, %p, %p, %lu, %lu, %lx, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Null read!\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Compressed file!\0A\00", align 1
@UNIMPLEMENTED = common dso_local global i32 0, align 4
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Not enough memory!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Can't find record!\0A\00", align 1
@AttributeData = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"No '%S' data stream associated with file!\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Data stream: '%wZ' available\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Reading beyond stream end!\0A\00", align 1
@STATUS_END_OF_FILE = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c"Effective read: %lu at %lu for stream '%S'\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Read failure!\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"%lu got read\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*, i64, i64, i64, i64, i64*)* @NtfsReadFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsReadFile(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_24__*, align 8
  %30 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %31 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %24, align 8
  %33 = load i64, i64* %11, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %25, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64*, i64** %15, align 8
  %42 = call i32 (i8*, %struct.TYPE_27__*, ...) @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.TYPE_27__* %35, %struct.TYPE_26__* %36, i64 %37, i64 %38, i64 %39, i64 %40, i64* %41)
  %43 = load i64*, i64** %15, align 8
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %7
  %47 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %48, i32* %8, align 4
  br label %334

49:                                               ; preds = %7
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %17, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %55 = call i64 @NtfsFCBIsCompressed(%struct.TYPE_23__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @UNIMPLEMENTED, align 4
  %60 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %60, i32* %8, align 4
  br label %334

61:                                               ; preds = %49
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  %64 = call i32* @ExAllocateFromNPagedLookasideList(i32* %63)
  store i32* %64, i32** %18, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %69, i32* %8, align 4
  br label %334

70:                                               ; preds = %61
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %18, align 8
  %76 = call i32 @ReadFileRecord(%struct.TYPE_27__* %71, i32 %74, i32* %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i64 @NT_SUCCESS(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %70
  %81 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  %84 = load i32*, i32** %18, align 8
  %85 = call i32 @ExFreeToNPagedLookasideList(i32* %83, i32* %84)
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %8, align 4
  br label %334

87:                                               ; preds = %70
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %89 = load i32*, i32** %18, align 8
  %90 = load i64, i64* @AttributeData, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @wcslen(i32 %96)
  %98 = call i32 @FindAttribute(%struct.TYPE_27__* %88, i32* %89, i64 %90, i32 %93, i32 %97, %struct.TYPE_25__** %19, i32* null)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i64 @NT_SUCCESS(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %151, label %102

102:                                              ; preds = %87
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %108 = load i32*, i32** %18, align 8
  %109 = load i64, i64* @FALSE, align 8
  %110 = call i32 @FindFirstAttribute(i32* %28, %struct.TYPE_27__* %107, i32* %108, i64 %109, %struct.TYPE_24__** %29)
  store i32 %110, i32* %27, align 4
  br label %111

111:                                              ; preds = %140, %102
  %112 = load i32, i32* %27, align 4
  %113 = call i64 @NT_SUCCESS(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %111
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AttributeData, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %115
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  store i32 %127, i32* %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  store i32 %130, i32* %131, align 4
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %133 = ptrtoint %struct.TYPE_24__* %132 to i64
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 2
  store i64 %137, i64* %138, align 8
  %139 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_22__* %30)
  br label %140

140:                                              ; preds = %121, %115
  %141 = call i32 @FindNextAttribute(i32* %28, %struct.TYPE_24__** %29)
  store i32 %141, i32* %27, align 4
  br label %111

142:                                              ; preds = %111
  %143 = call i32 @FindCloseAttribute(i32* %28)
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %145 = call i32 @ReleaseAttributeContext(%struct.TYPE_25__* %144)
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 0
  %148 = load i32*, i32** %18, align 8
  %149 = call i32 @ExFreeToNPagedLookasideList(i32* %147, i32* %148)
  %150 = load i32, i32* %16, align 4
  store i32 %150, i32* %8, align 4
  br label %334

151:                                              ; preds = %87
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @AttributeDataLength(i32 %154)
  store i64 %155, i64* %26, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* %26, align 8
  %158 = icmp sge i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %151
  %160 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %162 = call i32 @ReleaseAttributeContext(%struct.TYPE_25__* %161)
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = load i32*, i32** %18, align 8
  %166 = call i32 @ExFreeToNPagedLookasideList(i32* %164, i32* %165)
  %167 = load i32, i32* @STATUS_END_OF_FILE, align 4
  store i32 %167, i32* %8, align 4
  br label %334

168:                                              ; preds = %151
  %169 = load i64, i64* %12, align 8
  store i64 %169, i64* %23, align 8
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* %12, align 8
  %172 = add nsw i64 %170, %171
  %173 = load i64, i64* %26, align 8
  %174 = icmp sgt i64 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = load i64, i64* %26, align 8
  %177 = load i64, i64* %13, align 8
  %178 = sub nsw i64 %176, %177
  store i64 %178, i64* %23, align 8
  br label %179

179:                                              ; preds = %175, %168
  %180 = load i64, i64* %13, align 8
  store i64 %180, i64* %21, align 8
  %181 = load i64, i64* %23, align 8
  store i64 %181, i64* %20, align 8
  %182 = load i64, i64* %13, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = srem i64 %182, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %179
  %190 = load i64, i64* %23, align 8
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = srem i64 %190, %194
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %257

197:                                              ; preds = %189, %179
  %198 = load i64, i64* %13, align 8
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @ROUND_DOWN(i64 %198, i64 %202)
  store i64 %203, i64* %21, align 8
  %204 = load i64, i64* %23, align 8
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @ROUND_UP(i64 %204, i64 %208)
  store i64 %209, i64* %20, align 8
  %210 = load i64, i64* %20, align 8
  %211 = load i64, i64* %21, align 8
  %212 = add nsw i64 %210, %211
  %213 = load i64, i64* %13, align 8
  %214 = load i64, i64* %12, align 8
  %215 = add nsw i64 %213, %214
  %216 = icmp slt i64 %212, %215
  br i1 %216, label %217, label %239

217:                                              ; preds = %197
  %218 = load i64, i64* %21, align 8
  %219 = load i64, i64* %20, align 8
  %220 = add nsw i64 %218, %219
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %220, %224
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @AttributeAllocatedLength(i32 %228)
  %230 = icmp sle i64 %225, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %217
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %20, align 8
  %237 = add nsw i64 %236, %235
  store i64 %237, i64* %20, align 8
  br label %238

238:                                              ; preds = %231, %217
  br label %239

239:                                              ; preds = %238, %197
  %240 = load i32, i32* @NonPagedPool, align 4
  %241 = load i64, i64* %20, align 8
  %242 = load i32, i32* @TAG_NTFS, align 4
  %243 = call i32* @ExAllocatePoolWithTag(i32 %240, i64 %241, i32 %242)
  store i32* %243, i32** %25, align 8
  %244 = load i32*, i32** %25, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %255

246:                                              ; preds = %239
  %247 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %249 = call i32 @ReleaseAttributeContext(%struct.TYPE_25__* %248)
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 0
  %252 = load i32*, i32** %18, align 8
  %253 = call i32 @ExFreeToNPagedLookasideList(i32* %251, i32* %252)
  %254 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %254, i32* %8, align 4
  br label %334

255:                                              ; preds = %239
  %256 = load i64, i64* @TRUE, align 8
  store i64 %256, i64* %24, align 8
  br label %257

257:                                              ; preds = %255, %189
  %258 = load i64, i64* %20, align 8
  %259 = inttoptr i64 %258 to %struct.TYPE_27__*
  %260 = load i64, i64* %21, align 8
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (i8*, %struct.TYPE_27__*, ...) @DPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_27__* %259, i64 %260, i32 %263)
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %267 = load i64, i64* %21, align 8
  %268 = load i32*, i32** %25, align 8
  %269 = load i64, i64* %20, align 8
  %270 = call i64 @ReadAttribute(%struct.TYPE_27__* %265, %struct.TYPE_25__* %266, i64 %267, i32* %268, i64 %269)
  store i64 %270, i64* %22, align 8
  %271 = load i64, i64* %22, align 8
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %289

273:                                              ; preds = %257
  %274 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %276 = call i32 @ReleaseAttributeContext(%struct.TYPE_25__* %275)
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %277, i32 0, i32 0
  %279 = load i32*, i32** %18, align 8
  %280 = call i32 @ExFreeToNPagedLookasideList(i32* %278, i32* %279)
  %281 = load i64, i64* %24, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %273
  %284 = load i32*, i32** %25, align 8
  %285 = load i32, i32* @TAG_NTFS, align 4
  %286 = call i32 @ExFreePoolWithTag(i32* %284, i32 %285)
  br label %287

287:                                              ; preds = %283, %273
  %288 = load i32, i32* %16, align 4
  store i32 %288, i32* %8, align 4
  br label %334

289:                                              ; preds = %257
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %291 = call i32 @ReleaseAttributeContext(%struct.TYPE_25__* %290)
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  %294 = load i32*, i32** %18, align 8
  %295 = call i32 @ExFreeToNPagedLookasideList(i32* %293, i32* %294)
  %296 = load i64, i64* %23, align 8
  %297 = load i64*, i64** %15, align 8
  store i64 %296, i64* %297, align 8
  %298 = load i64*, i64** %15, align 8
  %299 = load i64, i64* %298, align 8
  %300 = inttoptr i64 %299 to %struct.TYPE_27__*
  %301 = call i32 (i8*, %struct.TYPE_27__*, ...) @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_27__* %300)
  %302 = load i64, i64* %24, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %289
  %305 = load i64, i64* %11, align 8
  %306 = load i32*, i32** %25, align 8
  %307 = load i64, i64* %13, align 8
  %308 = load i64, i64* %21, align 8
  %309 = sub nsw i64 %307, %308
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  %311 = load i64, i64* %23, align 8
  %312 = call i32 @RtlCopyMemory(i64 %305, i32* %310, i64 %311)
  br label %313

313:                                              ; preds = %304, %289
  %314 = load i64, i64* %23, align 8
  %315 = load i64, i64* %12, align 8
  %316 = icmp ne i64 %314, %315
  br i1 %316, label %317, label %325

317:                                              ; preds = %313
  %318 = load i64, i64* %11, align 8
  %319 = load i64, i64* %23, align 8
  %320 = add nsw i64 %318, %319
  %321 = load i64, i64* %12, align 8
  %322 = load i64, i64* %23, align 8
  %323 = sub nsw i64 %321, %322
  %324 = call i32 @RtlZeroMemory(i64 %320, i64 %323)
  br label %325

325:                                              ; preds = %317, %313
  %326 = load i64, i64* %24, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load i32*, i32** %25, align 8
  %330 = load i32, i32* @TAG_NTFS, align 4
  %331 = call i32 @ExFreePoolWithTag(i32* %329, i32 %330)
  br label %332

332:                                              ; preds = %328, %325
  %333 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %333, i32* %8, align 4
  br label %334

334:                                              ; preds = %332, %287, %246, %159, %142, %80, %67, %57, %46
  %335 = load i32, i32* %8, align 4
  ret i32 %335
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_27__*, ...) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i64 @NtfsFCBIsCompressed(%struct.TYPE_23__*) #1

declare dso_local i32* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_27__*, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, i32*) #1

declare dso_local i32 @FindAttribute(%struct.TYPE_27__*, i32*, i64, i32, i32, %struct.TYPE_25__**, i32*) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @FindFirstAttribute(i32*, %struct.TYPE_27__*, i32*, i64, %struct.TYPE_24__**) #1

declare dso_local i32 @FindNextAttribute(i32*, %struct.TYPE_24__**) #1

declare dso_local i32 @FindCloseAttribute(i32*) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_25__*) #1

declare dso_local i64 @AttributeDataLength(i32) #1

declare dso_local i64 @ROUND_DOWN(i64, i64) #1

declare dso_local i64 @ROUND_UP(i64, i64) #1

declare dso_local i64 @AttributeAllocatedLength(i32) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local i64 @ReadAttribute(%struct.TYPE_27__*, %struct.TYPE_25__*, i64, i32*, i64) #1

declare dso_local i32 @ExFreePoolWithTag(i32*, i32) #1

declare dso_local i32 @RtlCopyMemory(i64, i32*, i64) #1

declare dso_local i32 @RtlZeroMemory(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
