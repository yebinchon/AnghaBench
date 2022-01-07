; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codenot.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codenot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fullset = common dso_local global i32 0, align 4
@IFail = common dso_local global i32 0, align 4
@IChoice = common dso_local global i32 0, align 4
@NOINST = common dso_local global i32 0, align 4
@IFailTwice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @codenot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codenot(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @fullset, align 4
  %11 = call i32 @getfirst(i32* %9, i32 %10, i32* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @codetestset(i32* %12, i32* %5, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @headfail(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @IFail, align 4
  %21 = call i32 @addinstruction(i32* %19, i32 %20, i32 0)
  br label %37

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @IChoice, align 4
  %25 = call i32 @addoffsetinst(i32* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @NOINST, align 4
  %29 = load i32, i32* @fullset, align 4
  %30 = call i32 @codegen(i32* %26, i32* %27, i32 0, i32 %28, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @IFailTwice, align 4
  %33 = call i32 @addinstruction(i32* %31, i32 %32, i32 0)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @jumptohere(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %22, %18
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @jumptohere(i32* %38, i32 %39)
  ret void
}

declare dso_local i32 @getfirst(i32*, i32, i32*) #1

declare dso_local i32 @codetestset(i32*, i32*, i32) #1

declare dso_local i64 @headfail(i32*) #1

declare dso_local i32 @addinstruction(i32*, i32, i32) #1

declare dso_local i32 @addoffsetinst(i32*, i32) #1

declare dso_local i32 @codegen(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @jumptohere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
