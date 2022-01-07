; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_term.c_show_termcodes.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_term.c_show_termcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@tc_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0A--- Terminal keys ---\00", align 1
@got_int = common dso_local global i64 0, align 8
@termcodes = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@msg_col = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GAP = common dso_local global i32 0, align 4
@INC2 = common dso_local global i32 0, align 4
@INC3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_termcodes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @tc_len, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %175

13:                                               ; preds = %0
  %14 = load i32, i32* @tc_len, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = call i64 @alloc(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %175

23:                                               ; preds = %13
  %24 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @MSG_PUTS_TITLE(i32 %24)
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %169, %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 3
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i64, i64* @got_int, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %172

35:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %77, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @tc_len, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %36
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @termcodes, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @termcodes, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @show_one_termcode(i32 %46, i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sle i32 %55, 25
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %69, label %76

60:                                               ; preds = %40
  %61 = load i32, i32* %9, align 4
  %62 = icmp sle i32 %61, 38
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %69, label %76

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %76

69:                                               ; preds = %66, %63, %57
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %66, %63, %57
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %36

80:                                               ; preds = %36
  %81 = load i32, i32* %4, align 4
  %82 = icmp sle i32 %81, 2
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load i32, i32* @Columns, align 4
  %85 = add nsw i32 %84, 2
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 1
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 27, i32 40
  %90 = sdiv i32 %85, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %83
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %95, %96
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* %7, align 4
  %100 = sdiv i32 %98, %99
  store i32 %100, i32* %6, align 4
  br label %103

101:                                              ; preds = %80
  %102 = load i32, i32* %3, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %94
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %165, %103
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i64, i64* @got_int, align 8
  %110 = icmp ne i64 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ false, %104 ], [ %111, %108 ]
  br i1 %113, label %114, label %168

114:                                              ; preds = %112
  %115 = call i32 @msg_putchar(i8 signext 10)
  %116 = load i64, i64* @got_int, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %168

119:                                              ; preds = %114
  store i32 0, i32* %1, align 4
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %158, %119
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %3, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %162

125:                                              ; preds = %121
  %126 = load i32, i32* %1, align 4
  store i32 %126, i32* @msg_col, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @termcodes, align 8
  %128 = load i32*, i32** %2, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @termcodes, align 8
  %138 = load i32*, i32** %2, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @TRUE, align 4
  %148 = call i32 @show_one_termcode(i32 %136, i32 %146, i32 %147)
  %149 = load i32, i32* %4, align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %154

151:                                              ; preds = %125
  %152 = load i32, i32* %1, align 4
  %153 = add nsw i32 %152, 40
  store i32 %153, i32* %1, align 4
  br label %157

154:                                              ; preds = %125
  %155 = load i32, i32* %1, align 4
  %156 = add nsw i32 %155, 27
  store i32 %156, i32* %1, align 4
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %8, align 4
  br label %121

162:                                              ; preds = %121
  %163 = call i32 (...) @out_flush()
  %164 = call i32 (...) @ui_breakcheck()
  br label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %104

168:                                              ; preds = %118, %112
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  br label %26

172:                                              ; preds = %33
  %173 = load i32*, i32** %2, align 8
  %174 = call i32 @vim_free(i32* %173)
  br label %175

175:                                              ; preds = %172, %22, %12
  ret void
}

declare dso_local i64 @alloc(i32) #1

declare dso_local i32 @MSG_PUTS_TITLE(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @show_one_termcode(i32, i32, i32) #1

declare dso_local i32 @msg_putchar(i8 signext) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @ui_breakcheck(...) #1

declare dso_local i32 @vim_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
