; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_caseclause.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_caseclause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@TK_CASE = common dso_local global i32 0, align 4
@CASE = common dso_local global i32 0, align 4
@TK_DEFAULT = common dso_local global i32 0, align 4
@DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"unexpected token in switch: %s (expected 'case' or 'default')\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*)* @caseclause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @caseclause(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = load i32, i32* @TK_CASE, align 4
  %12 = call i64 @jsP_accept(%struct.TYPE_8__* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = call i32* @expression(%struct.TYPE_8__* %15, i32 0)
  store i32* %16, i32** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = call i32 @jsP_expect(%struct.TYPE_8__* %17, i8 signext 58)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = call i32* @statementlist(%struct.TYPE_8__* %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32, i32* @CASE, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @STM2(i32 %21, i32* %22, i32* %23)
  store i32* %24, i32** %2, align 8
  br label %45

25:                                               ; preds = %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load i32, i32* @TK_DEFAULT, align 4
  %28 = call i64 @jsP_accept(%struct.TYPE_8__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = call i32 @jsP_expect(%struct.TYPE_8__* %31, i8 signext 58)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = call i32* @statementlist(%struct.TYPE_8__* %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32, i32* @DEFAULT, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @STM1(i32 %35, i32* %36)
  store i32* %37, i32** %2, align 8
  br label %45

38:                                               ; preds = %25
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @jsY_tokenstring(i32 %42)
  %44 = call i32 @jsP_error(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %30, %14
  %46 = load i32*, i32** %2, align 8
  ret i32* %46
}

declare dso_local i64 @jsP_accept(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @expression(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @jsP_expect(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32* @statementlist(%struct.TYPE_8__*) #1

declare dso_local i32* @STM2(i32, i32*, i32*) #1

declare dso_local i32* @STM1(i32, i32*) #1

declare dso_local i32 @jsP_error(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @jsY_tokenstring(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
