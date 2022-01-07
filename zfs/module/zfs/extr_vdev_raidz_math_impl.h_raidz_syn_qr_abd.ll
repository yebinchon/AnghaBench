; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_syn_qr_abd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_syn_qr_abd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_X = common dso_local global i64 0, align 8
@TARGET_Y = common dso_local global i64 0, align 8
@SYN_PQ_D = common dso_local global i32 0, align 4
@SYN_QR_D = common dso_local global i32 0, align 4
@SYN_QR_X = common dso_local global i32 0, align 4
@SYN_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i64, i64)* @raidz_syn_qr_abd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raidz_syn_qr_abd(i8** %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i64, i64* @TARGET_X, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = load i64, i64* @TARGET_Y, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = udiv i64 %25, 4
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %11, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = udiv i64 %31, 4
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %13, align 8
  %34 = call i32 (...) @SYN_QR_DEFINE()
  %35 = call i32 (...) @MUL2_SETUP()
  br label %36

36:                                               ; preds = %52, %4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = icmp ult i32* %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* @SYN_PQ_D, align 4
  %43 = call i32 @LOAD(i32* %41, i32 %42)
  %44 = load i32, i32* @SYN_QR_D, align 4
  %45 = load i32, i32* @SYN_QR_X, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @Q_D_SYNDROME(i32 %44, i32 %45, i32* %46)
  %48 = load i32, i32* @SYN_QR_D, align 4
  %49 = load i32, i32* @SYN_QR_X, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @R_D_SYNDROME(i32 %48, i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* @SYN_STRIDE, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %12, align 8
  %57 = load i32, i32* @SYN_STRIDE, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %9, align 8
  %61 = load i32, i32* @SYN_STRIDE, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %10, align 8
  br label %36

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %77, %65
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = icmp ult i32* %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = load i32, i32* @SYN_QR_X, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @Q_SYNDROME(i32 %71, i32* %72)
  %74 = load i32, i32* @SYN_QR_X, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @R_SYNDROME(i32 %74, i32* %75)
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @SYN_STRIDE, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %9, align 8
  %82 = load i32, i32* @SYN_STRIDE, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %10, align 8
  br label %66

86:                                               ; preds = %66
  ret void
}

declare dso_local i32 @SYN_QR_DEFINE(...) #1

declare dso_local i32 @MUL2_SETUP(...) #1

declare dso_local i32 @LOAD(i32*, i32) #1

declare dso_local i32 @Q_D_SYNDROME(i32, i32, i32*) #1

declare dso_local i32 @R_D_SYNDROME(i32, i32, i32*) #1

declare dso_local i32 @Q_SYNDROME(i32, i32*) #1

declare dso_local i32 @R_SYNDROME(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
