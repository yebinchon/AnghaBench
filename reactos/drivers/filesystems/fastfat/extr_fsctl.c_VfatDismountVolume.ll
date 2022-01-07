; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fsctl.c_VfatDismountVolume.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fsctl.c_VfatDismountVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"VfatDismountVolume(%p)\0A\00", align 1
@VCB_VOLUME_LOCKED = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@VCB_IS_SYS_OR_HAS_PAGE = common dso_local global i32 0, align 4
@VCB_DISMOUNT_PENDING = common dso_local global i32 0, align 4
@STATUS_VOLUME_DISMOUNTED = common dso_local global i32 0, align 4
@FSRTL_VOLUME_DISMOUNT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VCB_CLEAR_DIRTY = common dso_local global i32 0, align 4
@VCB_IS_DIRTY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VFATFCB = common dso_local global i32 0, align 4
@FcbListEntry = common dso_local global i32 0, align 4
@VCB_GOOD = common dso_local global i32 0, align 4
@VPB_MOUNTED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @VfatDismountVolume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VfatDismountVolume(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = call i32 @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %8)
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %4, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %7, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VCB_VOLUME_LOCKED, align 4
  %20 = call i64 @BooleanFlagOn(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %23, i32* %2, align 4
  br label %154

24:                                               ; preds = %1
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VCB_IS_SYS_OR_HAS_PAGE, align 4
  %29 = call i64 @BooleanFlagOn(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %32, i32* %2, align 4
  br label %154

33:                                               ; preds = %24
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VCB_DISMOUNT_PENDING, align 4
  %38 = call i64 @BooleanFlagOn(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @STATUS_VOLUME_DISMOUNTED, align 4
  store i32 %41, i32* %2, align 4
  br label %154

42:                                               ; preds = %33
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FSRTL_VOLUME_DISMOUNT, align 4
  %49 = call i32 @FsRtlNotifyVolumeEvent(i32 %47, i32 %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @ExAcquireResourceExclusiveLite(i32* %51, i32 %52)
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.TYPE_19__*
  %59 = call i32 @VfatFlushVolume(%struct.TYPE_21__* %54, %struct.TYPE_19__* %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @VCB_CLEAR_DIRTY, align 4
  %66 = call i64 @BooleanFlagOn(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %42
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @VCB_IS_DIRTY, align 4
  %75 = call i64 @BooleanFlagOn(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %68
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i32 @SetDirtyStatus(%struct.TYPE_21__* %78, i32 %79)
  %81 = call i64 @NT_SUCCESS(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i32, i32* @VCB_IS_DIRTY, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %85
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %83, %77
  br label %93

93:                                               ; preds = %92, %68, %42
  br label %94

94:                                               ; preds = %126, %93
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 4
  %97 = call i32 @IsListEmpty(i32* %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br i1 %99, label %100, label %129

100:                                              ; preds = %94
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 4
  %103 = call i32 @RemoveTailList(i32* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @VFATFCB, align 4
  %106 = load i32, i32* @FcbListEntry, align 4
  %107 = call %struct.TYPE_19__* @CONTAINING_RECORD(i32 %104, i32 %105, i32 %106)
  store %struct.TYPE_19__* %107, %struct.TYPE_19__** %6, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = icmp eq %struct.TYPE_19__* %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 3
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %115, align 8
  br label %126

116:                                              ; preds = %100
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = icmp eq %struct.TYPE_19__* %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %124, align 8
  br label %125

125:                                              ; preds = %122, %116
  br label %126

126:                                              ; preds = %125, %113
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = call i32 @vfatDestroyFCB(%struct.TYPE_19__* %127)
  br label %94

129:                                              ; preds = %94
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @VCB_GOOD, align 4
  %134 = call i32 @ClearFlag(i32 %132, i32 %133)
  %135 = load i32, i32* @VCB_DISMOUNT_PENDING, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* @VPB_MOUNTED, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %141
  store i32 %149, i32* %147, align 4
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = call i32 @ExReleaseResourceLite(i32* %151)
  %153 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %129, %40, %31, %22
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_18__*) #1

declare dso_local i64 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @FsRtlNotifyVolumeEvent(i32, i32) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @VfatFlushVolume(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @SetDirtyStatus(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @IsListEmpty(i32*) #1

declare dso_local i32 @RemoveTailList(i32*) #1

declare dso_local %struct.TYPE_19__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @vfatDestroyFCB(%struct.TYPE_19__*) #1

declare dso_local i32 @ClearFlag(i32, i32) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
