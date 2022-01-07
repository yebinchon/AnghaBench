; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_simple_selector.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_simple_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.lexbuf = type { i64, i32, i32, i32* }

@CSS_KEYWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"expected selector\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.lexbuf*)* @parse_simple_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @parse_simple_selector(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.lexbuf*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %3, align 8
  %5 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %6 = call i64 @accept(%struct.lexbuf* %5, i8 signext 42)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %10 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %13 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_4__* @fz_new_css_selector(i32 %11, i32 %14, i32* null)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %17 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @iscond(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %8
  %22 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %23 = call i8* @parse_condition_list(%struct.lexbuf* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %21, %8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %2, align 8
  br label %83

28:                                               ; preds = %1
  %29 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %30 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CSS_KEYWORD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %36 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %39 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %42 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call %struct.TYPE_4__* @fz_new_css_selector(i32 %37, i32 %40, i32* %43)
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %4, align 8
  %45 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %46 = call i32 @next(%struct.lexbuf* %45)
  %47 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %48 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @iscond(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %34
  %53 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %54 = call i8* @parse_condition_list(%struct.lexbuf* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %52, %34
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %2, align 8
  br label %83

59:                                               ; preds = %28
  %60 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %61 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @iscond(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %67 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %70 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_4__* @fz_new_css_selector(i32 %68, i32 %71, i32* null)
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %4, align 8
  %73 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %74 = call i8* @parse_condition_list(%struct.lexbuf* %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %2, align 8
  br label %83

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %82 = call i32 @fz_css_error(%struct.lexbuf* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %65, %57, %26
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %84
}

declare dso_local i64 @accept(%struct.lexbuf*, i8 signext) #1

declare dso_local %struct.TYPE_4__* @fz_new_css_selector(i32, i32, i32*) #1

declare dso_local i64 @iscond(i64) #1

declare dso_local i8* @parse_condition_list(%struct.lexbuf*) #1

declare dso_local i32 @next(%struct.lexbuf*) #1

declare dso_local i32 @fz_css_error(%struct.lexbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
