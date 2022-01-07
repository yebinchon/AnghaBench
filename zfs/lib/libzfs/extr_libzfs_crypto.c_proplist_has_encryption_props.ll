; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_proplist_has_encryption_props.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_proplist_has_encryption_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_PROP_ENCRYPTION = common dso_local global i32 0, align 4
@ZIO_CRYPT_OFF = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_ITERS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proplist_has_encryption_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proplist_has_encryption_props(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %9 = call i32 @zfs_prop_to_name(i32 %8)
  %10 = call i32 @nvlist_lookup_uint64(i32* %7, i32 %9, i64* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ZIO_CRYPT_OFF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @B_TRUE, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %13, %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %22 = call i32 @zfs_prop_to_name(i32 %21)
  %23 = call i32 @nvlist_lookup_string(i32* %20, i32 %22, i8** %6)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @B_TRUE, align 4
  store i32 %31, i32* %2, align 4
  br label %52

32:                                               ; preds = %26, %19
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %35 = call i32 @zfs_prop_to_name(i32 %34)
  %36 = call i32 @nvlist_lookup_uint64(i32* %33, i32 %35, i64* %5)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @B_TRUE, align 4
  store i32 %40, i32* %2, align 4
  br label %52

41:                                               ; preds = %32
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %44 = call i32 @zfs_prop_to_name(i32 %43)
  %45 = call i32 @nvlist_lookup_uint64(i32* %42, i32 %44, i64* %5)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @B_TRUE, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @B_FALSE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %48, %39, %30, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
