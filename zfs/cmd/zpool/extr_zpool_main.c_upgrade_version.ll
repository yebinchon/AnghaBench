; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_upgrade_version.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_upgrade_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@check_unsupp_fs = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Upgrade not performed due to %d unsupported filesystems (max v%d).\0A\00", align 1
@ZPL_VERSION = common dso_local global i64 0, align 8
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Successfully upgraded '%s' from version %llu to feature flags.\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Successfully upgraded '%s' from version %llu to version %llu.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @upgrade_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_version(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @zpool_get_config(i32* %10, i32* null)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %14 = call i64 @nvlist_lookup_uint64(i32* %12, i32 %13, i64* %8)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @verify(i32 %16)
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @SPA_VERSION_IS_SUPPORTED(i64 %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @zpool_get_handle(i32* %26)
  %28 = load i32, i32* @check_unsupp_fs, align 4
  %29 = call i32 @zfs_iter_root(i32 %27, i32 %28, i32* %9)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %73

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* @ZPL_VERSION, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @fprintf(i32 %38, i8* %39, i32 %40, i32 %42)
  store i32 1, i32* %3, align 4
  br label %73

44:                                               ; preds = %34
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @zpool_upgrade(i32* %45, i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %73

52:                                               ; preds = %44
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @zpool_get_name(i32* %58)
  %60 = load i64, i64* %8, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i8*, i8*, i32, ...) @printf(i8* %57, i8* %59, i32 %61)
  br label %72

63:                                               ; preds = %52
  %64 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32*, i32** %4, align 8
  %66 = call i8* @zpool_get_name(i32* %65)
  %67 = load i64, i64* %8, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i64, i64* %5, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 (i8*, i8*, i32, ...) @printf(i8* %64, i8* %66, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %63, %56
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %50, %37, %32
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i64) #1

declare dso_local i32 @zfs_iter_root(i32, i32, i32*) #1

declare dso_local i32 @zpool_get_handle(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @zpool_upgrade(i32*, i64) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i8* @zpool_get_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
