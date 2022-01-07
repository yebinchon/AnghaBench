; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_recv_begin_check_feature_flags_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_recv_begin_check_feature_flags_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_ERR_UNKNOWN_SEND_STREAM_FEATURE = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_SA_SPILL = common dso_local global i32 0, align 4
@SPA_VERSION_SA = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_LZ4 = common dso_local global i32 0, align 4
@SPA_FEATURE_LZ4_COMPRESS = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_EMBED_DATA = common dso_local global i32 0, align 4
@SPA_FEATURE_EMBEDDED_DATA = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_LARGE_BLOCKS = common dso_local global i32 0, align 4
@SPA_FEATURE_LARGE_BLOCKS = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_LARGE_DNODE = common dso_local global i32 0, align 4
@SPA_FEATURE_LARGE_DNODE = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_REDACTED = common dso_local global i32 0, align 4
@SPA_FEATURE_REDACTED_DATASETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @recv_begin_check_feature_flags_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_begin_check_feature_flags_impl(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @DMU_STREAM_SUPPORTED(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ZFS_ERR_UNKNOWN_SEND_STREAM_FEATURE, align 4
  %11 = call i32 @SET_ERROR(i32 %10)
  store i32 %11, i32* %3, align 4
  br label %91

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DMU_BACKUP_FEATURE_SA_SPILL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @spa_version(i32* %18)
  %20 = load i64, i64* @SPA_VERSION_SA, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOTSUP, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %91

25:                                               ; preds = %17, %12
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DMU_BACKUP_FEATURE_LZ4, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @SPA_FEATURE_LZ4_COMPRESS, align 4
  %33 = call i32 @spa_feature_is_enabled(i32* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOTSUP, align 4
  %37 = call i32 @SET_ERROR(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %91

38:                                               ; preds = %30, %25
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @DMU_BACKUP_FEATURE_EMBED_DATA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @SPA_FEATURE_EMBEDDED_DATA, align 4
  %46 = call i32 @spa_feature_is_enabled(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOTSUP, align 4
  %50 = call i32 @SET_ERROR(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %91

51:                                               ; preds = %43, %38
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DMU_BACKUP_FEATURE_LARGE_BLOCKS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @SPA_FEATURE_LARGE_BLOCKS, align 4
  %59 = call i32 @spa_feature_is_enabled(i32* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOTSUP, align 4
  %63 = call i32 @SET_ERROR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %91

64:                                               ; preds = %56, %51
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @DMU_BACKUP_FEATURE_LARGE_DNODE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @SPA_FEATURE_LARGE_DNODE, align 4
  %72 = call i32 @spa_feature_is_enabled(i32* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOTSUP, align 4
  %76 = call i32 @SET_ERROR(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %91

77:                                               ; preds = %69, %64
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @DMU_BACKUP_FEATURE_REDACTED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* @SPA_FEATURE_REDACTED_DATASETS, align 4
  %85 = call i32 @spa_feature_is_enabled(i32* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @ENOTSUP, align 4
  %89 = call i32 @SET_ERROR(i32 %88)
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %82, %77
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %87, %74, %61, %48, %35, %22, %9
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @DMU_STREAM_SUPPORTED(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @spa_feature_is_enabled(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
