; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_is_shorthand_path.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_is_shorthand_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, %struct.stat64*, i64*)* @is_shorthand_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_shorthand_path(i8* %0, i8* %1, i64 %2, %struct.stat64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.stat64* %3, %struct.stat64** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @zfs_resolve_shortname(i8* %13, i8* %14, i64 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @zfs_dev_is_whole_disk(i8* %20)
  %22 = load i64*, i64** %11, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.stat64*, %struct.stat64** %10, align 8
  %29 = call i64 @stat64(i8* %27, %struct.stat64* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %19
  store i32 0, i32* %6, align 4
  br label %43

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %5
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @strlcpy(i8* %34, i8* %35, i64 %36)
  %38 = load %struct.stat64*, %struct.stat64** %10, align 8
  %39 = call i32 @memset(%struct.stat64* %38, i32 0, i32 4)
  %40 = load i64, i64* @B_FALSE, align 8
  %41 = load i64*, i64** %11, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %33, %31
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @zfs_resolve_shortname(i8*, i8*, i64) #1

declare dso_local i64 @zfs_dev_is_whole_disk(i8*) #1

declare dso_local i64 @stat64(i8*, %struct.stat64*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(%struct.stat64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
