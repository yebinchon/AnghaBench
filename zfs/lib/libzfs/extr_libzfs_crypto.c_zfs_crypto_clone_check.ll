; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_clone_check.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_zfs_crypto_clone_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Encryption clone error\00", align 1
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@ZFS_PROP_ENCRYPTION = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_ITERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Encryption properties must inherit from origin dataset.\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_crypto_clone_check(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %12 = load i32, i32* @TEXT_DOMAIN, align 4
  %13 = call i8* @dgettext(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @snprintf(i8* %11, i32 1024, i8* %13)
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %17 = call i32 @zfs_prop_to_name(i32 %16)
  %18 = call i64 @nvlist_exists(i32* %15, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %23 = call i32 @zfs_prop_to_name(i32 %22)
  %24 = call i64 @nvlist_exists(i32* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %29 = call i32 @zfs_prop_to_name(i32 %28)
  %30 = call i64 @nvlist_exists(i32* %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %35 = call i32 @zfs_prop_to_name(i32 %34)
  %36 = call i64 @nvlist_exists(i32* %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %26, %20, %4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @TEXT_DOMAIN, align 4
  %41 = call i8* @dgettext(i32 %40, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @zfs_error_aux(i32* %39, i8* %41)
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
