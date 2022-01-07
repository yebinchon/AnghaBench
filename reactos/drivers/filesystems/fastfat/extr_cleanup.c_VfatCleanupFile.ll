; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_cleanup.c_VfatCleanupFile.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_cleanup.c_VfatCleanupFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, %struct.TYPE_37__*, %struct.TYPE_36__* }
%struct.TYPE_37__ = type { i32, i32, i32, i32 }
%struct.TYPE_36__ = type { i32, %struct.TYPE_32__*, %struct.TYPE_35__*, i64 }
%struct.TYPE_32__ = type { i32*, i32* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_31__, %struct.TYPE_36__*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_29__, %struct.TYPE_30__, %struct.TYPE_28__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_28__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"VfatCleanupFile(DeviceExt %p, FileObject %p)\0A\00", align 1
@FCB_IS_VOLUME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CCB_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@FCB_DELETE_PENDING = common dso_local global i32 0, align 4
@FCB_IS_DIRTY = common dso_local global i32 0, align 4
@FCB_CACHE_INITIALIZED = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_DIR_NAME = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_FILE_NAME = common dso_local global i32 0, align 4
@FILE_ACTION_REMOVED = common dso_local global i32 0, align 4
@FO_CLEANUP_COMPLETE = common dso_local global i32 0, align 4
@FCB_CLEANED_UP = common dso_local global i32 0, align 4
@FCB_DELAYED_CLOSE = common dso_local global i32 0, align 4
@FCB_IS_FAT = common dso_local global i32 0, align 4
@FCB_IS_PAGE_FILE = common dso_local global i32 0, align 4
@VCB_DISMOUNT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_33__*)* @VfatCleanupFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @VfatCleanupFile(%struct.TYPE_33__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  %11 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  store %struct.TYPE_37__* %13, %struct.TYPE_37__** %7, align 8
  %14 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  store %struct.TYPE_36__* %16, %struct.TYPE_36__** %8, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %22 = call i32 (i8*, %struct.TYPE_37__*, ...) @DPRINT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_37__* %20, %struct.TYPE_36__* %21)
  %23 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %26, %struct.TYPE_34__** %4, align 8
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %28 = icmp ne %struct.TYPE_34__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %2, align 8
  br label %250

