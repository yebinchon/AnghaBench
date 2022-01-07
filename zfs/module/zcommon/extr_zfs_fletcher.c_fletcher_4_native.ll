; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_fletcher.c_fletcher_4_native.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_fletcher.c_fletcher_4_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLETCHER_MIN_SIMD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fletcher_4_native(i8* %0, i64 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @FLETCHER_MIN_SIMD_SIZE, align 4
  %12 = call i64 @P2ALIGN(i64 %10, i32 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @IS_P2ALIGNED(i64 %13, i32 4)
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18, %4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @ZIO_SET_CHECKSUM(i32* %22, i32 0, i32 0, i32 0, i32 0)
  %24 = load i64, i64* %6, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @fletcher_4_scalar_native(i32* %27, i8* %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %50

32:                                               ; preds = %18
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @fletcher_4_native_impl(i8* %33, i64 %34, i32* %35)
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i32*, i32** %8, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub nsw i64 %45, %46
  %48 = call i32 @fletcher_4_scalar_native(i32* %41, i8* %44, i64 %47)
  br label %49

49:                                               ; preds = %40, %32
  br label %50

50:                                               ; preds = %49, %31
  ret void
}

declare dso_local i64 @P2ALIGN(i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IS_P2ALIGNED(i64, i32) #1

declare dso_local i32 @ZIO_SET_CHECKSUM(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @fletcher_4_scalar_native(i32*, i8*, i64) #1

declare dso_local i32 @fletcher_4_native_impl(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
