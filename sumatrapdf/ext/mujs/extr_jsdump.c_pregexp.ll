; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_pregexp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_pregexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JS_REGEXP_G = common dso_local global i32 0, align 4
@JS_REGEXP_I = common dso_local global i32 0, align 4
@JS_REGEXP_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pregexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pregexp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @pc(i8 signext 47)
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @ps(i8* %6)
  %8 = call i32 @pc(i8 signext 47)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @JS_REGEXP_G, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @pc(i8 signext 103)
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @JS_REGEXP_I, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @pc(i8 signext 105)
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @JS_REGEXP_M, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @pc(i8 signext 109)
  br label %29

29:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @pc(i8 signext) #1

declare dso_local i32 @ps(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
