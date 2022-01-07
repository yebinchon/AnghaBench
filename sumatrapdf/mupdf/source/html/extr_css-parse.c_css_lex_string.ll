; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_css_lex_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_css_lex_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexbuf = type { i32 }

@CSS_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lexbuf*, i32)* @css_lex_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_lex_string(%struct.lexbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.lexbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.lexbuf* %0, %struct.lexbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %84, %2
  %6 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %7 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %12 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i1 [ false, %5 ], [ %15, %10 ]
  br i1 %17, label %18, label %85

18:                                               ; preds = %16
  %19 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %20 = call i64 @css_lex_accept(%struct.lexbuf* %19, i8 signext 92)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %18
  %23 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %24 = call i64 @css_lex_accept(%struct.lexbuf* %23, i8 signext 110)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %28 = call i32 @css_push_char(%struct.lexbuf* %27, float 1.000000e+01)
  br label %74

29:                                               ; preds = %22
  %30 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %31 = call i64 @css_lex_accept(%struct.lexbuf* %30, i8 signext 114)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %35 = call i32 @css_push_char(%struct.lexbuf* %34, float 1.300000e+01)
  br label %73

36:                                               ; preds = %29
  %37 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %38 = call i64 @css_lex_accept(%struct.lexbuf* %37, i8 signext 102)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %42 = call i32 @css_push_char(%struct.lexbuf* %41, float 1.200000e+01)
  br label %72

43:                                               ; preds = %36
  %44 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %45 = call i64 @css_lex_accept(%struct.lexbuf* %44, i8 signext 12)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %71

48:                                               ; preds = %43
  %49 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %50 = call i64 @css_lex_accept(%struct.lexbuf* %49, i8 signext 10)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %70

53:                                               ; preds = %48
  %54 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %55 = call i64 @css_lex_accept(%struct.lexbuf* %54, i8 signext 13)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %59 = call i64 @css_lex_accept(%struct.lexbuf* %58, i8 signext 10)
  br label %69

60:                                               ; preds = %53
  %61 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %62 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %63 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to float
  %66 = call i32 @css_push_char(%struct.lexbuf* %61, float %65)
  %67 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %68 = call i32 @css_lex_next(%struct.lexbuf* %67)
  br label %69

69:                                               ; preds = %60, %57
  br label %70

70:                                               ; preds = %69, %52
  br label %71

71:                                               ; preds = %70, %47
  br label %72

72:                                               ; preds = %71, %40
  br label %73

73:                                               ; preds = %72, %33
  br label %74

74:                                               ; preds = %73, %26
  br label %84

75:                                               ; preds = %18
  %76 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %77 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %78 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sitofp i32 %79 to float
  %81 = call i32 @css_push_char(%struct.lexbuf* %76, float %80)
  %82 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %83 = call i32 @css_lex_next(%struct.lexbuf* %82)
  br label %84

84:                                               ; preds = %75, %74
  br label %5

85:                                               ; preds = %16
  %86 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @css_lex_expect(%struct.lexbuf* %86, i32 %87)
  %89 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %90 = call i32 @css_push_char(%struct.lexbuf* %89, float 0.000000e+00)
  %91 = load i32, i32* @CSS_STRING, align 4
  ret i32 %91
}

declare dso_local i64 @css_lex_accept(%struct.lexbuf*, i8 signext) #1

declare dso_local i32 @css_push_char(%struct.lexbuf*, float) #1

declare dso_local i32 @css_lex_next(%struct.lexbuf*) #1

declare dso_local i32 @css_lex_expect(%struct.lexbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
