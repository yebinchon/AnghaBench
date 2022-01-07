; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_copy_abd_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_copy_abd_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COPY_D = common dso_local global i32 0, align 4
@COPY_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*)* @raidz_copy_abd_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raidz_copy_abd_cb(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = call i32 (...) @COPY_DEFINE()
  %17 = load i8*, i8** %8, align 8
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %50, %4
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = udiv i64 %20, 4
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load i32*, i32** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* @COPY_D, align 4
  %28 = call i32 @LOAD(i32* %26, i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* @COPY_D, align 4
  %33 = call i32 @STORE(i32* %31, i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* @COPY_STRIDE, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* @COPY_D, align 4
  %41 = call i32 @LOAD(i32* %39, i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* @COPY_STRIDE, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* @COPY_D, align 4
  %49 = call i32 @STORE(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %23
  %51 = load i32, i32* @COPY_STRIDE, align 4
  %52 = mul nsw i32 2, %51
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %11, align 8
  br label %18

56:                                               ; preds = %18
  ret i32 0
}

declare dso_local i32 @COPY_DEFINE(...) #1

declare dso_local i32 @LOAD(i32*, i32) #1

declare dso_local i32 @STORE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
