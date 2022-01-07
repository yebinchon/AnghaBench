; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_gen_pqr_add.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_gen_pqr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CODE_R = common dso_local global i64 0, align 8
@GEN_PQR_D = common dso_local global i32 0, align 4
@GEN_PQR_C = common dso_local global i32 0, align 4
@GEN_PQR_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i64, i64)* @raidz_gen_pqr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raidz_gen_pqr_add(i8** %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %10, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i64, i64* @CODE_R, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = udiv i64 %31, 4
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = udiv i64 %35, 4
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %14, align 8
  %38 = call i32 (...) @GEN_PQR_DEFINE()
  %39 = call i32 (...) @MUL2_SETUP()
  br label %40

40:                                               ; preds = %60, %4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ult i32* %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* @GEN_PQR_D, align 4
  %47 = call i32 @LOAD(i32* %45, i32 %46)
  %48 = load i32, i32* @GEN_PQR_D, align 4
  %49 = load i32, i32* @GEN_PQR_C, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @P_D_SYNDROME(i32 %48, i32 %49, i32* %50)
  %52 = load i32, i32* @GEN_PQR_D, align 4
  %53 = load i32, i32* @GEN_PQR_C, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @Q_D_SYNDROME(i32 %52, i32 %53, i32* %54)
  %56 = load i32, i32* @GEN_PQR_D, align 4
  %57 = load i32, i32* @GEN_PQR_C, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @R_D_SYNDROME(i32 %56, i32 %57, i32* %58)
  br label %60

60:                                               ; preds = %44
  %61 = load i32, i32* @GEN_PQR_STRIDE, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %12, align 8
  %65 = load i32, i32* @GEN_PQR_STRIDE, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* @GEN_PQR_STRIDE, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %10, align 8
  %73 = load i32, i32* @GEN_PQR_STRIDE, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %11, align 8
  br label %40

77:                                               ; preds = %40
  br label %78

78:                                               ; preds = %89, %77
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = icmp ult i32* %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, i32* @GEN_PQR_C, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @Q_SYNDROME(i32 %83, i32* %84)
  %86 = load i32, i32* @GEN_PQR_C, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @R_SYNDROME(i32 %86, i32* %87)
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @GEN_PQR_STRIDE, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %10, align 8
  %94 = load i32, i32* @GEN_PQR_STRIDE, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %11, align 8
  br label %78

98:                                               ; preds = %78
  ret void
}

declare dso_local i32 @GEN_PQR_DEFINE(...) #1

declare dso_local i32 @MUL2_SETUP(...) #1

declare dso_local i32 @LOAD(i32*, i32) #1

declare dso_local i32 @P_D_SYNDROME(i32, i32, i32*) #1

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
