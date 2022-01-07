; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_load_keys_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_load_keys_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ZFS_PROP_KEYSTATUS = common dso_local global i32 0, align 4
@ZFS_KEYSTATUS_AVAILABLE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @load_keys_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_keys_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %7, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %13 = call i64 @zfs_prop_get_int(i32* %11, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @zfs_crypto_get_encryption_root(i32* %14, i32* %6, i32* null)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  br label %43

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ZFS_KEYSTATUS_AVAILABLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %43

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @B_FALSE, align 4
  %34 = call i32 @zfs_crypto_load_key(i32* %32, i32 %33, i32* null)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %27
  br label %43

43:                                               ; preds = %42, %26, %21
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = call i32 @zfs_iter_filesystems(i32* %44, i32 (i32*, i8*)* @load_keys_cb, %struct.TYPE_3__* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @zfs_close(i32* %47)
  ret i32 0
}

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #1

declare dso_local i32 @zfs_crypto_get_encryption_root(i32*, i32*, i32*) #1

declare dso_local i32 @zfs_crypto_load_key(i32*, i32, i32*) #1

declare dso_local i32 @zfs_iter_filesystems(i32*, i32 (i32*, i8*)*, %struct.TYPE_3__*) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
