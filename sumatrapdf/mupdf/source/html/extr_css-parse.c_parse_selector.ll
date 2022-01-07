; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_selector.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexbuf = type { i8 }

@EOF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.lexbuf*)* @parse_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_selector(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.lexbuf*, align 8
  %3 = alloca i32*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %2, align 8
  %4 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %5 = call i32* @parse_simple_selector(%struct.lexbuf* %4)
  store i32* %5, i32** %3, align 8
  br label %6

6:                                                ; preds = %73, %1
  %7 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %8 = call i64 @accept(%struct.lexbuf* %7, i8 signext 32)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %6
  %11 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %12 = call i64 @accept(%struct.lexbuf* %11, i8 signext 43)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @parse_combinator(%struct.lexbuf* %15, i8 signext 43, i32* %16)
  store i32* %17, i32** %3, align 8
  br label %53

18:                                               ; preds = %10
  %19 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %20 = call i64 @accept(%struct.lexbuf* %19, i8 signext 62)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @parse_combinator(%struct.lexbuf* %23, i8 signext 62, i32* %24)
  store i32* %25, i32** %3, align 8
  br label %52

26:                                               ; preds = %18
  %27 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %28 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 44
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %34 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 123
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %40 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @EOF, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i32* @parse_combinator(%struct.lexbuf* %47, i8 signext 32, i32* %48)
  store i32* %49, i32** %3, align 8
  br label %51

50:                                               ; preds = %38, %32, %26
  br label %74

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %22
  br label %53

53:                                               ; preds = %52, %14
  br label %73

54:                                               ; preds = %6
  %55 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %56 = call i64 @accept(%struct.lexbuf* %55, i8 signext 43)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i32* @parse_combinator(%struct.lexbuf* %59, i8 signext 43, i32* %60)
  store i32* %61, i32** %3, align 8
  br label %72

62:                                               ; preds = %54
  %63 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %64 = call i64 @accept(%struct.lexbuf* %63, i8 signext 62)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32* @parse_combinator(%struct.lexbuf* %67, i8 signext 62, i32* %68)
  store i32* %69, i32** %3, align 8
  br label %71

70:                                               ; preds = %62
  br label %74

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %53
  br label %6

74:                                               ; preds = %70, %50
  %75 = load i32*, i32** %3, align 8
  ret i32* %75
}

declare dso_local i32* @parse_simple_selector(%struct.lexbuf*) #1

declare dso_local i64 @accept(%struct.lexbuf*, i8 signext) #1

declare dso_local i32* @parse_combinator(%struct.lexbuf*, i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
