; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_load_key_callback.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_load_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i64 }

@ZFS_PROP_KEYSTATUS = common dso_local global i32 0, align 4
@ZFS_KEYSTATUS_AVAILABLE = common dso_local global i64 0, align 8
@ZFS_KEYSTATUS_UNAVAILABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @load_key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_key_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %14 = call i64 @zfs_prop_get_int(i32* %12, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @zfs_crypto_get_encryption_root(i32* %20, i32* %7, i32* null)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %81

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %81

30:                                               ; preds = %26
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @ZFS_KEYSTATUS_AVAILABLE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @ZFS_KEYSTATUS_UNAVAILABLE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %35
  store i32 0, i32* %3, align 4
  br label %81

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @zfs_crypto_load_key(i32* %60, i32 %63, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %71

68:                                               ; preds = %50
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @zfs_crypto_unload_key(i32* %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %59
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %74, %48, %29, %24
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #1

declare dso_local i32 @zfs_crypto_get_encryption_root(i32*, i32*, i32*) #1

declare dso_local i32 @zfs_crypto_load_key(i32*, i32, i32) #1

declare dso_local i32 @zfs_crypto_unload_key(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
