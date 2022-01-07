; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsregexp.c_js_newregexp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsregexp.c_js_newregexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i32, i32* }

@JS_CREGEXP = common dso_local global i32 0, align 4
@JS_REGEXP_I = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@JS_REGEXP_M = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"regular expression: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_newregexp(%struct.TYPE_14__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = load i32, i32* @JS_CREGEXP, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_15__* @jsV_newobject(%struct.TYPE_14__* %11, i32 %12, i32 %15)
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @JS_REGEXP_I, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @REG_ICASE, align 4
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @JS_REGEXP_M, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @REG_NEWLINE, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32* @js_regcompx(i32 %37, i32 %40, i8* %41, i32 %42, i8** %7)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %34
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @js_syntaxerror(%struct.TYPE_14__* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %34
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  store i32* %51, i32** %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @js_strdup(%struct.TYPE_14__* %56, i8* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = call i32 @js_pushobject(%struct.TYPE_14__* %72, %struct.TYPE_15__* %73)
  ret void
}

declare dso_local %struct.TYPE_15__* @jsV_newobject(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32* @js_regcompx(i32, i32, i8*, i32, i8**) #1

declare dso_local i32 @js_syntaxerror(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @js_strdup(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @js_pushobject(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
