; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_for_iter.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_for_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORL_STOP = common dso_local global i64 0, align 8
@FORL_IDX = common dso_local global i64 0, align 8
@FORL_STEP = common dso_local global i64 0, align 8
@IR_LE = common dso_local global i32 0, align 4
@LOOPEV_ENTERLO = common dso_local global i32 0, align 4
@LOOPEV_ENTER = common dso_local global i32 0, align 4
@IR_GT = common dso_local global i32 0, align 4
@LOOPEV_LEAVE = common dso_local global i32 0, align 4
@IR_GE = common dso_local global i32 0, align 4
@IR_LT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @rec_for_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rec_for_iter(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i64, i64* @FORL_STOP, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i64 @numberVnum(i32* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* @FORL_IDX, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i64 @numberVnum(i32* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* @FORL_STEP, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i64 @numberVnum(i32* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* @FORL_STEP, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i64 @rec_for_direction(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i32, i32* @IR_LE, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = mul nsw i64 2, %43
  %45 = add nsw i64 %42, %44
  %46 = load i64, i64* %8, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @LOOPEV_ENTERLO, align 4
  br label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @LOOPEV_ENTER, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %4, align 4
  br label %81

54:                                               ; preds = %35
  %55 = load i32, i32* @IR_GT, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @LOOPEV_LEAVE, align 4
  store i32 %57, i32* %4, align 4
  br label %81

58:                                               ; preds = %29
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32, i32* @IR_GE, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = mul nsw i64 2, %66
  %68 = add nsw i64 %65, %67
  %69 = load i64, i64* %8, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @LOOPEV_ENTERLO, align 4
  br label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @LOOPEV_ENTER, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %4, align 4
  br label %81

77:                                               ; preds = %58
  %78 = load i32, i32* @IR_LT, align 4
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @LOOPEV_LEAVE, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %75, %54, %52
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @numberVnum(i32*) #1

declare dso_local i64 @rec_for_direction(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
