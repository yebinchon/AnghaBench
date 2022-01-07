; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_receive_checkprops.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_receive_checkprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPROP_INVAL = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid property '%s'\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_PROP_ORIGIN = common dso_local global i64 0, align 8
@ZFS_PROP_ENCRYPTION = common dso_local global i64 0, align 8
@ZFS_PROP_VERSION = common dso_local global i64 0, align 8
@ZFS_PROP_VOLSIZE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @zfs_receive_checkprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_receive_checkprops(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  br label %11

11:                                               ; preds = %69, %49, %40, %35, %3
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32* @nvlist_next_nvpair(i32* %12, i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %70

16:                                               ; preds = %11
  %17 = load i32*, i32** %8, align 8
  %18 = call i8* @nvpair_name(i32* %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i64 @zfs_name_to_prop(i8* %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @ZPROP_INVAL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @zfs_prop_user(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @TEXT_DOMAIN, align 4
  %31 = call i32 @dgettext(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @zfs_error_aux(i32* %29, i32 %31, i8* %32)
  %34 = load i32, i32* @B_FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %72

35:                                               ; preds = %24
  br label %11

36:                                               ; preds = %16
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @ZFS_PROP_ORIGIN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %11

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @ZFS_PROP_ENCRYPTION, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @zfs_prop_encryption_key_param(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41
  br label %11

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @zfs_prop_readonly(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @ZFS_PROP_VERSION, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %54, %50
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @TEXT_DOMAIN, align 4
  %65 = call i32 @dgettext(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @zfs_error_aux(i32* %63, i32 %65, i8* %66)
  %68 = load i32, i32* @B_FALSE, align 4
  store i32 %68, i32* %4, align 4
  br label %72

69:                                               ; preds = %58
  br label %11

70:                                               ; preds = %11
  %71 = load i32, i32* @B_TRUE, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %62, %28
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i32 @zfs_prop_user(i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, i8*) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i64 @zfs_prop_encryption_key_param(i64) #1

declare dso_local i64 @zfs_prop_readonly(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
