; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_change_key.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_change_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCP_CMD_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"crypt_cmd\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@ZPOOL_HIDDEN_ARGS = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_change_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_change_key(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @DCP_CMD_NONE, align 4
  store i32 %13, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
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
  br label %50

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @nvlist_lookup_uint64(i32* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %9)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @nvlist_lookup_nvlist(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32** %11)
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** @ZPOOL_HIDDEN_ARGS, align 8
  %31 = call i32 @nvlist_lookup_nvlist(i32* %29, i8* %30, i32** %12)
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @dsl_crypto_params_create_nvlist(i32 %32, i32* %33, i32* %34, i32** %10)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %50

39:                                               ; preds = %24
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @spa_keystore_change_key(i8* %40, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %50

46:                                               ; preds = %39
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @B_FALSE, align 4
  %49 = call i32 @dsl_crypto_params_free(i32* %47, i32 %48)
  store i32 0, i32* %4, align 4
  br label %55

50:                                               ; preds = %45, %38, %21
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* @B_TRUE, align 4
  %53 = call i32 @dsl_crypto_params_free(i32* %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @dsl_crypto_params_create_nvlist(i32, i32*, i32*, i32**) #1

declare dso_local i32 @spa_keystore_change_key(i8*, i32*) #1

declare dso_local i32 @dsl_crypto_params_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
