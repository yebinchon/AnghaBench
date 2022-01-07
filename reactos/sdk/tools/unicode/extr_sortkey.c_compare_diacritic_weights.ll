; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_sortkey.c_compare_diacritic_weights.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_sortkey.c_compare_diacritic_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NORM_IGNORESYMBOLS = common dso_local global i32 0, align 4
@C1_PUNCT = common dso_local global i32 0, align 4
@C1_SPACE = common dso_local global i32 0, align 4
@collation_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32)* @compare_diacritic_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_diacritic_weights(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %16

16:                                               ; preds = %117, %60, %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp sgt i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %126

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NORM_IGNORESYMBOLS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_char_typeW(i32 %31)
  %33 = load i32, i32* @C1_PUNCT, align 4
  %34 = load i32, i32* @C1_SPACE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %9, align 4
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %38, %29
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @get_char_typeW(i32 %45)
  %47 = load i32, i32* @C1_PUNCT, align 4
  %48 = load i32, i32* @C1_SPACE, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  store i32 1, i32* %15, align 4
  br label %57

57:                                               ; preds = %52, %43
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %16

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %24
  %63 = load i32*, i32** @collation_table, align 8
  %64 = load i32*, i32** @collation_table, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %63, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32*, i32** @collation_table, align 8
  %79 = load i32*, i32** @collation_table, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 255
  %89 = add nsw i32 %85, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %78, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %106

95:                                               ; preds = %62
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = lshr i32 %99, 8
  %101 = and i32 %100, 255
  %102 = load i32, i32* %13, align 4
  %103 = lshr i32 %102, 8
  %104 = and i32 %103, 255
  %105 = sub i32 %101, %104
  store i32 %105, i32* %14, align 4
  br label %112

106:                                              ; preds = %95, %62
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %108, %110
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %106, %98
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %6, align 4
  br label %162

117:                                              ; preds = %112
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %8, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %10, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %11, align 4
  br label %16

126:                                              ; preds = %22
  br label %127

127:                                              ; preds = %137, %126
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  br label %135

135:                                              ; preds = %130, %127
  %136 = phi i1 [ false, %127 ], [ %134, %130 ]
  br i1 %136, label %137, label %142

137:                                              ; preds = %135
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %9, align 4
  br label %127

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %153, %142
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  br label %151

151:                                              ; preds = %146, %143
  %152 = phi i1 [ false, %143 ], [ %150, %146 ]
  br i1 %152, label %153, label %158

153:                                              ; preds = %151
  %154 = load i32*, i32** %10, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %11, align 4
  br label %143

158:                                              ; preds = %151
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %11, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %115
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @get_char_typeW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
