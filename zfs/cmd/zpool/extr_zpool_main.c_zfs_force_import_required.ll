; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zfs_force_import_required.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zfs_force_import_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTID = common dso_local global i32 0, align 4
@POOL_STATE_EXPORTED = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_STATE = common dso_local global i32 0, align 4
@MMP_STATE_INACTIVE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zfs_force_import_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_force_import_required(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %10 = call i64 @fnvlist_lookup_uint64(i32* %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %13 = call i32 @nvlist_lookup_uint64(i32* %11, i32 %12, i64* %5)
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @POOL_STATE_EXPORTED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = call i64 (...) @get_system_hostid()
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @B_TRUE, align 4
  store i32 %22, i32* %2, align 4
  br label %43

23:                                               ; preds = %17, %1
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %26 = call i32* @fnvlist_lookup_nvlist(i32* %24, i32 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @ZPOOL_CONFIG_MMP_STATE, align 4
  %29 = call i64 @nvlist_exists(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @ZPOOL_CONFIG_MMP_STATE, align 4
  %34 = call i64 @fnvlist_lookup_uint64(i32* %32, i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @MMP_STATE_INACTIVE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @B_TRUE, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* @B_FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %38, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @get_system_hostid(...) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
