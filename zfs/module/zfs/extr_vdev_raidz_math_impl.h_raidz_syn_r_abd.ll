; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_syn_r_abd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_syn_r_abd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_X = common dso_local global i64 0, align 8
@SYN_R_D = common dso_local global i32 0, align 4
@SYN_R_X = common dso_local global i32 0, align 4
@SYN_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i64, i64)* @raidz_syn_r_abd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raidz_syn_r_abd(i8** %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i64, i64* @TARGET_X, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = udiv i64 %21, 4
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = udiv i64 %25, 4
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %12, align 8
  %28 = call i32 (...) @SYN_R_DEFINE()
  %29 = call i32 (...) @MUL2_SETUP()
  br label %30

30:                                               ; preds = %42, %4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @SYN_R_D, align 4
  %37 = call i32 @LOAD(i32* %35, i32 %36)
  %38 = load i32, i32* @SYN_R_D, align 4
  %39 = load i32, i32* @SYN_R_X, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @R_D_SYNDROME(i32 %38, i32 %39, i32* %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @SYN_STRIDE, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %10, align 8
  %47 = load i32, i32* @SYN_STRIDE, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %9, align 8
  br label %30

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %60, %51
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = icmp ult i32* %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* @SYN_R_X, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @R_SYNDROME(i32 %57, i32* %58)
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @SYN_STRIDE, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %9, align 8
  br label %52

65:                                               ; preds = %52
  ret void
}

declare dso_local i32 @SYN_R_DEFINE(...) #1

declare dso_local i32 @MUL2_SETUP(...) #1

declare dso_local i32 @LOAD(i32*, i32) #1

declare dso_local i32 @R_D_SYNDROME(i32, i32, i32*) #1

declare dso_local i32 @R_SYNDROME(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
