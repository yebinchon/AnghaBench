; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fsctl.c_lock_volume.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fsctl.c_lock_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_13__*, i32, i32, i64, i32, %struct.TYPE_17__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"FSCTL_LOCK_VOLUME\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot lock while scrub running\0A\00", align 1
@STATUS_DEVICE_NOT_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot lock while balance running\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"locking volume\0A\00", align 1
@FSRTL_VOLUME_LOCK = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"do_write returned %08x\0A\00", align 1
@VPB_LOCKED = common dso_local global i32 0, align 4
@FSRTL_VOLUME_LOCK_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @lock_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_volume(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_16__* @IoGetCurrentIrpStackLocation(i32 %10)
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 10
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @STATUS_DEVICE_NOT_READY, align 4
  store i32 %20, i32* %3, align 4
  br label %191

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @STATUS_DEVICE_NOT_READY, align 4
  store i32 %29, i32* %3, align 4
  br label %191

30:                                               ; preds = %21
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FSRTL_VOLUME_LOCK, align 4
  %36 = call i32 @FsRtlNotifyVolumeEvent(i32 %34, i32 %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %42, i32* %3, align 4
  br label %191

43:                                               ; preds = %30
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 8
  %46 = call i32 @ExAcquireResourceExclusiveLite(i32* %45, i32 1)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 9
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = icmp ne %struct.TYPE_17__* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %43
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 9
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 9
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 9
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = call i64 @has_open_children(%struct.TYPE_17__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65, %58
  %72 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %72, i32* %7, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 8
  %75 = call i32 @ExReleaseResourceLite(i32* %74)
  br label %179

76:                                               ; preds = %65, %51, %43
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 8
  %79 = call i32 @ExReleaseResourceLite(i32* %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %76
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = call i64 @KeReadStateEvent(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 5
  %94 = call i32 @ExAcquireResourceExclusiveLite(i32* %93, i32 1)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = call i32 @KeClearEvent(i32* %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 5
  %101 = call i32 @ExReleaseResourceLite(i32* %100)
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %91, %85, %76
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 5
  %105 = call i32 @ExAcquireResourceExclusiveLite(i32* %104, i32 1)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = call i32 @flush_fcb_caches(%struct.TYPE_15__* %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %102
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @do_write(%struct.TYPE_15__* %118, i32 %119)
  store i32 %120, i32* %7, align 4
  br label %123

121:                                              ; preds = %112, %102
  %122 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %121, %117
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = call i32 @free_trees(%struct.TYPE_15__* %124)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 5
  %128 = call i32 @ExReleaseResourceLite(i32* %127)
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @NT_SUCCESS(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %179

135:                                              ; preds = %123
  %136 = call i32 @IoAcquireVpbSpinLock(i32* %8)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @VPB_LOCKED, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %163, label %145

145:                                              ; preds = %135
  %146 = load i32, i32* @VPB_LOCKED, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %146
  store i32 %152, i32* %150, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  br label %175

163:                                              ; preds = %135
  %164 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @IoReleaseVpbSpinLock(i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = call i32 @KeSetEvent(i32* %172, i32 0, i32 0)
  br label %174

174:                                              ; preds = %169, %163
  br label %179

175:                                              ; preds = %145
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @IoReleaseVpbSpinLock(i32 %176)
  %178 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %175, %174, %132, %71
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @NT_SUCCESS(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %179
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @FSRTL_VOLUME_LOCK_FAILED, align 4
  %188 = call i32 @FsRtlNotifyVolumeEvent(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %183, %179
  %190 = load i32, i32* %7, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %189, %41, %27, %18
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.TYPE_16__* @IoGetCurrentIrpStackLocation(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @FsRtlNotifyVolumeEvent(i32, i32) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i64 @has_open_children(%struct.TYPE_17__*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i64 @KeReadStateEvent(i32*) #1

declare dso_local i32 @KeClearEvent(i32*) #1

declare dso_local i32 @flush_fcb_caches(%struct.TYPE_15__*) #1

declare dso_local i32 @do_write(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @free_trees(%struct.TYPE_15__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @IoAcquireVpbSpinLock(i32*) #1

declare dso_local i32 @IoReleaseVpbSpinLock(i32) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
