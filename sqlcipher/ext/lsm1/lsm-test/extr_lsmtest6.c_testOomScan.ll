; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_testOomScan.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_testOomScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSM_OK = common dso_local global i32 0, align 4
@LSM_SEEK_LE = common dso_local global i32 0, align 4
@LSM_SEEK_GE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*, i32, i32, i32*)* @testOomScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testOomScan(i32* %0, i32* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32 (i32*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %101

24:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  store i32 (i32*)* null, i32 (i32*)** %18, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @lsm_csr_open(i32* %25, i32** %17)
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @testOomAssertRc(i32* %27, i32 %28)
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @LSM_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32*, i32** %17, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @LSM_SEEK_LE, align 4
  %41 = call i32 @lsm_csr_seek(i32* %37, i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  store i32 (i32*)* @lsm_csr_prev, i32 (i32*)** %18, align 8
  br label %48

42:                                               ; preds = %33
  %43 = load i32*, i32** %17, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @LSM_SEEK_GE, align 4
  %47 = call i32 @lsm_csr_seek(i32* %43, i8* %44, i32 %45, i32 %46)
  store i32 %47, i32* %15, align 4
  store i32 (i32*)* @lsm_csr_next, i32 (i32*)** %18, align 8
  br label %48

48:                                               ; preds = %42, %36
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @testOomAssertRc(i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %93, %49
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @LSM_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32*, i32** %17, align 8
  %59 = call i64 @lsm_csr_valid(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57, %53
  %66 = phi i1 [ false, %57 ], [ false, %53 ], [ %64, %61 ]
  br i1 %66, label %67, label %96

67:                                               ; preds = %65
  %68 = load i32*, i32** %17, align 8
  %69 = call i32 @lsm_csr_key(i32* %68, i8** %19, i32* %20)
  store i32 %69, i32* %15, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @testOomAssertRc(i32* %70, i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @LSM_OK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @lsm_csr_value(i32* %77, i8** %19, i32* %20)
  store i32 %78, i32* %15, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @testOomAssertRc(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %67
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @LSM_OK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32 (i32*)*, i32 (i32*)** %18, align 8
  %88 = load i32*, i32** %17, align 8
  %89 = call i32 %87(i32* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @testOomAssertRc(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %82
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %53

96:                                               ; preds = %65
  %97 = load i32*, i32** %17, align 8
  %98 = call i32 @lsm_csr_close(i32* %97)
  %99 = load i32, i32* %15, align 4
  %100 = load i32*, i32** %14, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %7
  ret void
}

declare dso_local i32 @lsm_csr_open(i32*, i32**) #1

declare dso_local i32 @testOomAssertRc(i32*, i32) #1

declare dso_local i32 @lsm_csr_seek(i32*, i8*, i32, i32) #1

declare dso_local i32 @lsm_csr_prev(i32*) #1

declare dso_local i32 @lsm_csr_next(i32*) #1

declare dso_local i64 @lsm_csr_valid(i32*) #1

declare dso_local i32 @lsm_csr_key(i32*, i8**, i32*) #1

declare dso_local i32 @lsm_csr_value(i32*, i8**, i32*) #1

declare dso_local i32 @lsm_csr_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
