; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_declaration.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.lexbuf = type { i64, i32, i32, i32 }

@CSS_KEYWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"expected keyword in property\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"important\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"expected keyword 'important' after '!'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.lexbuf*)* @parse_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @parse_declaration(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.lexbuf*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %2, align 8
  %4 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %5 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CSS_KEYWORD, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %11 = call i32 @fz_css_error(%struct.lexbuf* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %14 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %17 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %20 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_4__* @fz_new_css_property(i32 %15, i32 %18, i32 %21, i32* null, i32 0)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %3, align 8
  %23 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %24 = call i32 @next(%struct.lexbuf* %23)
  %25 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %26 = call i32 @white(%struct.lexbuf* %25)
  %27 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %28 = call i32 @expect(%struct.lexbuf* %27, i8 signext 58)
  %29 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %30 = call i32 @white(%struct.lexbuf* %29)
  %31 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %32 = call i32 @parse_expr(%struct.lexbuf* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %36 = call i64 @accept(%struct.lexbuf* %35, i8 signext 33)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %12
  %39 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %40 = call i32 @white(%struct.lexbuf* %39)
  %41 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %42 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CSS_KEYWORD, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %48 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @strcmp(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %38
  %53 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %54 = call i32 @fz_css_error(%struct.lexbuf* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %59 = call i32 @next(%struct.lexbuf* %58)
  %60 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %61 = call i32 @white(%struct.lexbuf* %60)
  br label %62

62:                                               ; preds = %55, %12
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %63
}

declare dso_local i32 @fz_css_error(%struct.lexbuf*, i8*) #1

declare dso_local %struct.TYPE_4__* @fz_new_css_property(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @next(%struct.lexbuf*) #1

declare dso_local i32 @white(%struct.lexbuf*) #1

declare dso_local i32 @expect(%struct.lexbuf*, i8 signext) #1

declare dso_local i32 @parse_expr(%struct.lexbuf*) #1

declare dso_local i64 @accept(%struct.lexbuf*, i8 signext) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
