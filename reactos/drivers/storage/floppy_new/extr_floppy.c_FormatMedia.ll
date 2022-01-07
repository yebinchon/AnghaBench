; ModuleID = '/home/carl/AnghaBench/reactos/drivers/storage/floppy_new/extr_floppy.c_FormatMedia.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/storage/floppy_new/extr_floppy.c_FormatMedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i32*, i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i32*, i32* }

@NonPagedPoolNxCacheAligned = common dso_local global i32 0, align 4
@MODE_DATA_SIZE = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@MODE_PAGE_FLEXIBILE = common dso_local global i32 0, align 4
@STATUS_INVALID_DEVICE_REQUEST = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MODE_FLEXIBLE_DISK_PAGE = common dso_local global i32 0, align 4
@StartWritePrecom = common dso_local global i32 0, align 4
@Drive120MMedia120M = common dso_local global i64 0, align 8
@DriveMediaConstants = common dso_local global %struct.TYPE_17__* null, align 8
@Drive360Media160 = common dso_local global i64 0, align 8
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@NonPagedPoolNx = common dso_local global i32 0, align 4
@SCSI_REQUEST_BLOCK_SIZE = common dso_local global i32 0, align 4
@SCSIOP_MODE_SELECT = common dso_local global i32 0, align 4
@SCSIOP_FORMAT_UNIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@NonPagedPoolCacheAligned = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FormatMedia(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %13 = call i32 (...) @PAGED_CODE()
  %14 = load i32, i32* @NonPagedPoolNxCacheAligned, align 4
  %15 = load i32, i32* @MODE_DATA_SIZE, align 4
  %16 = call %struct.TYPE_15__* @ExAllocatePool(i32 %14, i32 %15)
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = icmp eq %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %20, i32* %3, align 4
  br label %266

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = load i32, i32* @MODE_DATA_SIZE, align 4
  %24 = call i32 @RtlZeroMemory(%struct.TYPE_15__* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = load i32, i32* @MODE_DATA_SIZE, align 4
  %28 = load i32, i32* @MODE_PAGE_FLEXIBILE, align 4
  %29 = call i32 @ClassModeSense(i32 %25, %struct.TYPE_15__* %26, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = call i32 @ExFreePool(%struct.TYPE_15__* %34)
  %36 = load i32, i32* @STATUS_INVALID_DEVICE_REQUEST, align 4
  store i32 %36, i32* %3, align 4
  br label %266

37:                                               ; preds = %21
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @MODE_PAGE_FLEXIBILE, align 4
  %41 = load i32, i32* @TRUE, align 4
  %42 = call %struct.TYPE_16__* @ClassFindModePage(%struct.TYPE_15__* %38, i32 %39, i32 %40, i32 %41)
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %8, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = icmp eq %struct.TYPE_16__* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 2
  %50 = load i32, i32* @MODE_FLEXIBLE_DISK_PAGE, align 4
  %51 = load i32, i32* @StartWritePrecom, align 4
  %52 = call i64 @offsetof(i32 %50, i32 %51)
  %53 = trunc i64 %52 to i32
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %45, %37
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = call i32 @ExFreePool(%struct.TYPE_15__* %56)
  %58 = load i32, i32* @STATUS_INVALID_DEVICE_REQUEST, align 4
  store i32 %58, i32* %3, align 4
  br label %266

59:                                               ; preds = %45
  %60 = load i64, i64* @Drive120MMedia120M, align 8
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %78, %59
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** @DriveMediaConstants, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @Drive360Media160, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = call i32 @ExFreePool(%struct.TYPE_15__* %74)
  %76 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %76, i32* %3, align 4
  br label %266

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %9, align 8
  br label %61

81:                                               ; preds = %61
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** @DriveMediaConstants, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i64 %83
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %10, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %134, label %92

92:                                               ; preds = %81
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %134, label %100

100:                                              ; preds = %92
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  %110 = ashr i32 %109, 8
  %111 = icmp ne i32 %105, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %100
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = icmp ne i32 %117, %121
  br i1 %122, label %134, label %123

123:                                              ; preds = %112, %100
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 8
  %133 = icmp ne i32 %128, %132
  br i1 %133, label %134, label %235

134:                                              ; preds = %123, %112, %92, %81
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  %149 = ashr i32 %148, 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 %157, i32* %161, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  store i32 %165, i32* %169, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %171 = call i32 @RtlZeroMemory(%struct.TYPE_15__* %170, i32 4)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 2
  store i32 %175, i32* %11, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %177 = ptrtoint %struct.TYPE_15__* %176 to i64
  %178 = add i64 %177, 4
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @RtlMoveMemory(i64 %178, %struct.TYPE_16__* %179, i32 %180)
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = add i64 %183, 4
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* @NonPagedPoolNx, align 4
  %187 = load i32, i32* @SCSI_REQUEST_BLOCK_SIZE, align 4
  %188 = call %struct.TYPE_15__* @ExAllocatePool(i32 %186, i32 %187)
  store %struct.TYPE_15__* %188, %struct.TYPE_15__** %7, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %190 = icmp eq %struct.TYPE_15__* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %134
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %193 = call i32 @ExFreePool(%struct.TYPE_15__* %192)
  %194 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %194, i32* %3, align 4
  br label %266

195:                                              ; preds = %134
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %197 = load i32, i32* @SCSI_REQUEST_BLOCK_SIZE, align 4
  %198 = call i32 @RtlZeroMemory(%struct.TYPE_15__* %196, i32 %197)
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  store i32 6, i32* %200, align 8
  %201 = load i32, i32* @SCSIOP_MODE_SELECT, align 4
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  store i32 %201, i32* %205, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  store i32 %206, i32* %210, align 4
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, 16
  store i32 %216, i32* %214, align 4
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 2
  store i32 2, i32* %218, align 8
  %219 = load i32, i32* %4, align 4
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* @TRUE, align 4
  %224 = call i32 @ClassSendSrbSynchronous(i32 %219, %struct.TYPE_15__* %220, %struct.TYPE_15__* %221, i32 %222, i32 %223)
  store i32 %224, i32* %12, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %226 = call i32 @ExFreePool(%struct.TYPE_15__* %225)
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @NT_SUCCESS(i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %195
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %232 = call i32 @ExFreePool(%struct.TYPE_15__* %231)
  %233 = load i32, i32* %12, align 4
  store i32 %233, i32* %3, align 4
  br label %266

234:                                              ; preds = %195
  br label %246

235:                                              ; preds = %123
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %237 = call i32 @ExFreePool(%struct.TYPE_15__* %236)
  %238 = load i32, i32* @NonPagedPoolNx, align 4
  %239 = load i32, i32* @SCSI_REQUEST_BLOCK_SIZE, align 4
  %240 = call %struct.TYPE_15__* @ExAllocatePool(i32 %238, i32 %239)
  store %struct.TYPE_15__* %240, %struct.TYPE_15__** %7, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %242 = icmp eq %struct.TYPE_15__* %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %235
  %244 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %244, i32* %3, align 4
  br label %266

245:                                              ; preds = %235
  br label %246

246:                                              ; preds = %245, %234
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %248 = load i32, i32* @SCSI_REQUEST_BLOCK_SIZE, align 4
  %249 = call i32 @RtlZeroMemory(%struct.TYPE_15__* %247, i32 %248)
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  store i32 6, i32* %251, align 8
  %252 = load i32, i32* @SCSIOP_FORMAT_UNIT, align 4
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  store i32 %252, i32* %256, align 4
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 2
  store i32 600, i32* %258, align 8
  %259 = load i32, i32* %4, align 4
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %261 = load i32, i32* @FALSE, align 4
  %262 = call i32 @ClassSendSrbSynchronous(i32 %259, %struct.TYPE_15__* %260, %struct.TYPE_15__* null, i32 0, i32 %261)
  store i32 %262, i32* %12, align 4
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %264 = call i32 @ExFreePool(%struct.TYPE_15__* %263)
  %265 = load i32, i32* %12, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %246, %243, %230, %191, %73, %55, %33, %19
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local %struct.TYPE_15__* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ClassModeSense(i32, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @ClassFindModePage(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @RtlMoveMemory(i64, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ClassSendSrbSynchronous(i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
