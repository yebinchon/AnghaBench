; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_fletcher.c_fletcher_4_incremental_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_fletcher.c_fletcher_4_incremental_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_FLETCHER_4_INC_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i64, i32*)* @fletcher_4_incremental_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fletcher_4_incremental_impl(i64 %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  br label %11

11:                                               ; preds = %28, %4
  %12 = load i64, i64* %7, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @ZFS_FLETCHER_4_INC_MAX_SIZE, align 4
  %17 = call i64 @MIN(i64 %15, i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @fletcher_4_native(i8* %21, i64 %22, i32* null, i32* %9)
  br label %28

24:                                               ; preds = %14
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @fletcher_4_byteswap(i8* %25, i64 %26, i32* null, i32* %9)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @fletcher_4_incremental_combine(i32* %29, i64 %30, i32* %9)
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 %33, %32
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr i8, i8* %36, i64 %35
  store i8* %37, i8** %6, align 8
  br label %11

38:                                               ; preds = %11
  ret void
}

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @fletcher_4_native(i8*, i64, i32*, i32*) #1

declare dso_local i32 @fletcher_4_byteswap(i8*, i64, i32*, i32*) #1

declare dso_local i32 @fletcher_4_incremental_combine(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
