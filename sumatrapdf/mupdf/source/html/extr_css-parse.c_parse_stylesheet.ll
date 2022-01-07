; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_stylesheet.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_stylesheet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexbuf = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@EOF = common dso_local global i64 0, align 8
@CSS_KEYWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"font-face\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.lexbuf*, %struct.TYPE_7__*)* @parse_stylesheet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @parse_stylesheet(%struct.lexbuf* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.lexbuf*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %18, %12
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %7, align 8
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store %struct.TYPE_7__** %24, %struct.TYPE_7__*** %6, align 8
  br label %26

25:                                               ; preds = %2
  store %struct.TYPE_7__** %7, %struct.TYPE_7__*** %6, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %28 = call i32 @white(%struct.lexbuf* %27)
  br label %29

29:                                               ; preds = %95, %26
  %30 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %31 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EOF, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %98

35:                                               ; preds = %29
  %36 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %37 = call i64 @accept(%struct.lexbuf* %36, i8 signext 64)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %35
  %40 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %41 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CSS_KEYWORD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %47 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @strcmp(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %53 = call i32 @next(%struct.lexbuf* %52)
  %54 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %55 = call %struct.TYPE_7__* @parse_at_page(%struct.lexbuf* %54)
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %56, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %5, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store %struct.TYPE_7__** %58, %struct.TYPE_7__*** %6, align 8
  br label %83

59:                                               ; preds = %45, %39
  %60 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %61 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CSS_KEYWORD, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %67 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @strcmp(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %73 = call i32 @next(%struct.lexbuf* %72)
  %74 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %75 = call %struct.TYPE_7__* @parse_at_font_face(%struct.lexbuf* %74)
  %76 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %76, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %5, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store %struct.TYPE_7__** %78, %struct.TYPE_7__*** %6, align 8
  br label %82

79:                                               ; preds = %65, %59
  %80 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %81 = call i32 @parse_at_rule(%struct.lexbuf* %80)
  br label %82

82:                                               ; preds = %79, %71
  br label %83

83:                                               ; preds = %82, %51
  br label %95

84:                                               ; preds = %35
  %85 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %86 = call %struct.TYPE_7__* @parse_ruleset(%struct.lexbuf* %85)
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %8, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = icmp ne %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %91, align 8
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %5, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store %struct.TYPE_7__** %93, %struct.TYPE_7__*** %6, align 8
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %83
  %96 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %97 = call i32 @white(%struct.lexbuf* %96)
  br label %29

98:                                               ; preds = %29
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = icmp ne %struct.TYPE_7__* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  br label %105

103:                                              ; preds = %98
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi %struct.TYPE_7__* [ %102, %101 ], [ %104, %103 ]
  ret %struct.TYPE_7__* %106
}

declare dso_local i32 @white(%struct.lexbuf*) #1

declare dso_local i64 @accept(%struct.lexbuf*, i8 signext) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @next(%struct.lexbuf*) #1

declare dso_local %struct.TYPE_7__* @parse_at_page(%struct.lexbuf*) #1

declare dso_local %struct.TYPE_7__* @parse_at_font_face(%struct.lexbuf*) #1

declare dso_local i32 @parse_at_rule(%struct.lexbuf*) #1

declare dso_local %struct.TYPE_7__* @parse_ruleset(%struct.lexbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
