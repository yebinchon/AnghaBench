; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_fit_lfn.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_fit_lfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDIR_Chksum = common dso_local global i64 0, align 8
@AM_LFN = common dso_local global i32 0, align 4
@LDIR_Attr = common dso_local global i64 0, align 8
@LDIR_Type = common dso_local global i64 0, align 8
@LDIR_FstClusLO = common dso_local global i32 0, align 4
@LfnOfs = common dso_local global i32* null, align 8
@LLEF = common dso_local global i32 0, align 4
@LDIR_Ord = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @fit_lfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fit_lfn(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* @LDIR_Chksum, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @AM_LFN, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i64, i64* @LDIR_Attr, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* @LDIR_Type, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @LDIR_FstClusLO, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @ST_WORD(i32* %26, i32 0)
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = mul nsw i32 %29, 13
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %56, %4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 65535
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** @LfnOfs, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @ST_WORD(i32* %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  store i32 65535, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = icmp slt i32 %58, 13
  br i1 %59, label %31, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 65535
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63, %60
  %71 = load i32, i32* @LLEF, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i64, i64* @LDIR_Ord, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %78, align 4
  ret void
}

declare dso_local i32 @ST_WORD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
