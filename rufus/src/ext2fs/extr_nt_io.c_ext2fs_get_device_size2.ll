; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_nt_io.c_ext2fs_get_device_size2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_nt_io.c_ext2fs_get_device_size2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_get_device_size2(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i32 @_Ext2OpenDevice(i8* %13, i32 %14, i32* %11, i64* %9, i64* %10, i32* %12, i32* %8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @_GetDeviceSize(i32 %23, i64* %10)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @_CloseDisk(i32 %26)
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = sdiv i64 %28, %30
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @_Ext2OpenDevice(i8*, i32, i32*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @_GetDeviceSize(i32, i64*) #1

declare dso_local i32 @_CloseDisk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
