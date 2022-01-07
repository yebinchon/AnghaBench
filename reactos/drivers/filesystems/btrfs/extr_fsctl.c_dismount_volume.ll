; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fsctl.c_dismount_volume.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fsctl.c_dismount_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_11__*, i32, i32, i64, i32, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"FSCTL_DISMOUNT_VOLUME\0A\00", align 1
@VPB_MOUNTED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"attempting to dismount boot volume or one containing a pagefile\0A\00", align 1
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@FSRTL_VOLUME_DISMOUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"FsRtlNotifyVolumeEvent returned %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"do_write returned %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dismount_volume(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 10
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VPB_MOUNTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %20, i32* %4, align 4
  br label %114

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %24
  %35 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %36, i32* %4, align 4
  br label %114

37:                                               ; preds = %29
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FSRTL_VOLUME_DISMOUNT, align 4
  %42 = call i32 @FsRtlNotifyVolumeEvent(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @NT_SUCCESS(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = call i32 @ExAcquireResourceExclusiveLite(i32* %52, i32 1)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = call i32 @flush_fcb_caches(%struct.TYPE_12__* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @do_write(%struct.TYPE_12__* %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @NT_SUCCESS(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %70
  br label %81

81:                                               ; preds = %80, %65, %58
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = call i32 @free_trees(%struct.TYPE_12__* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 0
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %9, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = icmp ne %struct.TYPE_11__* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %82
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = call i32 @update_volumes(%struct.TYPE_12__* %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %96, %82
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = call i32 @ExReleaseResourceLite(i32* %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = call i32 @uninit(%struct.TYPE_12__* %110)
  br label %112

112:                                              ; preds = %109, %103
  %113 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %34, %19
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @FsRtlNotifyVolumeEvent(i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @flush_fcb_caches(%struct.TYPE_12__*) #1

declare dso_local i32 @do_write(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @free_trees(%struct.TYPE_12__*) #1

declare dso_local i32 @update_volumes(%struct.TYPE_12__*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i32 @uninit(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
