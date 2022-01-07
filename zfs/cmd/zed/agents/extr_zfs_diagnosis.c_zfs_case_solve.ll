; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_case_solve.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_case_solve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"solving fault '%s'\00", align 1
@FMD_SLEEP = common dso_local global i32 0, align 4
@FM_VERSION = common dso_local global i32 0, align 4
@ZFS_SCHEME_VERSION0 = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME_ZFS = common dso_local global i32 0, align 4
@FM_FMRI_ZFS_POOL = common dso_local global i32 0, align 4
@FM_FMRI_ZFS_VDEV = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i8*, i64)* @zfs_case_solve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_case_solve(i32* %0, %struct.TYPE_6__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @fmd_hdl_debug(i32* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @FMD_SLEEP, align 4
  %18 = call i32* @fmd_nvl_alloc(i32* %16, i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* @FM_VERSION, align 4
  %21 = load i32, i32* @ZFS_SCHEME_VERSION0, align 4
  %22 = call i32 @nvlist_add_uint8(i32* %19, i32 %20, i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* @FM_FMRI_SCHEME, align 4
  %25 = load i32, i32* @FM_FMRI_SCHEME_ZFS, align 4
  %26 = call i32 @nvlist_add_string(i32* %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @FM_FMRI_ZFS_POOL, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nvlist_add_uint64(i32* %27, i32 %28, i64 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @FM_FMRI_ZFS_VDEV, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @nvlist_add_uint64(i32* %40, i32 %41, i64 %45)
  br label %47

47:                                               ; preds = %39, %4
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32* @fmd_nvl_create_fault(i32* %48, i8* %49, i32 100, i32* %50, i32* %51, i32* %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @fmd_case_add_suspect(i32* %54, i32 %57, i32* %58)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @nvlist_free(i32* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fmd_case_solve(i32* %62, i32 %65)
  %67 = load i64, i64* @B_FALSE, align 8
  store i64 %67, i64* %11, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %47
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @fmd_timer_remove(i32* %74, i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load i64, i64* @B_TRUE, align 8
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %73, %47
  %84 = load i64, i64* %11, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = call i32 @zfs_case_serialize(i32* %87, %struct.TYPE_6__* %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @nvlist_free(i32* %91)
  ret void
}

declare dso_local i32 @fmd_hdl_debug(i32*, i8*, i8*) #1

declare dso_local i32* @fmd_nvl_alloc(i32*, i32) #1

declare dso_local i32 @nvlist_add_uint8(i32*, i32, i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i32, i32) #1

declare dso_local i32 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32* @fmd_nvl_create_fault(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @fmd_case_add_suspect(i32*, i32, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @fmd_case_solve(i32*, i32) #1

declare dso_local i32 @fmd_timer_remove(i32*, i32) #1

declare dso_local i32 @zfs_case_serialize(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
