; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_create.c_FindFile.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_create.c_FindFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_26__ = type { i32*, i32, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_26__, i32, %struct.TYPE_26__, i64 }

@.str = private unnamed_addr constant [53 x i8] c"FindFile(Parent %p, FileToFind '%wZ', DirIndex: %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"FindFile: Path %wZ\0A\00", align 1
@LONGNAME_MAX_LENGTH = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NAME = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"FindFile: new Name %wZ, DirIndex %u (%u)\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"FCB not found for %wZ\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@STATUS_NO_MORE_ENTRIES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [86 x i8] c"WARNING: File system corruption detected. You may need to run a disk repair utility.\0A\00", align 1
@VfatGlobalData = common dso_local global %struct.TYPE_29__* null, align 8
@VFAT_BREAK_ON_CORRUPTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"FindFile: new Name %wZ, DirIndex %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FindFile(i32 %0, %struct.TYPE_28__* %1, %struct.TYPE_26__* %2, %struct.TYPE_27__* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_26__, align 8
  %20 = alloca %struct.TYPE_26__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %15, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @vfatVolumeIsFatX(i32 %24)
  store i64 %25, i64* %22, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.TYPE_28__* %26, %struct.TYPE_26__* %27, i64 %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %34 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %33)
  %35 = load i32, i32* @LONGNAME_MAX_LENGTH, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @NonPagedPool, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @TAG_NAME, align 4
  %45 = call i32* @ExAllocatePoolWithTag(i32 %39, i32 %43, i32 %44)
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %5
  %49 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %49, i64* %6, align 8
  br label %375

50:                                               ; preds = %5
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %63 = call i64 @FsRtlDoesNameContainWildCards(%struct.TYPE_26__* %62)
  store i64 %63, i64* %21, align 8
  %64 = load i64, i64* %21, align 8
  %65 = load i64, i64* @FALSE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %168

67:                                               ; preds = %50
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 1
  %70 = call i32 @RtlCopyUnicodeString(%struct.TYPE_26__* %19, i32* %69)
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %72 = call i32 @vfatFCBIsRoot(%struct.TYPE_28__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 4
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32 92, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, 4
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  br label %87

87:                                               ; preds = %74, %67
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %89 = call i32 @RtlAppendUnicodeStringToString(%struct.TYPE_26__* %19, %struct.TYPE_26__* %88)
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %94, 4
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  store i32 0, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call %struct.TYPE_28__* @vfatGrabFCBFromTable(i32 %97, %struct.TYPE_26__* %19)
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %17, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %100 = icmp ne %struct.TYPE_28__* %99, null
  br i1 %100, label %101, label %167

101:                                              ; preds = %87
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %23, align 8
  %105 = load i64, i64* %22, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %109 = call i32 @vfatFCBIsRoot(%struct.TYPE_28__* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* %23, align 8
  %113 = add nsw i64 %112, 2
  store i64 %113, i64* %23, align 8
  br label %114

114:                                              ; preds = %111, %107, %101
  %115 = load i64, i64* %23, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sge i64 %115, %118
  br i1 %119, label %120, label %156

120:                                              ; preds = %114
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 5
  %125 = call i32 @RtlCopyUnicodeString(%struct.TYPE_26__* %122, i32* %124)
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 4
  %130 = call i32 @RtlCopyUnicodeString(%struct.TYPE_26__* %127, i32* %129)
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  %135 = call i32 @RtlCopyMemory(i32* %132, i32* %134, i32 4)
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 4
  store i64 %138, i64* %140, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_26__* %147, i64 %150, i64 %153)
  %155 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %155, i64* %14, align 8
  br label %159

156:                                              ; preds = %114
  %157 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_26__* %19)
  %158 = load i64, i64* @STATUS_UNSUCCESSFUL, align 8
  store i64 %158, i64* %14, align 8
  br label %159

159:                                              ; preds = %156, %120
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %162 = call i32 @vfatReleaseFCB(i32 %160, %struct.TYPE_28__* %161)
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* @TAG_NAME, align 4
  %165 = call i32 @ExFreePoolWithTag(i32* %163, i32 %164)
  %166 = load i64, i64* %14, align 8
  store i64 %166, i64* %6, align 8
  br label %375

