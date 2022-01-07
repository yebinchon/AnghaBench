; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_zaccess_common.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_zaccess_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@B_TRUE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64*, i64*, i64, i32*)* @zfs_zaccess_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_zaccess_common(i32* %0, i64 %1, i64* %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call %struct.TYPE_3__* @ZTOZSB(i32* %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %14, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64*, i64** %10, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64, i64* @B_TRUE, align 8
  %21 = load i64*, i64** %11, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %6
  %30 = load i64*, i64** %10, align 8
  store i64 0, i64* %30, align 8
  store i32 0, i32* %7, align 4
  br label %51

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @zfs_zaccess_dataset_check(i32* %32, i64 %33)
  store i32 %34, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i64, i64* @B_FALSE, align 8
  %38 = load i64*, i64** %11, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %7, align 4
  br label %51

40:                                               ; preds = %31
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64*, i64** %10, align 8
  store i64 0, i64* %44, align 8
  store i32 0, i32* %7, align 4
  br label %51

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* @B_FALSE, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @zfs_zaccess_aces_check(i32* %46, i64* %47, i64 %48, i32* %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %45, %43, %36, %29
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_3__* @ZTOZSB(i32*) #1

declare dso_local i32 @zfs_zaccess_dataset_check(i32*, i64) #1

declare dso_local i32 @zfs_zaccess_aces_check(i32*, i64*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
