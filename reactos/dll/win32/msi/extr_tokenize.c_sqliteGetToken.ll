; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_tokenize.c_sqliteGetToken.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_tokenize.c_sqliteGetToken.c"
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
@TK_WILDCARD = common dso_local global i32 0, align 4
@TK_COMMA = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@TK_DOT = common dso_local global i32 0, align 4
@TK_INTEGER = common dso_local global i32 0, align 4
@isIdChar = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliteGetToken(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %196 [
    i32 32, label %13
    i32 9, label %13
    i32 10, label %13
    i32 12, label %13
    i32 45, label %30
    i32 40, label %39
    i32 41, label %42
    i32 42, label %45
    i32 61, label %48
    i32 60, label %51
    i32 62, label %70
    i32 33, label %81
    i32 63, label %92
    i32 44, label %95
    i32 96, label %98
    i32 39, label %98
    i32 46, label %143
    i32 48, label %153
    i32 49, label %153
    i32 50, label %153
    i32 51, label %153
    i32 52, label %153
    i32 53, label %153
    i32 54, label %153
    i32 55, label %153
    i32 56, label %153
    i32 57, label %153
    i32 91, label %170
  ]

13:                                               ; preds = %3, %3, %3, %3
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %23, %13
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @isSpace(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %14

26:                                               ; preds = %14
  %27 = load i32, i32* @TK_SPACE, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %244

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %244

36:                                               ; preds = %30
  %37 = load i32, i32* @TK_MINUS, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  store i32 1, i32* %4, align 4
  br label %244

39:                                               ; preds = %3
  %40 = load i32, i32* @TK_LP, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  store i32 1, i32* %4, align 4
  br label %244

42:                                               ; preds = %3
  %43 = load i32, i32* @TK_RP, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  store i32 1, i32* %4, align 4
  br label %244

45:                                               ; preds = %3
  %46 = load i32, i32* @TK_STAR, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  store i32 1, i32* %4, align 4
  br label %244

48:                                               ; preds = %3
  %49 = load i32, i32* @TK_EQ, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  store i32 1, i32* %4, align 4
  br label %244

51:                                               ; preds = %3
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 61
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @TK_LE, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  store i32 2, i32* %4, align 4
  br label %244

59:                                               ; preds = %51
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @TK_NE, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  store i32 2, i32* %4, align 4
  br label %244

67:                                               ; preds = %59
  %68 = load i32, i32* @TK_LT, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  store i32 1, i32* %4, align 4
  br label %244

70:                                               ; preds = %3
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 61
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @TK_GE, align 4
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  store i32 2, i32* %4, align 4
  br label %244

78:                                               ; preds = %70
  %79 = load i32, i32* @TK_GT, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  store i32 1, i32* %4, align 4
  br label %244

81:                                               ; preds = %3
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 61
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @TK_ILLEGAL, align 4
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  store i32 2, i32* %4, align 4
  br label %244

89:                                               ; preds = %81
  %90 = load i32, i32* @TK_NE, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  store i32 2, i32* %4, align 4
  br label %244

92:                                               ; preds = %3
  %93 = load i32, i32* @TK_WILDCARD, align 4
  %94 = load i32*, i32** %6, align 8
  store i32 %93, i32* %94, align 4
  store i32 1, i32* %4, align 4
  br label %244

95:                                               ; preds = %3
  %96 = load i32, i32* @TK_COMMA, align 4
  %97 = load i32*, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  store i32 1, i32* %4, align 4
  br label %244

98:                                               ; preds = %3, %3
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %102

102:                                              ; preds = %119, %98
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %122

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %102

122:                                              ; preds = %117, %102
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %129, %122
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %133, 96
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* @TK_ID, align 4
  %137 = load i32*, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  br label %141

138:                                              ; preds = %132
  %139 = load i32, i32* @TK_STRING, align 4
  %140 = load i32*, i32** %6, align 8
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %4, align 4
  br label %244

143:                                              ; preds = %3
  %144 = load i32*, i32** %5, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @isDigit(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* @TK_DOT, align 4
  %151 = load i32*, i32** %6, align 8
  store i32 %150, i32* %151, align 4
  store i32 1, i32* %4, align 4
  br label %244

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %152
  %154 = load i32, i32* @TK_INTEGER, align 4
  %155 = load i32*, i32** %6, align 8
  store i32 %154, i32* %155, align 4
  store i32 1, i32* %8, align 4
  br label %156

156:                                              ; preds = %165, %153
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @isDigit(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %156

168:                                              ; preds = %156
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %4, align 4
  br label %244

170:                                              ; preds = %3
  store i32 1, i32* %8, align 4
  br label %171

171:                                              ; preds = %189, %170
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %171
  %179 = load i32*, i32** %5, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 93
  br label %186

186:                                              ; preds = %178, %171
  %187 = phi i1 [ false, %171 ], [ %185, %178 ]
  br i1 %187, label %188, label %192

188:                                              ; preds = %186
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %171

192:                                              ; preds = %186
  %193 = load i32, i32* @TK_ID, align 4
  %194 = load i32*, i32** %6, align 8
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %4, align 4
  br label %244

196:                                              ; preds = %3
  %197 = load i32*, i32** @isIdChar, align 8
  %198 = load i32*, i32** %5, align 8
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %196
  br label %241

205:                                              ; preds = %196
  store i32 1, i32* %8, align 4
  br label %206

206:                                              ; preds = %218, %205
  %207 = load i32*, i32** @isIdChar, align 8
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %207, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %206
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %206

221:                                              ; preds = %206
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @sqliteKeywordCode(i32* %222, i32 %223)
  %225 = load i32*, i32** %6, align 8
  store i32 %224, i32* %225, align 4
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @TK_ID, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %221
  %231 = load i32*, i32** %5, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 96
  br i1 %236, label %237, label %239

237:                                              ; preds = %230
  %238 = load i32*, i32** %7, align 8
  store i32 1, i32* %238, align 4
  br label %239

239:                                              ; preds = %237, %230, %221
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %4, align 4
  br label %244

241:                                              ; preds = %204
  %242 = load i32, i32* @TK_ILLEGAL, align 4
  %243 = load i32*, i32** %6, align 8
  store i32 %242, i32* %243, align 4
  store i32 1, i32* %4, align 4
  br label %244

244:                                              ; preds = %241, %239, %192, %168, %149, %141, %95, %92, %89, %86, %78, %75, %67, %64, %56, %48, %45, %42, %39, %36, %35, %26
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @isSpace(i32) #1

declare dso_local i32 @isDigit(i32) #1

declare dso_local i32 @sqliteKeywordCode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