31:                                               ; preds = %1
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FCB_IS_VOLUME, align 4
  %36 = call i64 @BooleanFlagOn(i32 %34, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %31
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 6
  %56 = call i32 @IoRemoveShareAccess(%struct.TYPE_36__* %53, i32* %55)
  br label %57

57:                                               ; preds = %52, %39
  br label %248

58:                                               ; preds = %31
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 1
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @ExAcquireResourceExclusiveLite(i32* %60, i32 %61)
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %63, i32 0, i32 2
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @ExAcquireResourceExclusiveLite(i32* %64, i32 %65)
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %68, align 8
  store %struct.TYPE_35__* %69, %struct.TYPE_35__** %5, align 8
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CCB_DELETE_ON_CLOSE, align 4
  %74 = call i64 @BooleanFlagOn(i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %58
  %77 = load i32, i32* @FCB_DELETE_PENDING, align 4
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %58
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_37__*, %struct.TYPE_37__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_37__*, %struct.TYPE_37__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_35__*, %struct.TYPE_35__** %93, align 8
  %95 = call i32 @FsRtlNotifyCleanup(i32 %87, i32* %91, %struct.TYPE_35__* %94)
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %105 = call i64 @vfatFCBIsDirectory(%struct.TYPE_34__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %82
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 9
  %110 = call i64 @FsRtlAreThereCurrentFileLocks(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 9
  %115 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @IoGetRequestorProcess(i32 %118)
  %120 = call i32 @FsRtlFastUnlockAll(i32* %114, %struct.TYPE_36__* %115, i32 %119, i32* null)
  br label %121

121:                                              ; preds = %112, %107, %82
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @FCB_IS_DIRTY, align 4
  %126 = call i64 @BooleanFlagOn(i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %130 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %131 = call i32 @VfatUpdateEntry(%struct.TYPE_37__* %129, %struct.TYPE_34__* %130)
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @FCB_DELETE_PENDING, align 4
  %137 = call i64 @BooleanFlagOn(i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %192

139:                                              ; preds = %132
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %192

144:                                              ; preds = %139
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %146 = call i64 @vfatFCBIsDirectory(%struct.TYPE_34__* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %151 = call i32 @VfatIsDirectoryEmpty(%struct.TYPE_37__* %149, %struct.TYPE_34__* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* @FCB_DELETE_PENDING, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %191

160:                                              ; preds = %148, %144
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 8
  %163 = load %struct.TYPE_36__*, %struct.TYPE_36__** %162, align 8
  store %struct.TYPE_36__* %163, %struct.TYPE_36__** %10, align 8
  %164 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %165 = icmp ne %struct.TYPE_36__* %164, null
  br i1 %165, label %166, label %178

166:                                              ; preds = %160
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %167, i32 0, i32 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %168, align 8
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %170 = call i32 @CcUninitializeCacheMap(%struct.TYPE_36__* %169, %struct.TYPE_29__* null, i32* null)
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @FCB_CACHE_INITIALIZED, align 4
  %175 = call i32 @ClearFlag(i32 %173, i32 %174)
  %176 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %177 = call i32 @ObDereferenceObject(%struct.TYPE_36__* %176)
  br label %178

178:                                              ; preds = %166, %160
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  %183 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 0
  store i64 0, i64* %186, align 8
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 7
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 0
  store i64 0, i64* %190, align 8
  br label %191

191:                                              ; preds = %178, %153
  br label %192

192:                                              ; preds = %191, %139, %132
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 0
  %197 = call i32 @CcUninitializeCacheMap(%struct.TYPE_36__* %193, %struct.TYPE_29__* %196, i32* null)
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @FCB_DELETE_PENDING, align 4
  %202 = call i64 @BooleanFlagOn(i32 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %192
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %226

209:                                              ; preds = %204
  %210 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %211 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %212 = call i32 @VfatDelEntry(%struct.TYPE_37__* %210, %struct.TYPE_34__* %211, i32* null)
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %216 = call i64 @vfatFCBIsDirectory(%struct.TYPE_34__* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = load i32, i32* @FILE_NOTIFY_CHANGE_DIR_NAME, align 4
  br label %222

220:                                              ; preds = %209
  %221 = load i32, i32* @FILE_NOTIFY_CHANGE_FILE_NAME, align 4
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i32 [ %219, %218 ], [ %221, %220 ]
  %224 = load i32, i32* @FILE_ACTION_REMOVED, align 4
  %225 = call i32 @vfatReportChange(%struct.TYPE_37__* %213, %struct.TYPE_34__* %214, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %222, %204, %192
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %233 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %233, i32 0, i32 6
  %235 = call i32 @IoRemoveShareAccess(%struct.TYPE_36__* %232, i32* %234)
  br label %236

236:                                              ; preds = %231, %226
  %237 = load i32, i32* @FO_CLEANUP_COMPLETE, align 4
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  %242 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %242, i32 0, i32 2
  %244 = call i32 @ExReleaseResourceLite(i32* %243)
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 1
  %247 = call i32 @ExReleaseResourceLite(i32* %246)
  br label %248

248:                                              ; preds = %236, %57
  %249 = load i64, i64* %9, align 8
  store i64 %249, i64* %2, align 8
  br label %250

250:                                              ; preds = %248, %29
  %251 = load i64, i64* %2, align 8
  ret i64 %251
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_37__*, ...) #1

declare dso_local i64 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @IoRemoveShareAccess(%struct.TYPE_36__*, i32*) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @FsRtlNotifyCleanup(i32, i32*, %struct.TYPE_35__*) #1

declare dso_local i64 @vfatFCBIsDirectory(%struct.TYPE_34__*) #1

declare dso_local i64 @FsRtlAreThereCurrentFileLocks(i32*) #1

declare dso_local i32 @FsRtlFastUnlockAll(i32*, %struct.TYPE_36__*, i32, i32*) #1

declare dso_local i32 @IoGetRequestorProcess(i32) #1

declare dso_local i32 @VfatUpdateEntry(%struct.TYPE_37__*, %struct.TYPE_34__*) #1

declare dso_local i32 @VfatIsDirectoryEmpty(%struct.TYPE_37__*, %struct.TYPE_34__*) #1

declare dso_local i32 @CcUninitializeCacheMap(%struct.TYPE_36__*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @ClearFlag(i32, i32) #1

declare dso_local i32 @ObDereferenceObject(%struct.TYPE_36__*) #1

declare dso_local i32 @VfatDelEntry(%struct.TYPE_37__*, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @vfatReportChange(%struct.TYPE_37__*, %struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
