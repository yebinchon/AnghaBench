; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_equality.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_equality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TK_EQ = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@TK_STRICTEQ = common dso_local global i32 0, align 4
@STRICTEQ = common dso_local global i32 0, align 4
@TK_STRICTNE = common dso_local global i32 0, align 4
@STRICTNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32)* @equality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @equality(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32* @relational(%struct.TYPE_5__* %7, i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = call i32 (...) @SAVEREC()
  br label %11

11:                                               ; preds = %56, %44, %32, %20, %2
  %12 = call i32 (...) @INCREC()
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = load i32, i32* @TK_EQ, align 4
  %18 = call i64 @jsP_accept(%struct.TYPE_5__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load i32, i32* @EQ, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32* @relational(%struct.TYPE_5__* %23, i32 %24)
  %26 = call i32* @EXP2(i32 %21, i32* %22, i32* %25)
  store i32* %26, i32** %5, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = load i32, i32* @TK_NE, align 4
  %30 = call i64 @jsP_accept(%struct.TYPE_5__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @NE, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32* @relational(%struct.TYPE_5__* %35, i32 %36)
  %38 = call i32* @EXP2(i32 %33, i32* %34, i32* %37)
  store i32* %38, i32** %5, align 8
  br label %11

39:                                               ; preds = %27
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = load i32, i32* @TK_STRICTEQ, align 4
  %42 = call i64 @jsP_accept(%struct.TYPE_5__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @STRICTEQ, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32* @relational(%struct.TYPE_5__* %47, i32 %48)
  %50 = call i32* @EXP2(i32 %45, i32* %46, i32* %49)
  store i32* %50, i32** %5, align 8
  br label %11

51:                                               ; preds = %39
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = load i32, i32* @TK_STRICTNE, align 4
  %54 = call i64 @jsP_accept(%struct.TYPE_5__* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @STRICTNE, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32* @relational(%struct.TYPE_5__* %59, i32 %60)
  %62 = call i32* @EXP2(i32 %57, i32* %58, i32* %61)
  store i32* %62, i32** %5, align 8
  br label %11

63:                                               ; preds = %51
  %64 = call i32 (...) @POPREC()
  %65 = load i32*, i32** %5, align 8
  ret i32* %65
}

declare dso_local i32* @relational(%struct.TYPE_5__*, i32) #1

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
