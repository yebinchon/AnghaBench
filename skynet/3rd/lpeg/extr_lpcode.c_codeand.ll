; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codeand.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codeand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXBEHIND = common dso_local global i32 0, align 4
@fullset = common dso_local global i32 0, align 4
@IBehind = common dso_local global i32 0, align 4
@IChoice = common dso_local global i32 0, align 4
@IBackCommit = common dso_local global i32 0, align 4
@IFail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @codeand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeand(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @fixedlen(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MAXBEHIND, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @hascaptures(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @fullset, align 4
  %27 = call i32 @codegen(i32* %23, i32* %24, i32 0, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @IBehind, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @addinstruction(i32* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %22
  br label %57

36:                                               ; preds = %18, %14, %3
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @IChoice, align 4
  %39 = call i32 @addoffsetinst(i32* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @fullset, align 4
  %44 = call i32 @codegen(i32* %40, i32* %41, i32 0, i32 %42, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @IBackCommit, align 4
  %47 = call i32 @addoffsetinst(i32* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @jumptohere(i32* %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @IFail, align 4
  %53 = call i32 @addinstruction(i32* %51, i32 %52, i32 0)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @jumptohere(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @fixedlen(i32*) #1

declare dso_local i32 @hascaptures(i32*) #1

declare dso_local i32 @codegen(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @addinstruction(i32*, i32, i32) #1

declare dso_local i32 @addoffsetinst(i32*, i32) #1

declare dso_local i32 @jumptohere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
