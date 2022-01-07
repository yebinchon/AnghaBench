; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_value_name_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_value_name_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@VALUE_NAME = common dso_local global i32 0, align 4
@LEADING_SPACES = common dso_local global i32 0, align 4
@QUOTES = common dso_local global i32 0, align 4
@EOL_BACKSLASH = common dso_local global i32 0, align 4
@TRAILING_SPACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parser*, i32*)* @value_name_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @value_name_state(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.parser*, %struct.parser** %4, align 8
  %9 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  store i32* %11, i32** %6, align 8
  br label %12

12:                                               ; preds = %112, %2
  %13 = load %struct.parser*, %struct.parser** %4, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @is_eol(%struct.parser* %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %115

18:                                               ; preds = %12
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %91 [
    i32 59, label %21
    i32 44, label %39
    i32 34, label %61
    i32 92, label %77
  ]

21:                                               ; preds = %18
  %22 = load %struct.parser*, %struct.parser** %4, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @push_token(%struct.parser* %22, i32* %23)
  %25 = load %struct.parser*, %struct.parser** %4, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @add_field_from_token(%struct.parser* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32* null, i32** %3, align 8
  br label %129

30:                                               ; preds = %21
  %31 = load %struct.parser*, %struct.parser** %4, align 8
  %32 = load i32, i32* @LINE_START, align 4
  %33 = call i32 @push_state(%struct.parser* %31, i32 %32)
  %34 = load %struct.parser*, %struct.parser** %4, align 8
  %35 = load i32, i32* @COMMENT, align 4
  %36 = call i32 @set_state(%struct.parser* %34, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32* %38, i32** %3, align 8
  br label %129

39:                                               ; preds = %18
  %40 = load %struct.parser*, %struct.parser** %4, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @push_token(%struct.parser* %40, i32* %41)
  %43 = load %struct.parser*, %struct.parser** %4, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @add_field_from_token(%struct.parser* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32* null, i32** %3, align 8
  br label %129

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load %struct.parser*, %struct.parser** %4, align 8
  %52 = getelementptr inbounds %struct.parser, %struct.parser* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.parser*, %struct.parser** %4, align 8
  %54 = load i32, i32* @VALUE_NAME, align 4
  %55 = call i32 @push_state(%struct.parser* %53, i32 %54)
  %56 = load %struct.parser*, %struct.parser** %4, align 8
  %57 = load i32, i32* @LEADING_SPACES, align 4
  %58 = call i32 @set_state(%struct.parser* %56, i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32* %60, i32** %3, align 8
  br label %129

61:                                               ; preds = %18
  %62 = load %struct.parser*, %struct.parser** %4, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @push_token(%struct.parser* %62, i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load %struct.parser*, %struct.parser** %4, align 8
  %68 = getelementptr inbounds %struct.parser, %struct.parser* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  %69 = load %struct.parser*, %struct.parser** %4, align 8
  %70 = load i32, i32* @VALUE_NAME, align 4
  %71 = call i32 @push_state(%struct.parser* %69, i32 %70)
  %72 = load %struct.parser*, %struct.parser** %4, align 8
  %73 = load i32, i32* @QUOTES, align 4
  %74 = call i32 @set_state(%struct.parser* %72, i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32* %76, i32** %3, align 8
  br label %129

77:                                               ; preds = %18
  %78 = load %struct.parser*, %struct.parser** %4, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @push_token(%struct.parser* %78, i32* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.parser*, %struct.parser** %4, align 8
  %83 = getelementptr inbounds %struct.parser, %struct.parser* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  %84 = load %struct.parser*, %struct.parser** %4, align 8
  %85 = load i32, i32* @VALUE_NAME, align 4
  %86 = call i32 @push_state(%struct.parser* %84, i32 %85)
  %87 = load %struct.parser*, %struct.parser** %4, align 8
  %88 = load i32, i32* @EOL_BACKSLASH, align 4
  %89 = call i32 @set_state(%struct.parser* %87, i32 %88)
  %90 = load i32*, i32** %6, align 8
  store i32* %90, i32** %3, align 8
  br label %129

91:                                               ; preds = %18
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @isspaceW(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32* %98, i32** %7, align 8
  br label %110

99:                                               ; preds = %91
  %100 = load %struct.parser*, %struct.parser** %4, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @push_token(%struct.parser* %100, i32* %101)
  %103 = load %struct.parser*, %struct.parser** %4, align 8
  %104 = load i32, i32* @VALUE_NAME, align 4
  %105 = call i32 @push_state(%struct.parser* %103, i32 %104)
  %106 = load %struct.parser*, %struct.parser** %4, align 8
  %107 = load i32, i32* @TRAILING_SPACES, align 4
  %108 = call i32 @set_state(%struct.parser* %106, i32 %107)
  %109 = load i32*, i32** %6, align 8
  store i32* %109, i32** %3, align 8
  br label %129

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %6, align 8
  br label %12

115:                                              ; preds = %12
  %116 = load %struct.parser*, %struct.parser** %4, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @push_token(%struct.parser* %116, i32* %117)
  %119 = load %struct.parser*, %struct.parser** %4, align 8
  %120 = load i32, i32* @FALSE, align 4
  %121 = call i32 @add_field_from_token(%struct.parser* %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %115
  store i32* null, i32** %3, align 8
  br label %129

124:                                              ; preds = %115
  %125 = load %struct.parser*, %struct.parser** %4, align 8
  %126 = load i32, i32* @LINE_START, align 4
  %127 = call i32 @set_state(%struct.parser* %125, i32 %126)
  %128 = load i32*, i32** %6, align 8
  store i32* %128, i32** %3, align 8
  br label %129

129:                                              ; preds = %124, %123, %99, %77, %61, %48, %47, %30, %29
  %130 = load i32*, i32** %3, align 8
  ret i32* %130
}

declare dso_local i32 @is_eol(%struct.parser*, i32*) #1

declare dso_local i32 @push_token(%struct.parser*, i32*) #1

declare dso_local i32 @add_field_from_token(%struct.parser*, i32) #1

declare dso_local i32 @push_state(%struct.parser*, i32) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @isspaceW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
