; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fsctl.c_VfatLockOrUnlockVolume.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fsctl.c_VfatLockOrUnlockVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_23__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_23__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"VfatLockOrUnlockVolume(%p, %d)\0A\00", align 1
@FCB_IS_VOLUME = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@VCB_VOLUME_LOCKED = common dso_local global i32 0, align 4
@VPB_LOCKED = common dso_local global i32 0, align 4
@FSRTL_VOLUME_LOCK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@VCB_IS_SYS_OR_HAS_PAGE = common dso_local global i32 0, align 4
@VFATFCB = common dso_local global i32 0, align 4
@FcbListEntry = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't lock: %u opened\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Opened (%u - %u): %wZ\0A\00", align 1
@FSRTL_VOLUME_LOCK_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"HACK: Using lock-hack!\0A\00", align 1
@VCB_CLEAR_DIRTY = common dso_local global i32 0, align 4
@VCB_IS_DIRTY = common dso_local global i32 0, align 4
@FSRTL_VOLUME_UNLOCK = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i64)* @VfatLockOrUnlockVolume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VfatLockOrUnlockVolume(%struct.TYPE_21__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %13, i64 %14)
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %7, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %6, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %8, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %9, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FCB_IS_VOLUME, align 4
  %34 = call i64 @BooleanFlagOn(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %37, i32* %3, align 4
  br label %290

38:                                               ; preds = %2
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VCB_VOLUME_LOCKED, align 4
  %43 = call i64 @BooleanFlagOn(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @VCB_VOLUME_LOCKED, align 4
  %53 = call i64 @BooleanFlagOn(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55, %45
  %59 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %59, i32* %3, align 4
  br label %290

60:                                               ; preds = %55, %48
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VPB_LOCKED, align 4
  %65 = call i64 @BooleanFlagOn(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i64, i64* %5, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @VPB_LOCKED, align 4
  %75 = call i64 @BooleanFlagOn(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %70
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77, %67
  %81 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %81, i32* %3, align 4
  br label %290

82:                                               ; preds = %77, %70
  %83 = load i64, i64* %5, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FSRTL_VOLUME_LOCK, align 4
  %92 = call i32 @FsRtlNotifyVolumeEvent(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %85, %82
  %94 = load i64, i64* %5, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %216

96:                                               ; preds = %93
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %216

101:                                              ; preds = %96
  %102 = load i64, i64* @TRUE, align 8
  store i64 %102, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @VCB_IS_SYS_OR_HAS_PAGE, align 4
  %107 = call i64 @BooleanFlagOn(i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %162

109:                                              ; preds = %101
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  store %struct.TYPE_23__* %113, %struct.TYPE_23__** %10, align 8
  br label %114

114:                                              ; preds = %160, %131, %109
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 3
  %118 = icmp ne %struct.TYPE_23__* %115, %117
  br i1 %118, label %119, label %161

119:                                              ; preds = %114
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %121 = load i32, i32* @VFATFCB, align 4
  %122 = load i32, i32* @FcbListEntry, align 4
  %123 = call %struct.TYPE_22__* @CONTAINING_RECORD(%struct.TYPE_23__* %120, i32 %121, i32 %122)
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %8, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %125, align 8
  store %struct.TYPE_23__* %126, %struct.TYPE_23__** %10, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  br label %114

132:                                              ; preds = %119
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %134 = call i32 @vfatFCBIsDirectory(%struct.TYPE_22__* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* @FALSE, align 8
  store i64 %137, i64* %11, align 8
  br label %161

138:                                              ; preds = %132
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 1
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i64, i64* @FALSE, align 8
  store i64 %149, i64* %11, align 8
  br label %161

150:                                              ; preds = %143, %138
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp sgt i32 %156, 2
  br i1 %157, label %158, label %160

158:                                              ; preds = %150
  %159 = load i64, i64* @FALSE, align 8
  store i64 %159, i64* %11, align 8
  br label %161

160:                                              ; preds = %150
  br label %114

161:                                              ; preds = %158, %148, %136, %114
  br label %164

162:                                              ; preds = %101
  %163 = load i64, i64* @FALSE, align 8
  store i64 %163, i64* %11, align 8
  br label %164

164:                                              ; preds = %162, %161
  %165 = load i64, i64* %11, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %213, label %167

167:                                              ; preds = %164
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %174, align 8
  store %struct.TYPE_23__* %175, %struct.TYPE_23__** %10, align 8
  br label %176

176:                                              ; preds = %203, %167
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 3
  %180 = icmp ne %struct.TYPE_23__* %177, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %176
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %183 = load i32, i32* @VFATFCB, align 4
  %184 = load i32, i32* @FcbListEntry, align 4
  %185 = call %struct.TYPE_22__* @CONTAINING_RECORD(%struct.TYPE_23__* %182, i32 %183, i32 %184)
  store %struct.TYPE_22__* %185, %struct.TYPE_22__** %8, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %187, align 8
  store %struct.TYPE_23__* %188, %struct.TYPE_23__** %10, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %181
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 1
  %202 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %196, i32 %199, i32* %201)
  br label %203

203:                                              ; preds = %193, %181
  br label %176

204:                                              ; preds = %176
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @FSRTL_VOLUME_LOCK_FAILED, align 4
  %211 = call i32 @FsRtlNotifyVolumeEvent(i32 %209, i32 %210)
  %212 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %212, i32* %3, align 4
  br label %290

213:                                              ; preds = %164
  %214 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213
  br label %216

216:                                              ; preds = %215, %96, %93
  %217 = load i64, i64* %5, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %268

219:                                              ; preds = %216
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %222, align 8
  %224 = call i32 @VfatFlushVolume(%struct.TYPE_25__* %220, %struct.TYPE_17__* %223)
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @VCB_CLEAR_DIRTY, align 4
  %231 = call i64 @BooleanFlagOn(i32 %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %257

233:                                              ; preds = %219
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @VCB_IS_DIRTY, align 4
  %240 = call i64 @BooleanFlagOn(i32 %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %257

242:                                              ; preds = %233
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %244 = load i64, i64* @FALSE, align 8
  %245 = call i32 @SetDirtyStatus(%struct.TYPE_25__* %243, i64 %244)
  %246 = call i64 @NT_SUCCESS(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %242
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @VCB_IS_DIRTY, align 4
  %255 = call i32 @ClearFlag(i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %248, %242
  br label %257

257:                                              ; preds = %256, %233, %219
  %258 = load i32, i32* @VCB_VOLUME_LOCKED, align 4
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = load i32, i32* @VPB_LOCKED, align 4
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %288

268:                                              ; preds = %216
  %269 = load i32, i32* @VCB_VOLUME_LOCKED, align 4
  %270 = xor i32 %269, -1
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, %270
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* @VPB_LOCKED, align 4
  %276 = xor i32 %275, -1
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, %276
  store i32 %280, i32* %278, align 4
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @FSRTL_VOLUME_UNLOCK, align 4
  %287 = call i32 @FsRtlNotifyVolumeEvent(i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %268, %257
  %289 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %288, %204, %80, %58, %36
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_21__*, i64) #1

declare dso_local i64 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @FsRtlNotifyVolumeEvent(i32, i32) #1

declare dso_local %struct.TYPE_22__* @CONTAINING_RECORD(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @vfatFCBIsDirectory(%struct.TYPE_22__*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @VfatFlushVolume(%struct.TYPE_25__*, %struct.TYPE_17__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @SetDirtyStatus(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @ClearFlag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
