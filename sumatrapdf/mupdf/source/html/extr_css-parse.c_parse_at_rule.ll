; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_at_rule.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_at_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexbuf = type { i64 }

@CSS_KEYWORD = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lexbuf*)* @parse_at_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_at_rule(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.lexbuf*, align 8
  %3 = alloca i32, align 4
  store %struct.lexbuf* %0, %struct.lexbuf** %2, align 8
  %4 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %5 = load i32, i32* @CSS_KEYWORD, align 4
  %6 = call i32 @expect(%struct.lexbuf* %4, i32 %5)
  br label %7

7:                                                ; preds = %58, %1
  %8 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %9 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EOF, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %7
  %14 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %15 = call i64 @accept(%struct.lexbuf* %14, i8 signext 59)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %19 = call i32 @white(%struct.lexbuf* %18)
  br label %61

20:                                               ; preds = %13
  %21 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %22 = call i64 @accept(%struct.lexbuf* %21, i8 signext 123)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %54, %24
  %26 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %27 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EOF, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = icmp sgt i32 %32, 0
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i1 [ false, %25 ], [ %33, %31 ]
  br i1 %35, label %36, label %55

36:                                               ; preds = %34
  %37 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %38 = call i64 @accept(%struct.lexbuf* %37, i8 signext 123)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %54

43:                                               ; preds = %36
  %44 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %45 = call i64 @accept(%struct.lexbuf* %44, i8 signext 125)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %52 = call i32 @next(%struct.lexbuf* %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %40
  br label %25

55:                                               ; preds = %34
  %56 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %57 = call i32 @white(%struct.lexbuf* %56)
  br label %61

58:                                               ; preds = %20
  %59 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %60 = call i32 @next(%struct.lexbuf* %59)
  br label %7

61:                                               ; preds = %17, %55, %7
  ret void
}

declare dso_local i32 @expect(%struct.lexbuf*, i32) #1

declare dso_local i64 @accept(%struct.lexbuf*, i8 signext) #1

declare dso_local i32 @white(%struct.lexbuf*) #1

declare dso_local i32 @next(%struct.lexbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
