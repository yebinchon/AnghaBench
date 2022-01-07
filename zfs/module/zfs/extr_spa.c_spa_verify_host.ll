; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_verify_host.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_verify_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_HOSTID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTNAME = common dso_local global i32 0, align 4
@CE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [139 x i8] c"pool '%s' could not be loaded as it was last accessed by another system (host: %s hostid: 0x%llx). See: http://illumos.org/msg/ZFS-8000-EY\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"hostid verification failed: pool last accessed by host: %s (hostid: 0x%llx)\00", align 1
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @spa_verify_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_verify_host(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @spa_is_root(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %15 = call i64 @nvlist_lookup_uint64(i32* %13, i32 %14, i64* %6)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ZPOOL_CONFIG_HOSTNAME, align 4
  %20 = call i8* @fnvlist_lookup_string(i32* %18, i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = call i64 @zone_get_hostid(i32* null)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i32, i32* @CE_WARN, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @spa_name(i32* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @cmn_err(i32 %32, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @spa_load_failed(i32* %39, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %42)
  %44 = load i32, i32* @EBADF, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %27, %24, %17
  br label %47

47:                                               ; preds = %46, %12, %2
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @spa_is_root(i32*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i64 @zone_get_hostid(i32*) #1

declare dso_local i32 @cmn_err(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @spa_name(i32*) #1

declare dso_local i32 @spa_load_failed(i32*, i8*, i8*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
