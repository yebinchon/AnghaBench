; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_expr_primary.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_expr_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8, i32*, i32 }

@TK_name = common dso_local global i8 0, align 1
@LJ_52 = common dso_local global i32 0, align 4
@TK_goto = common dso_local global i8 0, align 1
@LJ_ERR_XSYMBOL = common dso_local global i32 0, align 4
@TK_string = common dso_local global i8 0, align 1
@LJ_FR2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*)* @expr_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_primary(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 40
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = call i32 @lj_lex_next(%struct.TYPE_12__* %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @expr(%struct.TYPE_12__* %23, i32* %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @lex_match(%struct.TYPE_12__* %26, i8 signext 41, i8 signext 40, i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @expr_discharge(i32* %31, i32* %32)
  br label %62

34:                                               ; preds = %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 8
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @TK_name, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @LJ_52, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 8
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @TK_goto, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45, %34
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @var_lookup(%struct.TYPE_12__* %54, i32* %55)
  br label %61

57:                                               ; preds = %45, %42
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = load i32, i32* @LJ_ERR_XSYMBOL, align 4
  %60 = call i32 @err_syntax(%struct.TYPE_12__* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %17
  br label %63

63:                                               ; preds = %142, %62
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 8
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 46
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @expr_field(%struct.TYPE_12__* %70, i32* %71)
  br label %142

73:                                               ; preds = %63
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 8
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 91
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @expr_toanyreg(i32* %80, i32* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = call i32 @expr_bracket(%struct.TYPE_12__* %83, i32* %7)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @expr_index(i32* %85, i32* %86, i32* %7)
  br label %141

88:                                               ; preds = %73
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i8, i8* %90, align 8
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 58
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = call i32 @lj_lex_next(%struct.TYPE_12__* %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = call i32 @expr_str(%struct.TYPE_12__* %97, i32* %8)
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @bcemit_method(i32* %99, i32* %100, i32* %8)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @parse_args(%struct.TYPE_12__* %102, i32* %103)
  br label %140

105:                                              ; preds = %88
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i8, i8* %107, align 8
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 40
  br i1 %110, label %125, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i8, i8* %113, align 8
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* @TK_string, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %111
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i8, i8* %121, align 8
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 123
  br i1 %124, label %125, label %138

125:                                              ; preds = %119, %111, %105
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @expr_tonextreg(i32* %126, i32* %127)
  %129 = load i64, i64* @LJ_FR2, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @bcreg_reserve(i32* %132, i32 1)
  br label %134

134:                                              ; preds = %131, %125
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @parse_args(%struct.TYPE_12__* %135, i32* %136)
  br label %139

138:                                              ; preds = %119
  br label %143

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %94
  br label %141

141:                                              ; preds = %140, %79
  br label %142

142:                                              ; preds = %141, %69
  br label %63

143:                                              ; preds = %138
  ret void
}

declare dso_local i32 @lj_lex_next(%struct.TYPE_12__*) #1

declare dso_local i32 @expr(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @lex_match(%struct.TYPE_12__*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @expr_discharge(i32*, i32*) #1

declare dso_local i32 @var_lookup(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @err_syntax(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @expr_field(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @expr_toanyreg(i32*, i32*) #1

declare dso_local i32 @expr_bracket(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @expr_index(i32*, i32*, i32*) #1

declare dso_local i32 @expr_str(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @bcemit_method(i32*, i32*, i32*) #1

declare dso_local i32 @parse_args(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @expr_tonextreg(i32*, i32*) #1

declare dso_local i32 @bcreg_reserve(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
