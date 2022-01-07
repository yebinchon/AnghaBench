; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_snapshot_is_before.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_snapshot_is_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }

@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@ZFS_PROP_CREATETXG = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_ORIGIN = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)* @snapshot_is_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_is_before(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %2
  %28 = load i64, i64* @UINT64_MAX, align 8
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %32 = call i64 @zfs_prop_get_int(%struct.TYPE_9__* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i64 [ %28, %27 ], [ %32, %29 ]
  store i64 %34, i64* %7, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %37 = call i64 @zfs_prop_get_int(%struct.TYPE_9__* %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @B_FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %131

43:                                               ; preds = %33
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_9__* @name_to_dir_handle(i32 %46, i32 %49)
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %9, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_9__* @name_to_dir_handle(i32 %53, i32 %56)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %10, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @strcmp(i32 %60, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %43
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = call i32 @zfs_close(%struct.TYPE_9__* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = call i32 @zfs_close(%struct.TYPE_9__* %69)
  %71 = load i32, i32* @B_TRUE, align 4
  store i32 %71, i32* %3, align 4
  br label %131

72:                                               ; preds = %43
  %73 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %11, align 8
  %76 = alloca i8, i64 %74, align 16
  store i64 %74, i64* %12, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = load i32, i32* @ZFS_PROP_ORIGIN, align 4
  %79 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %80 = load i32, i32* @B_TRUE, align 4
  %81 = call i64 @zfs_prop_get(%struct.TYPE_9__* %77, i32 %78, i8* %76, i32 %79, i32* null, i32* null, i32 0, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %72
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = call i32 @zfs_close(%struct.TYPE_9__* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = call i32 @zfs_close(%struct.TYPE_9__* %86)
  %88 = load i32, i32* @B_FALSE, align 4
  store i32 %88, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

89:                                               ; preds = %72
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %94 = call %struct.TYPE_9__* @zfs_open(i32 %92, i8* %76, i32 %93)
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %14, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %96 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %97 = call i64 @zfs_prop_get_int(%struct.TYPE_9__* %95, i32 %96)
  store i64 %97, i64* %15, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %89
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @strcmp(i32 %104, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %112 = call i32 @zfs_close(%struct.TYPE_9__* %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %114 = call i32 @zfs_close(%struct.TYPE_9__* %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %116 = call i32 @zfs_close(%struct.TYPE_9__* %115)
  %117 = load i32, i32* @B_TRUE, align 4
  store i32 %117, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

118:                                              ; preds = %101, %89
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %120 = call i32 @zfs_close(%struct.TYPE_9__* %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %122 = call i32 @zfs_close(%struct.TYPE_9__* %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %125 = call i32 @snapshot_is_before(%struct.TYPE_9__* %123, %struct.TYPE_9__* %124)
  store i32 %125, i32* %6, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %127 = call i32 @zfs_close(%struct.TYPE_9__* %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

129:                                              ; preds = %118, %110, %83
  %130 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %130)
  br label %131

131:                                              ; preds = %129, %66, %41
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_9__* @name_to_dir_handle(i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @zfs_close(%struct.TYPE_9__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @zfs_prop_get(%struct.TYPE_9__*, i32, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @zfs_open(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
