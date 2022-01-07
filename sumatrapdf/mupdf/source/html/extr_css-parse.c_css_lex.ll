; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_css_lex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_css_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexbuf = type { i8, i64 }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@CSS_URI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lexbuf*)* @css_lex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_lex(%struct.lexbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lexbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.lexbuf* %0, %struct.lexbuf** %3, align 8
  %5 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %6 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %95, %81, %64, %1
  %8 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %9 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 8
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, i32* @EOF, align 4
  store i32 %14, i32* %2, align 4
  br label %278

15:                                               ; preds = %7
  %16 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %17 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = call i64 @iswhite(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %28, %21
  %23 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %24 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 8
  %26 = call i64 @iswhite(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %30 = call i32 @css_lex_next(%struct.lexbuf* %29)
  br label %22

31:                                               ; preds = %22
  store i32 32, i32* %2, align 4
  br label %278

32:                                               ; preds = %15
  %33 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %34 = call i64 @css_lex_accept(%struct.lexbuf* %33, i8 signext 47)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %32
  %37 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %38 = call i64 @css_lex_accept(%struct.lexbuf* %37, i8 signext 42)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %66, %40
  %42 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %43 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 8
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %48 = call i64 @css_lex_accept(%struct.lexbuf* %47, i8 signext 42)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %57, %50
  %52 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %53 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 42
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %59 = call i32 @css_lex_next(%struct.lexbuf* %58)
  br label %51

60:                                               ; preds = %51
  %61 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %62 = call i64 @css_lex_accept(%struct.lexbuf* %61, i8 signext 47)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %7

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %68 = call i32 @css_lex_next(%struct.lexbuf* %67)
  br label %41

69:                                               ; preds = %41
  %70 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %71 = call i32 @fz_css_error(%struct.lexbuf* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %36
  store i32 47, i32* %2, align 4
  br label %278

73:                                               ; preds = %32
  %74 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %75 = call i64 @css_lex_accept(%struct.lexbuf* %74, i8 signext 60)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %79 = call i64 @css_lex_accept(%struct.lexbuf* %78, i8 signext 33)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %83 = call i32 @css_lex_expect(%struct.lexbuf* %82, i8 signext 45)
  %84 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %85 = call i32 @css_lex_expect(%struct.lexbuf* %84, i8 signext 45)
  br label %7

86:                                               ; preds = %77
  store i32 60, i32* %2, align 4
  br label %278

87:                                               ; preds = %73
  %88 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %89 = call i64 @css_lex_accept(%struct.lexbuf* %88, i8 signext 45)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %93 = call i64 @css_lex_accept(%struct.lexbuf* %92, i8 signext 45)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %97 = call i32 @css_lex_expect(%struct.lexbuf* %96, i8 signext 62)
  br label %7

98:                                               ; preds = %91
  %99 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %100 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %99, i32 0, i32 0
  %101 = load i8, i8* %100, align 8
  %102 = call i64 @isnmstart(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %106 = call i32 @css_push_char(%struct.lexbuf* %105, i8 zeroext 45)
  %107 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %108 = call i32 @css_lex_keyword(%struct.lexbuf* %107)
  store i32 %108, i32* %2, align 4
  br label %278

109:                                              ; preds = %98
  store i32 45, i32* %2, align 4
  br label %278

110:                                              ; preds = %87
  %111 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %112 = call i64 @css_lex_accept(%struct.lexbuf* %111, i8 signext 46)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %110
  %115 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %116 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %115, i32 0, i32 0
  %117 = load i8, i8* %116, align 8
  %118 = sext i8 %117 to i32
  %119 = icmp sge i32 %118, 48
  br i1 %119, label %120, label %131

120:                                              ; preds = %114
  %121 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %122 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %121, i32 0, i32 0
  %123 = load i8, i8* %122, align 8
  %124 = sext i8 %123 to i32
  %125 = icmp sle i32 %124, 57
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %128 = call i32 @css_push_char(%struct.lexbuf* %127, i8 zeroext 46)
  %129 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %130 = call i32 @css_lex_number(%struct.lexbuf* %129)
  store i32 %130, i32* %2, align 4
  br label %278

131:                                              ; preds = %120, %114
  store i32 46, i32* %2, align 4
  br label %278

132:                                              ; preds = %110
  %133 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %134 = call i64 @css_lex_accept(%struct.lexbuf* %133, i8 signext 35)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %138 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %137, i32 0, i32 0
  %139 = load i8, i8* %138, align 8
  %140 = call i64 @isnmchar(i8 signext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %144 = call i32 @css_lex_hash(%struct.lexbuf* %143)
  store i32 %144, i32* %2, align 4
  br label %278

145:                                              ; preds = %136
  store i32 35, i32* %2, align 4
  br label %278

146:                                              ; preds = %132
  %147 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %148 = call i64 @css_lex_accept(%struct.lexbuf* %147, i8 signext 34)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %152 = call i32 @css_lex_string(%struct.lexbuf* %151, i8 signext 34)
  store i32 %152, i32* %2, align 4
  br label %278

153:                                              ; preds = %146
  %154 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %155 = call i64 @css_lex_accept(%struct.lexbuf* %154, i8 signext 39)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %159 = call i32 @css_lex_string(%struct.lexbuf* %158, i8 signext 39)
  store i32 %159, i32* %2, align 4
  br label %278

160:                                              ; preds = %153
  %161 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %162 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %161, i32 0, i32 0
  %163 = load i8, i8* %162, align 8
  %164 = sext i8 %163 to i32
  %165 = icmp sge i32 %164, 48
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %168 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %167, i32 0, i32 0
  %169 = load i8, i8* %168, align 8
  %170 = sext i8 %169 to i32
  %171 = icmp sle i32 %170, 57
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %174 = call i32 @css_lex_number(%struct.lexbuf* %173)
  store i32 %174, i32* %2, align 4
  br label %278

175:                                              ; preds = %166, %160
  %176 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %177 = call i64 @css_lex_accept(%struct.lexbuf* %176, i8 signext 117)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %254

179:                                              ; preds = %175
  %180 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %181 = call i64 @css_lex_accept(%struct.lexbuf* %180, i8 signext 114)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %249

183:                                              ; preds = %179
  %184 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %185 = call i64 @css_lex_accept(%struct.lexbuf* %184, i8 signext 108)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %242

187:                                              ; preds = %183
  %188 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %189 = call i64 @css_lex_accept(%struct.lexbuf* %188, i8 signext 40)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %233

191:                                              ; preds = %187
  br label %192

192:                                              ; preds = %198, %191
  %193 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %194 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %193, i32 0, i32 0
  %195 = load i8, i8* %194, align 8
  %196 = call i64 @iswhite(i8 signext %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %200 = call i32 @css_lex_next(%struct.lexbuf* %199)
  br label %192

201:                                              ; preds = %192
  %202 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %203 = call i64 @css_lex_accept(%struct.lexbuf* %202, i8 signext 34)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %207 = call i32 @css_lex_string(%struct.lexbuf* %206, i8 signext 34)
  br label %219

208:                                              ; preds = %201
  %209 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %210 = call i64 @css_lex_accept(%struct.lexbuf* %209, i8 signext 39)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %214 = call i32 @css_lex_string(%struct.lexbuf* %213, i8 signext 39)
  br label %218

215:                                              ; preds = %208
  %216 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %217 = call i32 @css_lex_uri(%struct.lexbuf* %216)
  br label %218

218:                                              ; preds = %215, %212
  br label %219

219:                                              ; preds = %218, %205
  br label %220

220:                                              ; preds = %226, %219
  %221 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %222 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %221, i32 0, i32 0
  %223 = load i8, i8* %222, align 8
  %224 = call i64 @iswhite(i8 signext %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %228 = call i32 @css_lex_next(%struct.lexbuf* %227)
  br label %220

229:                                              ; preds = %220
  %230 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %231 = call i32 @css_lex_expect(%struct.lexbuf* %230, i8 signext 41)
  %232 = load i32, i32* @CSS_URI, align 4
  store i32 %232, i32* %2, align 4
  br label %278

233:                                              ; preds = %187
  %234 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %235 = call i32 @css_push_char(%struct.lexbuf* %234, i8 zeroext 117)
  %236 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %237 = call i32 @css_push_char(%struct.lexbuf* %236, i8 zeroext 114)
  %238 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %239 = call i32 @css_push_char(%struct.lexbuf* %238, i8 zeroext 108)
  %240 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %241 = call i32 @css_lex_keyword(%struct.lexbuf* %240)
  store i32 %241, i32* %2, align 4
  br label %278

242:                                              ; preds = %183
  %243 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %244 = call i32 @css_push_char(%struct.lexbuf* %243, i8 zeroext 117)
  %245 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %246 = call i32 @css_push_char(%struct.lexbuf* %245, i8 zeroext 114)
  %247 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %248 = call i32 @css_lex_keyword(%struct.lexbuf* %247)
  store i32 %248, i32* %2, align 4
  br label %278

249:                                              ; preds = %179
  %250 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %251 = call i32 @css_push_char(%struct.lexbuf* %250, i8 zeroext 117)
  %252 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %253 = call i32 @css_lex_keyword(%struct.lexbuf* %252)
  store i32 %253, i32* %2, align 4
  br label %278

254:                                              ; preds = %175
  %255 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %256 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %255, i32 0, i32 0
  %257 = load i8, i8* %256, align 8
  %258 = call i64 @isnmstart(i8 signext %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %254
  %261 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %262 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %263 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %262, i32 0, i32 0
  %264 = load i8, i8* %263, align 8
  %265 = call i32 @css_push_char(%struct.lexbuf* %261, i8 zeroext %264)
  %266 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %267 = call i32 @css_lex_next(%struct.lexbuf* %266)
  %268 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %269 = call i32 @css_lex_keyword(%struct.lexbuf* %268)
  store i32 %269, i32* %2, align 4
  br label %278

270:                                              ; preds = %254
  %271 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %272 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %271, i32 0, i32 0
  %273 = load i8, i8* %272, align 8
  %274 = sext i8 %273 to i32
  store i32 %274, i32* %4, align 4
  %275 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %276 = call i32 @css_lex_next(%struct.lexbuf* %275)
  %277 = load i32, i32* %4, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %270, %260, %249, %242, %233, %229, %172, %157, %150, %145, %142, %131, %126, %109, %104, %86, %72, %31, %13
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local i64 @iswhite(i8 signext) #1

declare dso_local i32 @css_lex_next(%struct.lexbuf*) #1

declare dso_local i64 @css_lex_accept(%struct.lexbuf*, i8 signext) #1

declare dso_local i32 @fz_css_error(%struct.lexbuf*, i8*) #1

declare dso_local i32 @css_lex_expect(%struct.lexbuf*, i8 signext) #1

declare dso_local i64 @isnmstart(i8 signext) #1

declare dso_local i32 @css_push_char(%struct.lexbuf*, i8 zeroext) #1

declare dso_local i32 @css_lex_keyword(%struct.lexbuf*) #1

declare dso_local i32 @css_lex_number(%struct.lexbuf*) #1

declare dso_local i64 @isnmchar(i8 signext) #1

declare dso_local i32 @css_lex_hash(%struct.lexbuf*) #1

declare dso_local i32 @css_lex_string(%struct.lexbuf*, i8 signext) #1

declare dso_local i32 @css_lex_uri(%struct.lexbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
