; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_css_lex_number.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_css_lex_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexbuf = type { i8 }

@CSS_PERCENT = common dso_local global i32 0, align 4
@CSS_LENGTH = common dso_local global i32 0, align 4
@CSS_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lexbuf*)* @css_lex_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_lex_number(%struct.lexbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lexbuf*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %3, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %6 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sge i32 %8, 48
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %12 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sle i32 %14, 57
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i1 [ false, %4 ], [ %15, %10 ]
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %20 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %21 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @css_push_char(%struct.lexbuf* %19, i8 signext %22)
  %24 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %25 = call i32 @css_lex_next(%struct.lexbuf* %24)
  br label %4

26:                                               ; preds = %16
  %27 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %28 = call i64 @css_lex_accept(%struct.lexbuf* %27, i8 signext 46)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %32 = call i32 @css_push_char(%struct.lexbuf* %31, i8 signext 46)
  br label %33

33:                                               ; preds = %47, %30
  %34 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %35 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 48
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %41 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 57
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i1 [ false, %33 ], [ %44, %39 ]
  br i1 %46, label %47, label %55

47:                                               ; preds = %45
  %48 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %49 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %50 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @css_push_char(%struct.lexbuf* %48, i8 signext %51)
  %53 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %54 = call i32 @css_lex_next(%struct.lexbuf* %53)
  br label %33

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %26
  %57 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %58 = call i64 @css_lex_accept(%struct.lexbuf* %57, i8 signext 37)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %62 = call i32 @css_push_char(%struct.lexbuf* %61, i8 signext 37)
  %63 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %64 = call i32 @css_push_char(%struct.lexbuf* %63, i8 signext 0)
  %65 = load i32, i32* @CSS_PERCENT, align 4
  store i32 %65, i32* %2, align 4
  br label %102

66:                                               ; preds = %56
  %67 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %68 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %67, i32 0, i32 0
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isnmstart(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %66
  %73 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %74 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %75 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @css_push_char(%struct.lexbuf* %73, i8 signext %76)
  %78 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %79 = call i32 @css_lex_next(%struct.lexbuf* %78)
  br label %80

80:                                               ; preds = %86, %72
  %81 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %82 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %81, i32 0, i32 0
  %83 = load i8, i8* %82, align 1
  %84 = call i64 @isnmchar(i8 signext %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %88 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %89 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @css_push_char(%struct.lexbuf* %87, i8 signext %90)
  %92 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %93 = call i32 @css_lex_next(%struct.lexbuf* %92)
  br label %80

94:                                               ; preds = %80
  %95 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %96 = call i32 @css_push_char(%struct.lexbuf* %95, i8 signext 0)
  %97 = load i32, i32* @CSS_LENGTH, align 4
  store i32 %97, i32* %2, align 4
  br label %102

98:                                               ; preds = %66
  %99 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %100 = call i32 @css_push_char(%struct.lexbuf* %99, i8 signext 0)
  %101 = load i32, i32* @CSS_NUMBER, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %94, %60
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @css_push_char(%struct.lexbuf*, i8 signext) #1

declare dso_local i32 @css_lex_next(%struct.lexbuf*) #1

declare dso_local i64 @css_lex_accept(%struct.lexbuf*, i8 signext) #1

declare dso_local i64 @isnmstart(i8 signext) #1

declare dso_local i64 @isnmchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
