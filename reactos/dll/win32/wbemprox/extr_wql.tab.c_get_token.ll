; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_get_token.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TK_SPACE = common dso_local global i32 0, align 4
@TK_MINUS = common dso_local global i32 0, align 4
@TK_LP = common dso_local global i32 0, align 4
@TK_RP = common dso_local global i32 0, align 4
@TK_STAR = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@TK_LT = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_GT = common dso_local global i32 0, align 4
@TK_ILLEGAL = common dso_local global i32 0, align 4
@TK_COMMA = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@TK_DOT = common dso_local global i32 0, align 4
@TK_INTEGER = common dso_local global i32 0, align 4
@id_char = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @get_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_token(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %155 [
    i32 32, label %9
    i32 9, label %9
    i32 13, label %9
    i32 10, label %9
    i32 45, label %26
    i32 40, label %35
    i32 41, label %38
    i32 42, label %41
    i32 61, label %44
    i32 60, label %47
    i32 62, label %66
    i32 33, label %77
    i32 44, label %88
    i32 34, label %91
    i32 39, label %91
    i32 46, label %128
    i32 48, label %138
    i32 49, label %138
    i32 50, label %138
    i32 51, label %138
    i32 52, label %138
    i32 53, label %138
    i32 54, label %138
    i32 55, label %138
    i32 56, label %138
    i32 57, label %138
  ]

9:                                                ; preds = %2, %2, %2, %2
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %19, %9
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @isspaceW(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %10

22:                                               ; preds = %10
  %23 = load i32, i32* @TK_SPACE, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %189

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %189

32:                                               ; preds = %26
  %33 = load i32, i32* @TK_MINUS, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  store i32 1, i32* %3, align 4
  br label %189

35:                                               ; preds = %2
  %36 = load i32, i32* @TK_LP, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  store i32 1, i32* %3, align 4
  br label %189

38:                                               ; preds = %2
  %39 = load i32, i32* @TK_RP, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  store i32 1, i32* %3, align 4
  br label %189

41:                                               ; preds = %2
  %42 = load i32, i32* @TK_STAR, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  store i32 1, i32* %3, align 4
  br label %189

44:                                               ; preds = %2
  %45 = load i32, i32* @TK_EQ, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  store i32 1, i32* %3, align 4
  br label %189

47:                                               ; preds = %2
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 61
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @TK_LE, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  store i32 2, i32* %3, align 4
  br label %189

55:                                               ; preds = %47
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 62
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @TK_NE, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  store i32 2, i32* %3, align 4
  br label %189

63:                                               ; preds = %55
  %64 = load i32, i32* @TK_LT, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  store i32 1, i32* %3, align 4
  br label %189

66:                                               ; preds = %2
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 61
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @TK_GE, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  store i32 2, i32* %3, align 4
  br label %189

74:                                               ; preds = %66
  %75 = load i32, i32* @TK_GT, align 4
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  store i32 1, i32* %3, align 4
  br label %189

77:                                               ; preds = %2
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 61
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @TK_ILLEGAL, align 4
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  store i32 2, i32* %3, align 4
  br label %189

85:                                               ; preds = %77
  %86 = load i32, i32* @TK_NE, align 4
  %87 = load i32*, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  store i32 2, i32* %3, align 4
  br label %189

88:                                               ; preds = %2
  %89 = load i32, i32* @TK_COMMA, align 4
  %90 = load i32*, i32** %5, align 8
  store i32 %89, i32* %90, align 4
  store i32 1, i32* %3, align 4
  br label %189

91:                                               ; preds = %2, %2
  store i32 1, i32* %6, align 4
  br label %92

92:                                               ; preds = %111, %91
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %92
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %114

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %92

114:                                              ; preds = %109, %92
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %121, %114
  %125 = load i32, i32* @TK_STRING, align 4
  %126 = load i32*, i32** %5, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %189

128:                                              ; preds = %2
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @isdigitW(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* @TK_DOT, align 4
  %136 = load i32*, i32** %5, align 8
  store i32 %135, i32* %136, align 4
  store i32 1, i32* %3, align 4
  br label %189

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %137
  %139 = load i32, i32* @TK_INTEGER, align 4
  %140 = load i32*, i32** %5, align 8
  store i32 %139, i32* %140, align 4
  store i32 1, i32* %6, align 4
  br label %141

141:                                              ; preds = %150, %138
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @isdigitW(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %141

153:                                              ; preds = %141
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %3, align 4
  br label %189

155:                                              ; preds = %2
  %156 = load i32*, i32** @id_char, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %155
  br label %186

164:                                              ; preds = %155
  store i32 1, i32* %6, align 4
  br label %165

165:                                              ; preds = %177, %164
  %166 = load i32*, i32** @id_char, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %166, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %165

180:                                              ; preds = %165
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @keyword_type(i32* %181, i32 %182)
  %184 = load i32*, i32** %5, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %3, align 4
  br label %189

186:                                              ; preds = %163
  %187 = load i32, i32* @TK_ILLEGAL, align 4
  %188 = load i32*, i32** %5, align 8
  store i32 %187, i32* %188, align 4
  store i32 1, i32* %3, align 4
  br label %189

189:                                              ; preds = %186, %180, %153, %134, %124, %88, %85, %82, %74, %71, %63, %60, %52, %44, %41, %38, %35, %32, %31, %22
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @isspaceW(i32) #1

declare dso_local i32 @isdigitW(i32) #1

declare dso_local i32 @keyword_type(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