167:                                              ; preds = %87
  br label %168

168:                                              ; preds = %167, %50
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %170 = load i64, i64* @TRUE, align 8
  %171 = call i64 @RtlUpcaseUnicodeString(%struct.TYPE_26__* %20, %struct.TYPE_26__* %169, i64 %170)
  store i64 %171, i64* %14, align 8
  %172 = load i64, i64* %14, align 8
  %173 = call i32 @NT_SUCCESS(i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %168
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* @TAG_NAME, align 4
  %178 = call i32 @ExFreePoolWithTag(i32* %176, i32 %177)
  %179 = load i64, i64* %14, align 8
  store i64 %179, i64* %6, align 8
  br label %375

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %358, %242, %201, %180
  %182 = load i64, i64* @TRUE, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %363

184:                                              ; preds = %181
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %188 = load i64, i64* %11, align 8
  %189 = call i64 @VfatGetNextDirEntry(i32 %185, i32** %15, i32** %16, %struct.TYPE_28__* %186, %struct.TYPE_27__* %187, i64 %188)
  store i64 %189, i64* %14, align 8
  %190 = load i64, i64* @FALSE, align 8
  store i64 %190, i64* %11, align 8
  %191 = load i64, i64* %14, align 8
  %192 = load i64, i64* @STATUS_NO_MORE_ENTRIES, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  br label %363

195:                                              ; preds = %184
  %196 = load i64, i64* %22, align 8
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 2
  %199 = call i64 @ENTRY_VOLUME(i64 %196, i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  br label %181

206:                                              ; preds = %195
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %247

218:                                              ; preds = %212, %206
  %219 = call i32 @DPRINT1(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** @VfatGlobalData, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @VFAT_BREAK_ON_CORRUPTION, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %242

226:                                              ; preds = %218
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br label %238

238:                                              ; preds = %232, %226
  %239 = phi i1 [ false, %226 ], [ %237, %232 ]
  %240 = zext i1 %239 to i32
  %241 = call i32 @ASSERT(i32 %240)
  br label %242

242:                                              ; preds = %238, %218
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %244, align 8
  br label %181

247:                                              ; preds = %212
  %248 = load i64, i64* %21, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %247
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 1
  %253 = load i64, i64* @TRUE, align 8
  %254 = call i64 @FsRtlIsNameInExpression(%struct.TYPE_26__* %20, %struct.TYPE_26__* %252, i64 %253, i32* null)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %262, label %256

256:                                              ; preds = %250
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 3
  %259 = load i64, i64* @TRUE, align 8
  %260 = call i64 @FsRtlIsNameInExpression(%struct.TYPE_26__* %20, %struct.TYPE_26__* %258, i64 %259, i32* null)
  %261 = icmp ne i64 %260, 0
  br label %262

262:                                              ; preds = %256, %250
  %263 = phi i1 [ true, %250 ], [ %261, %256 ]
  %264 = zext i1 %263 to i32
  %265 = sext i32 %264 to i64
  store i64 %265, i64* %18, align 8
  br label %284

266:                                              ; preds = %247
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %270 = load i64, i64* @TRUE, align 8
  %271 = call i64 @FsRtlAreNamesEqual(%struct.TYPE_26__* %268, %struct.TYPE_26__* %269, i64 %270, i32* null)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %280, label %273

273:                                              ; preds = %266
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 3
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %277 = load i64, i64* @TRUE, align 8
  %278 = call i64 @FsRtlAreNamesEqual(%struct.TYPE_26__* %275, %struct.TYPE_26__* %276, i64 %277, i32* null)
  %279 = icmp ne i64 %278, 0
  br label %280

280:                                              ; preds = %273, %266
  %281 = phi i1 [ true, %266 ], [ %279, %273 ]
  %282 = zext i1 %281 to i32
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %18, align 8
  br label %284

284:                                              ; preds = %280, %262
  %285 = load i64, i64* %18, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %358

287:                                              ; preds = %284
  %288 = load i64, i64* %21, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %335

290:                                              ; preds = %287
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 1
  %293 = call i32 @RtlCopyUnicodeString(%struct.TYPE_26__* %19, i32* %292)
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %295 = call i32 @vfatFCBIsRoot(%struct.TYPE_28__* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %310, label %297

297:                                              ; preds = %290
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = udiv i64 %302, 4
  %304 = getelementptr inbounds i32, i32* %299, i64 %303
  store i32 92, i32* %304, align 4
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = add i64 %307, 4
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %305, align 8
  br label %310

310:                                              ; preds = %297, %290
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 1
  %313 = call i32 @RtlAppendUnicodeStringToString(%struct.TYPE_26__* %19, %struct.TYPE_26__* %312)
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = udiv i64 %318, 4
  %320 = getelementptr inbounds i32, i32* %315, i64 %319
  store i32 0, i32* %320, align 4
  %321 = load i32, i32* %7, align 4
  %322 = call %struct.TYPE_28__* @vfatGrabFCBFromTable(i32 %321, %struct.TYPE_26__* %19)
  store %struct.TYPE_28__* %322, %struct.TYPE_28__** %17, align 8
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %324 = icmp ne %struct.TYPE_28__* %323, null
  br i1 %324, label %325, label %334

325:                                              ; preds = %310
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 0
  %330 = call i32 @RtlCopyMemory(i32* %327, i32* %329, i32 4)
  %331 = load i32, i32* %7, align 4
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %333 = call i32 @vfatReleaseFCB(i32 %331, %struct.TYPE_28__* %332)
  br label %334

334:                                              ; preds = %325, %310
  br label %335

335:                                              ; preds = %334, %287
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %339)
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_26__* %342, i64 %345)
  %347 = load i32*, i32** %15, align 8
  %348 = icmp ne i32* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %335
  %350 = load i32*, i32** %15, align 8
  %351 = call i32 @CcUnpinData(i32* %350)
  br label %352

352:                                              ; preds = %349, %335
  %353 = call i32 @RtlFreeUnicodeString(%struct.TYPE_26__* %20)
  %354 = load i32*, i32** %12, align 8
  %355 = load i32, i32* @TAG_NAME, align 4
  %356 = call i32 @ExFreePoolWithTag(i32* %354, i32 %355)
  %357 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %357, i64* %6, align 8
  br label %375

358:                                              ; preds = %284
  %359 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = add nsw i64 %361, 1
  store i64 %362, i64* %360, align 8
  br label %181

363:                                              ; preds = %194, %181
  %364 = load i32*, i32** %15, align 8
  %365 = icmp ne i32* %364, null
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = load i32*, i32** %15, align 8
  %368 = call i32 @CcUnpinData(i32* %367)
  br label %369

369:                                              ; preds = %366, %363
  %370 = call i32 @RtlFreeUnicodeString(%struct.TYPE_26__* %20)
  %371 = load i32*, i32** %12, align 8
  %372 = load i32, i32* @TAG_NAME, align 4
  %373 = call i32 @ExFreePoolWithTag(i32* %371, i32 %372)
  %374 = load i64, i64* %14, align 8
  store i64 %374, i64* %6, align 8
  br label %375

375:                                              ; preds = %369, %352, %175, %159, %48
  %376 = load i64, i64* %6, align 8
  ret i64 %376
}

declare dso_local i64 @vfatVolumeIsFatX(i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i64 @FsRtlDoesNameContainWildCards(%struct.TYPE_26__*) #1

declare dso_local i32 @RtlCopyUnicodeString(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @vfatFCBIsRoot(%struct.TYPE_28__*) #1

declare dso_local i32 @RtlAppendUnicodeStringToString(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_28__* @vfatGrabFCBFromTable(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32 @vfatReleaseFCB(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @ExFreePoolWithTag(i32*, i32) #1

declare dso_local i64 @RtlUpcaseUnicodeString(%struct.TYPE_26__*, %struct.TYPE_26__*, i64) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i64 @VfatGetNextDirEntry(i32, i32**, i32**, %struct.TYPE_28__*, %struct.TYPE_27__*, i64) #1

declare dso_local i64 @ENTRY_VOLUME(i64, i32*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @FsRtlIsNameInExpression(%struct.TYPE_26__*, %struct.TYPE_26__*, i64, i32*) #1

declare dso_local i64 @FsRtlAreNamesEqual(%struct.TYPE_26__*, %struct.TYPE_26__*, i64, i32*) #1

declare dso_local i32 @CcUnpinData(i32*) #1

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
