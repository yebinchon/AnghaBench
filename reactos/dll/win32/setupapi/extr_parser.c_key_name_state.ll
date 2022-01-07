; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_key_name_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_key_name_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i8* }

@TRUE = common dso_local global i32 0, align 4
@VALUE_NAME = common dso_local global i32 0, align 4
@LEADING_SPACES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LINE_START = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@KEY_NAME = common dso_local global i32 0, align 4
@QUOTES = common dso_local global i32 0, align 4
@EOL_BACKSLASH = common dso_local global i32 0, align 4
@TRAILING_SPACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8*)* @key_name_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @key_name_state(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.parser*, %struct.parser** %4, align 8
  %9 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %119, %2
  %13 = load %struct.parser*, %struct.parser** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @is_eol(%struct.parser* %13, i8* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %122

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 44
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %122

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %98 [
    i32 61, label %28
    i32 59, label %50
    i32 34, label %68
    i32 92, label %84
  ]

28:                                               ; preds = %24
  %29 = load %struct.parser*, %struct.parser** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @push_token(%struct.parser* %29, i8* %30)
  %32 = load %struct.parser*, %struct.parser** %4, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @add_field_from_token(%struct.parser* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i8* null, i8** %3, align 8
  br label %130

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load %struct.parser*, %struct.parser** %4, align 8
  %41 = getelementptr inbounds %struct.parser, %struct.parser* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.parser*, %struct.parser** %4, align 8
  %43 = load i32, i32* @VALUE_NAME, align 4
  %44 = call i32 @push_state(%struct.parser* %42, i32 %43)
  %45 = load %struct.parser*, %struct.parser** %4, align 8
  %46 = load i32, i32* @LEADING_SPACES, align 4
  %47 = call i32 @set_state(%struct.parser* %45, i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %3, align 8
  br label %130

50:                                               ; preds = %24
  %51 = load %struct.parser*, %struct.parser** %4, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @push_token(%struct.parser* %51, i8* %52)
  %54 = load %struct.parser*, %struct.parser** %4, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @add_field_from_token(%struct.parser* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store i8* null, i8** %3, align 8
  br label %130

59:                                               ; preds = %50
  %60 = load %struct.parser*, %struct.parser** %4, align 8
  %61 = load i32, i32* @LINE_START, align 4
  %62 = call i32 @push_state(%struct.parser* %60, i32 %61)
  %63 = load %struct.parser*, %struct.parser** %4, align 8
  %64 = load i32, i32* @COMMENT, align 4
  %65 = call i32 @set_state(%struct.parser* %63, i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %3, align 8
  br label %130

68:                                               ; preds = %24
  %69 = load %struct.parser*, %struct.parser** %4, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @push_token(%struct.parser* %69, i8* %70)
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load %struct.parser*, %struct.parser** %4, align 8
  %75 = getelementptr inbounds %struct.parser, %struct.parser* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.parser*, %struct.parser** %4, align 8
  %77 = load i32, i32* @KEY_NAME, align 4
  %78 = call i32 @push_state(%struct.parser* %76, i32 %77)
  %79 = load %struct.parser*, %struct.parser** %4, align 8
  %80 = load i32, i32* @QUOTES, align 4
  %81 = call i32 @set_state(%struct.parser* %79, i32 %80)
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %3, align 8
  br label %130

84:                                               ; preds = %24
  %85 = load %struct.parser*, %struct.parser** %4, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @push_token(%struct.parser* %85, i8* %86)
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.parser*, %struct.parser** %4, align 8
  %90 = getelementptr inbounds %struct.parser, %struct.parser* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.parser*, %struct.parser** %4, align 8
  %92 = load i32, i32* @KEY_NAME, align 4
  %93 = call i32 @push_state(%struct.parser* %91, i32 %92)
  %94 = load %struct.parser*, %struct.parser** %4, align 8
  %95 = load i32, i32* @EOL_BACKSLASH, align 4
  %96 = call i32 @set_state(%struct.parser* %94, i32 %95)
  %97 = load i8*, i8** %6, align 8
  store i8* %97, i8** %3, align 8
  br label %130

98:                                               ; preds = %24
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @isspaceW(i8 signext %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  store i8* %105, i8** %7, align 8
  br label %117

106:                                              ; preds = %98
  %107 = load %struct.parser*, %struct.parser** %4, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @push_token(%struct.parser* %107, i8* %108)
  %110 = load %struct.parser*, %struct.parser** %4, align 8
  %111 = load i32, i32* @KEY_NAME, align 4
  %112 = call i32 @push_state(%struct.parser* %110, i32 %111)
  %113 = load %struct.parser*, %struct.parser** %4, align 8
  %114 = load i32, i32* @TRAILING_SPACES, align 4
  %115 = call i32 @set_state(%struct.parser* %113, i32 %114)
  %116 = load i8*, i8** %6, align 8
  store i8* %116, i8** %3, align 8
  br label %130

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %6, align 8
  br label %12

122:                                              ; preds = %23, %12
  %123 = load %struct.parser*, %struct.parser** %4, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @push_token(%struct.parser* %123, i8* %124)
  %126 = load %struct.parser*, %struct.parser** %4, align 8
  %127 = load i32, i32* @VALUE_NAME, align 4
  %128 = call i32 @set_state(%struct.parser* %126, i32 %127)
  %129 = load i8*, i8** %6, align 8
  store i8* %129, i8** %3, align 8
  br label %130

130:                                              ; preds = %122, %106, %84, %68, %59, %58, %37, %36
  %131 = load i8*, i8** %3, align 8
  ret i8* %131
}

declare dso_local i32 @is_eol(%struct.parser*, i8*) #1

declare dso_local i32 @push_token(%struct.parser*, i8*) #1

declare dso_local i32 @add_field_from_token(%struct.parser*, i32) #1

declare dso_local i32 @push_state(%struct.parser*, i32) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @isspaceW(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
