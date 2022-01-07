; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_conditional.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_conditional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@COND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32)* @conditional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conditional(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32* @logor(%struct.TYPE_7__* %10, i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = call i64 @jsP_accept(%struct.TYPE_7__* %16, i8 signext 63)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = call i32 (...) @INCREC()
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = call i32* @assignment(%struct.TYPE_7__* %21, i32 0)
  store i32* %22, i32** %8, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = call i32 @jsP_expect(%struct.TYPE_7__* %23, i8 signext 58)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32* @assignment(%struct.TYPE_7__* %25, i32 %26)
  store i32* %27, i32** %9, align 8
  %28 = call i32 (...) @DECREC()
  %29 = load i32, i32* @COND, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32* @EXP3(i32 %29, i32* %30, i32* %31, i32* %32)
  store i32* %33, i32** %3, align 8
  br label %36

34:                                               ; preds = %2
  %35 = load i32*, i32** %6, align 8
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %34, %19
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32* @logor(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @jsP_accept(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @INCREC(...) #1

declare dso_local i32* @assignment(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @jsP_expect(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @DECREC(...) #1

declare dso_local i32* @EXP3(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
