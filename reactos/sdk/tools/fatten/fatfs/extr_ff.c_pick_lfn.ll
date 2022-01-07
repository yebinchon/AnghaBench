; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_pick_lfn.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_pick_lfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDIR_FstClusLO = common dso_local global i32 0, align 4
@LDIR_Ord = common dso_local global i64 0, align 8
@LfnOfs = common dso_local global i32* null, align 8
@_MAX_LFN = common dso_local global i32 0, align 4
@LLEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pick_lfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pick_lfn(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @LDIR_FstClusLO, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @LD_WORD(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* @LDIR_Ord, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 63
  %23 = sub nsw i32 %22, 1
  %24 = mul nsw i32 %23, 13
  store i32 %24, i32* %6, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %58, %17
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 13
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** @LfnOfs, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  %37 = call i32 @LD_WORD(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @_MAX_LFN, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %80

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  br label %57

52:                                               ; preds = %28
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 65535
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %80

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %25

61:                                               ; preds = %25
  %62 = load i32*, i32** %5, align 8
  %63 = load i64, i64* @LDIR_Ord, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @LLEF, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @_MAX_LFN, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %80

74:                                               ; preds = %69
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %61
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %73, %55, %44, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @LD_WORD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
