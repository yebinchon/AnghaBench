; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_lj_opt_narrow_forl.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_lj_opt_narrow_forl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORL_IDX = common dso_local global i64 0, align 8
@FORL_STOP = common dso_local global i64 0, align 8
@FORL_STEP = common dso_local global i64 0, align 8
@IRT_INT = common dso_local global i32 0, align 4
@IRT_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_opt_narrow_forl(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i64, i64* @FORL_IDX, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = call i64 @tvisnumber(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* @FORL_STOP, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i64 @tvisnumber(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* @FORL_STEP, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i64 @tvisnumber(i32* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %19, %13, %2
  %26 = phi i1 [ false, %13 ], [ false, %2 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @lua_assert(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* @FORL_IDX, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i64 @narrow_forl(i32* %29, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %25
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i64, i64* @FORL_STOP, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i64 @narrow_forl(i32* %36, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* @FORL_STEP, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i64 @narrow_forl(i32* %43, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %42
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* @FORL_STEP, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i64 @numberVnum(i32* %52)
  store i64 %53, i64* %6, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* @FORL_STOP, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i64 @numberVnum(i32* %56)
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %57, %58
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp sle i64 0, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load i64, i64* %7, align 8
  %64 = sitofp i64 %63 to double
  %65 = fcmp ole double %64, 0x41DFFFFFFFC00000
  br i1 %65, label %70, label %72

66:                                               ; preds = %49
  %67 = load i64, i64* %7, align 8
  %68 = sitofp i64 %67 to double
  %69 = fcmp oge double %68, 0xC1E0000000000000
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @IRT_INT, align 4
  store i32 %71, i32* %3, align 4
  br label %75

72:                                               ; preds = %66, %62
  br label %73

73:                                               ; preds = %72, %42, %35, %25
  %74 = load i32, i32* @IRT_NUM, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @tvisnumber(i32*) #1

declare dso_local i64 @narrow_forl(i32*, i32*) #1

declare dso_local i64 @numberVnum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
