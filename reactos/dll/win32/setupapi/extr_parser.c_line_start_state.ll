; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_line_start_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_line_start_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32*, i32, i32, i32 }

@LINE_START = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@SECTION_NAME = common dso_local global i32 0, align 4
@KEY_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parser*, i32*)* @line_start_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @line_start_state(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32* %7, i32** %6, align 8
  br label %8

8:                                                ; preds = %75, %2
  %9 = load %struct.parser*, %struct.parser** %4, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @is_eof(%struct.parser* %9, i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %78

14:                                               ; preds = %8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %43 [
    i32 10, label %17
    i32 59, label %24
    i32 91, label %33
  ]

17:                                               ; preds = %14
  %18 = load %struct.parser*, %struct.parser** %4, align 8
  %19 = getelementptr inbounds %struct.parser, %struct.parser* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.parser*, %struct.parser** %4, align 8
  %23 = call i32 @close_current_line(%struct.parser* %22)
  br label %74

24:                                               ; preds = %14
  %25 = load %struct.parser*, %struct.parser** %4, align 8
  %26 = load i32, i32* @LINE_START, align 4
  %27 = call i32 @push_state(%struct.parser* %25, i32 %26)
  %28 = load %struct.parser*, %struct.parser** %4, align 8
  %29 = load i32, i32* @COMMENT, align 4
  %30 = call i32 @set_state(%struct.parser* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %32, i32** %3, align 8
  br label %81

33:                                               ; preds = %14
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load %struct.parser*, %struct.parser** %4, align 8
  %37 = getelementptr inbounds %struct.parser, %struct.parser* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.parser*, %struct.parser** %4, align 8
  %39 = load i32, i32* @SECTION_NAME, align 4
  %40 = call i32 @set_state(%struct.parser* %38, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32* %42, i32** %3, align 8
  br label %81

43:                                               ; preds = %14
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @isspaceW(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %74

49:                                               ; preds = %43
  %50 = load %struct.parser*, %struct.parser** %4, align 8
  %51 = getelementptr inbounds %struct.parser, %struct.parser* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.parser*, %struct.parser** %4, align 8
  %57 = getelementptr inbounds %struct.parser, %struct.parser* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.parser*, %struct.parser** %4, align 8
  %59 = load i32, i32* @KEY_NAME, align 4
  %60 = call i32 @set_state(%struct.parser* %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  store i32* %61, i32** %3, align 8
  br label %81

62:                                               ; preds = %49
  %63 = load %struct.parser*, %struct.parser** %4, align 8
  %64 = getelementptr inbounds %struct.parser, %struct.parser* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.parser*, %struct.parser** %4, align 8
  %69 = getelementptr inbounds %struct.parser, %struct.parser* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.parser*, %struct.parser** %4, align 8
  %72 = getelementptr inbounds %struct.parser, %struct.parser* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %62
  br label %74

74:                                               ; preds = %73, %48, %17
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  br label %8

78:                                               ; preds = %8
  %79 = load %struct.parser*, %struct.parser** %4, align 8
  %80 = call i32 @close_current_line(%struct.parser* %79)
  store i32* null, i32** %3, align 8
  br label %81

81:                                               ; preds = %78, %54, %33, %24
  %82 = load i32*, i32** %3, align 8
  ret i32* %82
}

declare dso_local i32 @is_eof(%struct.parser*, i32*) #1

declare dso_local i32 @close_current_line(%struct.parser*) #1

declare dso_local i32 @push_state(%struct.parser*, i32) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @isspaceW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
