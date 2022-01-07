; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_bcemit_binop_left.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_bcemit_binop_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPR_AND = common dso_local global i64 0, align 8
@OPR_OR = common dso_local global i64 0, align 8
@OPR_CONCAT = common dso_local global i64 0, align 8
@OPR_EQ = common dso_local global i64 0, align 8
@OPR_NE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @bcemit_binop_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcemit_binop_left(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @OPR_AND, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @bcemit_branch_t(i32* %11, i32* %12)
  br label %59

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @OPR_OR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @bcemit_branch_f(i32* %19, i32* %20)
  br label %58

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @OPR_CONCAT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @expr_tonextreg(i32* %27, i32* %28)
  br label %57

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @OPR_EQ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @OPR_NE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @expr_isk_nojump(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @expr_toanyreg(i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %56

47:                                               ; preds = %34
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @expr_isnumk_nojump(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @expr_toanyreg(i32* %52, i32* %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %46
  br label %57

57:                                               ; preds = %56, %26
  br label %58

58:                                               ; preds = %57, %18
  br label %59

59:                                               ; preds = %58, %10
  ret void
}

declare dso_local i32 @bcemit_branch_t(i32*, i32*) #1

declare dso_local i32 @bcemit_branch_f(i32*, i32*) #1

declare dso_local i32 @expr_tonextreg(i32*, i32*) #1

declare dso_local i32 @expr_isk_nojump(i32*) #1

declare dso_local i32 @expr_toanyreg(i32*, i32*) #1

declare dso_local i32 @expr_isnumk_nojump(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
