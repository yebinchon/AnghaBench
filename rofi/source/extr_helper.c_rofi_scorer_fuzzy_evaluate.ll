; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_rofi_scorer_fuzzy_evaluate.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_rofi_scorer_fuzzy_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FUZZY_SCORER_MAX_LENGTH = common dso_local global i64 0, align 8
@MIN_SCORE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@NON_WORD = common dso_local global i32 0, align 4
@GAP_SCORE = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PATTERN_START_MULTIPLIER = common dso_local global i32 0, align 4
@PATTERN_NON_START_MULTIPLIER = common dso_local global i32 0, align 4
@LEADING_GAP_SCORE = common dso_local global i64 0, align 8
@CONSECUTIVE_SCORE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rofi_scorer_fuzzy_evaluate(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @FUZZY_SCORER_MAX_LENGTH, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @MIN_SCORE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %198

33:                                               ; preds = %4
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32* @g_malloc_n(i64 %36, i32 4)
  store i32* %37, i32** %14, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32* @g_malloc_n(i64 %38, i32 4)
  store i32* %39, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %20, align 8
  %41 = load i32, i32* @NON_WORD, align 4
  store i32 %41, i32* %22, align 4
  store i64 0, i64* %11, align 8
  %42 = load i8*, i8** %8, align 8
  store i8* %42, i8** %21, align 8
  br label %43

43:                                               ; preds = %62, %33
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i8*, i8** %21, align 8
  %49 = call i64 @g_utf8_get_char(i8* %48)
  %50 = call i32 @rofi_scorer_get_character_class(i64 %49)
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %23, align 4
  %53 = call i32 @rofi_scorer_get_score_for(i32 %51, i32 %52)
  %54 = load i32*, i32** %14, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %23, align 4
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* @MIN_SCORE, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %47
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %11, align 8
  %65 = load i8*, i8** %21, align 8
  %66 = call i8* @g_utf8_next_char(i8* %65)
  store i8* %66, i8** %21, align 8
  br label %43

67:                                               ; preds = %43
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %166, %67
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %171

72:                                               ; preds = %68
  %73 = load i8*, i8** %20, align 8
  %74 = call i64 @g_utf8_get_char(i8* %73)
  store i64 %74, i64* %24, align 8
  %75 = load i64, i64* %24, align 8
  %76 = call i64 @g_unichar_isspace(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i64, i64* @TRUE, align 8
  store i64 %79, i64* %13, align 8
  br label %166

80:                                               ; preds = %72
  %81 = load i32, i32* @MIN_SCORE, align 4
  store i32 %81, i32* %19, align 4
  store i64 0, i64* %11, align 8
  %82 = load i8*, i8** %8, align 8
  store i8* %82, i8** %21, align 8
  br label %83

83:                                               ; preds = %159, %80
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %164

87:                                               ; preds = %83
  %88 = load i32*, i32** %15, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @GAP_SCORE, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i32, i32* %18, align 4
  %97 = call i64 @MAX(i64 %95, i32 %96)
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %19, align 4
  %99 = load i8*, i8** %21, align 8
  %100 = call i64 @g_utf8_get_char(i8* %99)
  store i64 %100, i64* %25, align 8
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %87
  %104 = load i64, i64* %24, align 8
  %105 = load i64, i64* %25, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %113, label %151

107:                                              ; preds = %87
  %108 = load i64, i64* %24, align 8
  %109 = call i64 @g_unichar_tolower(i64 %108)
  %110 = load i64, i64* %25, align 8
  %111 = call i64 @g_unichar_tolower(i64 %110)
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %151

113:                                              ; preds = %107, %103
  %114 = load i32*, i32** %14, align 8
  %115 = load i64, i64* %11, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %13, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* @PATTERN_START_MULTIPLIER, align 4
  br label %124

122:                                              ; preds = %113
  %123 = load i32, i32* @PATTERN_NON_START_MULTIPLIER, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = mul nsw i32 %117, %125
  store i32 %126, i32* %26, align 4
  %127 = load i64, i64* %12, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load i64, i64* @LEADING_GAP_SCORE, align 8
  %131 = load i64, i64* %11, align 8
  %132 = mul i64 %130, %131
  %133 = load i32, i32* %26, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %132, %134
  br label %145

136:                                              ; preds = %124
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @CONSECUTIVE_SCORE, align 8
  %140 = add nsw i64 %138, %139
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %26, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i64 @MAX(i64 %140, i32 %143)
  br label %145

145:                                              ; preds = %136, %129
  %146 = phi i64 [ %135, %129 ], [ %144, %136 ]
  %147 = trunc i64 %146 to i32
  %148 = load i32*, i32** %15, align 8
  %149 = load i64, i64* %11, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32 %147, i32* %150, align 4
  br label %156

151:                                              ; preds = %107, %103
  %152 = load i32, i32* @MIN_SCORE, align 4
  %153 = load i32*, i32** %15, align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32 %152, i32* %155, align 4
  br label %156

156:                                              ; preds = %151, %145
  %157 = load i32, i32* %18, align 4
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %19, align 4
  store i32 %158, i32* %17, align 4
  br label %159

159:                                              ; preds = %156
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %11, align 8
  %162 = load i8*, i8** %21, align 8
  %163 = call i8* @g_utf8_next_char(i8* %162)
  store i8* %163, i8** %21, align 8
  br label %83

164:                                              ; preds = %83
  %165 = load i64, i64* @FALSE, align 8
  store i64 %165, i64* %13, align 8
  store i64 %165, i64* %12, align 8
  br label %166

166:                                              ; preds = %164, %78
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %10, align 8
  %169 = load i8*, i8** %20, align 8
  %170 = call i8* @g_utf8_next_char(i8* %169)
  store i8* %170, i8** %20, align 8
  br label %68

171:                                              ; preds = %68
  %172 = load i32, i32* @MIN_SCORE, align 4
  store i32 %172, i32* %19, align 4
  store i64 0, i64* %11, align 8
  br label %173

173:                                              ; preds = %188, %171
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* %9, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* @GAP_SCORE, align 8
  %181 = add nsw i64 %179, %180
  %182 = load i32*, i32** %15, align 8
  %183 = load i64, i64* %11, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @MAX(i64 %181, i32 %185)
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %19, align 4
  br label %188

188:                                              ; preds = %177
  %189 = load i64, i64* %11, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %11, align 8
  br label %173

191:                                              ; preds = %173
  %192 = load i32*, i32** %14, align 8
  %193 = call i32 @g_free(i32* %192)
  %194 = load i32*, i32** %15, align 8
  %195 = call i32 @g_free(i32* %194)
  %196 = load i32, i32* %19, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %191, %30
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32* @g_malloc_n(i64, i32) #1

declare dso_local i32 @rofi_scorer_get_character_class(i64) #1

declare dso_local i64 @g_utf8_get_char(i8*) #1

declare dso_local i32 @rofi_scorer_get_score_for(i32, i32) #1

declare dso_local i8* @g_utf8_next_char(i8*) #1

declare dso_local i64 @g_unichar_isspace(i64) #1

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i64 @g_unichar_tolower(i64) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
