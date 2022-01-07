; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_load_key.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_load_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ZPOOL_HIDDEN_ARGS = common dso_local global i32 0, align 4
@DCP_CMD_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_load_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_load_key(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @nvlist_exists(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32* @strchr(i8* %14, i8 signext 64)
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32* @strchr(i8* %18, i8 signext 37)
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %8, align 4
  br label %46

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @ZPOOL_HIDDEN_ARGS, align 4
  %27 = call i32* @fnvlist_lookup_nvlist(i32* %25, i32 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32, i32* @DCP_CMD_NONE, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @dsl_crypto_params_create_nvlist(i32 %28, i32* null, i32* %29, i32** %9)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %46

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @spa_keystore_load_wkey(i8* %35, i32* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @dsl_crypto_params_free(i32* %43, i32 %44)
  store i32 0, i32* %4, align 4
  br label %51

46:                                               ; preds = %41, %33, %21
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @B_TRUE, align 4
  %49 = call i32 @dsl_crypto_params_free(i32* %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i32 @dsl_crypto_params_create_nvlist(i32, i32*, i32*, i32**) #1

declare dso_local i32 @spa_keystore_load_wkey(i8*, i32*, i32) #1

declare dso_local i32 @dsl_crypto_params_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
