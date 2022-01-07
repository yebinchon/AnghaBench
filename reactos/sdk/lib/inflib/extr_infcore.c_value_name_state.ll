; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infcore.c_value_name_state.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infcore.c_value_name_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32* }

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

12:                                               ; preds = %110, %2
  %13 = load %struct.parser*, %struct.parser** %4, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @is_eol(%struct.parser* %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %113

18:                                               ; preds = %12
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %89 [
    i32 59, label %21
    i32 44, label %38
    i32 34, label %59
    i32 92, label %75
  ]

21:                                               ; preds = %18
  %22 = load %struct.parser*, %struct.parser** %4, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @push_token(%struct.parser* %22, i32* %23)
  %25 = load %struct.parser*, %struct.parser** %4, align 8
  %26 = call i32 @add_field_from_token(%struct.parser* %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32* null, i32** %3, align 8
  br label %126

29:                                               ; preds = %21
  %30 = load %struct.parser*, %struct.parser** %4, align 8
  %31 = load i32, i32* @LINE_START, align 4
  %32 = call i32 @push_state(%struct.parser* %30, i32 %31)
  %33 = load %struct.parser*, %struct.parser** %4, align 8
  %34 = load i32, i32* @COMMENT, align 4
  %35 = call i32 @set_state(%struct.parser* %33, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32* %37, i32** %3, align 8
  br label %126

38:                                               ; preds = %18
  %39 = load %struct.parser*, %struct.parser** %4, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @push_token(%struct.parser* %39, i32* %40)
  %42 = load %struct.parser*, %struct.parser** %4, align 8
  %43 = call i32 @add_field_from_token(%struct.parser* %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32* null, i32** %3, align 8
  br label %126

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load %struct.parser*, %struct.parser** %4, align 8
  %50 = getelementptr inbounds %struct.parser, %struct.parser* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.parser*, %struct.parser** %4, align 8
  %52 = load i32, i32* @VALUE_NAME, align 4
  %53 = call i32 @push_state(%struct.parser* %51, i32 %52)
  %54 = load %struct.parser*, %struct.parser** %4, align 8
  %55 = load i32, i32* @LEADING_SPACES, align 4
  %56 = call i32 @set_state(%struct.parser* %54, i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32* %58, i32** %3, align 8
  br label %126

59:                                               ; preds = %18
  %60 = load %struct.parser*, %struct.parser** %4, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @push_token(%struct.parser* %60, i32* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load %struct.parser*, %struct.parser** %4, align 8
  %66 = getelementptr inbounds %struct.parser, %struct.parser* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.parser*, %struct.parser** %4, align 8
  %68 = load i32, i32* @VALUE_NAME, align 4
  %69 = call i32 @push_state(%struct.parser* %67, i32 %68)
  %70 = load %struct.parser*, %struct.parser** %4, align 8
  %71 = load i32, i32* @QUOTES, align 4
  %72 = call i32 @set_state(%struct.parser* %70, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32* %74, i32** %3, align 8
  br label %126

75:                                               ; preds = %18
  %76 = load %struct.parser*, %struct.parser** %4, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @push_token(%struct.parser* %76, i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.parser*, %struct.parser** %4, align 8
  %81 = getelementptr inbounds %struct.parser, %struct.parser* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load %struct.parser*, %struct.parser** %4, align 8
  %83 = load i32, i32* @VALUE_NAME, align 4
  %84 = call i32 @push_state(%struct.parser* %82, i32 %83)
  %85 = load %struct.parser*, %struct.parser** %4, align 8
  %86 = load i32, i32* @EOL_BACKSLASH, align 4
  %87 = call i32 @set_state(%struct.parser* %85, i32 %86)
  %88 = load i32*, i32** %6, align 8
  store i32* %88, i32** %3, align 8
  br label %126

89:                                               ; preds = %18
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @isspaceW(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32* %96, i32** %7, align 8
  br label %108

97:                                               ; preds = %89
  %98 = load %struct.parser*, %struct.parser** %4, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @push_token(%struct.parser* %98, i32* %99)
  %101 = load %struct.parser*, %struct.parser** %4, align 8
  %102 = load i32, i32* @VALUE_NAME, align 4
  %103 = call i32 @push_state(%struct.parser* %101, i32 %102)
  %104 = load %struct.parser*, %struct.parser** %4, align 8
  %105 = load i32, i32* @TRAILING_SPACES, align 4
  %106 = call i32 @set_state(%struct.parser* %104, i32 %105)
  %107 = load i32*, i32** %6, align 8
  store i32* %107, i32** %3, align 8
  br label %126

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %6, align 8
  br label %12

113:                                              ; preds = %12
  %114 = load %struct.parser*, %struct.parser** %4, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @push_token(%struct.parser* %114, i32* %115)
  %117 = load %struct.parser*, %struct.parser** %4, align 8
  %118 = call i32 @add_field_from_token(%struct.parser* %117, i32 0)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  store i32* null, i32** %3, align 8
  br label %126

121:                                              ; preds = %113
  %122 = load %struct.parser*, %struct.parser** %4, align 8
  %123 = load i32, i32* @LINE_START, align 4
  %124 = call i32 @set_state(%struct.parser* %122, i32 %123)
  %125 = load i32*, i32** %6, align 8
  store i32* %125, i32** %3, align 8
  br label %126

126:                                              ; preds = %121, %120, %97, %75, %59, %46, %45, %29, %28
  %127 = load i32*, i32** %3, align 8
  ret i32* %127
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
