; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_shift.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TK_SHL = common dso_local global i32 0, align 4
@SHL = common dso_local global i32 0, align 4
@TK_SHR = common dso_local global i32 0, align 4
@SHR = common dso_local global i32 0, align 4
@TK_USHR = common dso_local global i32 0, align 4
@USHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @shift(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = call i32* @additive(%struct.TYPE_5__* %5)
  store i32* %6, i32** %3, align 8
  %7 = call i32 (...) @SAVEREC()
  br label %8

8:                                                ; preds = %39, %28, %17, %1
  %9 = call i32 (...) @INCREC()
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = load i32, i32* @TK_SHL, align 4
  %15 = call i64 @jsP_accept(%struct.TYPE_5__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = load i32, i32* @SHL, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = call i32* @additive(%struct.TYPE_5__* %20)
  %22 = call i32* @EXP2(i32 %18, i32* %19, i32* %21)
  store i32* %22, i32** %3, align 8
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load i32, i32* @TK_SHR, align 4
  %26 = call i64 @jsP_accept(%struct.TYPE_5__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @SHR, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = call i32* @additive(%struct.TYPE_5__* %31)
  %33 = call i32* @EXP2(i32 %29, i32* %30, i32* %32)
  store i32* %33, i32** %3, align 8
  br label %8

34:                                               ; preds = %23
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = load i32, i32* @TK_USHR, align 4
  %37 = call i64 @jsP_accept(%struct.TYPE_5__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @USHR, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = call i32* @additive(%struct.TYPE_5__* %42)
  %44 = call i32* @EXP2(i32 %40, i32* %41, i32* %43)
  store i32* %44, i32** %3, align 8
  br label %8

45:                                               ; preds = %34
  %46 = call i32 (...) @POPREC()
  %47 = load i32*, i32** %3, align 8
  ret i32* %47
}

declare dso_local i32* @additive(%struct.TYPE_5__*) #1

declare dso_local i32 @SAVEREC(...) #1

declare dso_local i32 @INCREC(...) #1

declare dso_local i64 @jsP_accept(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @EXP2(i32, i32*, i32*) #1

declare dso_local i32 @POPREC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
