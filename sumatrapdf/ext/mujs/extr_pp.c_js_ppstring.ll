; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_pp.c_js_ppstring.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_pp.c_js_ppstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32)* @js_ppstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @js_ppstring(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @js_try(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @jsP_freeparse(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @js_throw(i32* %16)
  br label %18

18:                                               ; preds = %13, %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32* @jsP_parse(i32* %19, i8* %20, i8* %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @jsP_dumplist(i32* %26, i32* %27)
  br label %34

29:                                               ; preds = %18
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @jsP_dumpsyntax(i32* %30, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @jsP_freeparse(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @js_endtry(i32* %37)
  ret void
}

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @jsP_freeparse(i32*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32* @jsP_parse(i32*, i8*, i8*) #1

declare dso_local i32 @jsP_dumplist(i32*, i32*) #1

declare dso_local i32 @jsP_dumpsyntax(i32*, i32*, i32) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
