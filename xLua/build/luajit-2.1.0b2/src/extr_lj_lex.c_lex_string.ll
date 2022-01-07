; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lex.c_lex_string.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lex.c_lex_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }

@TK_eof = common dso_local global i32 0, align 4
@LJ_ERR_XSTR = common dso_local global i32 0, align 4
@TK_string = common dso_local global i32 0, align 4
@LJ_ERR_XESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @lex_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lex_string(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = call i32 @lex_savenext(%struct.TYPE_10__* %10)
  br label %12

12:                                               ; preds = %262, %253, %249, %204, %198, %197, %27, %22, %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %263

18:                                               ; preds = %12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %259 [
    i32 128, label %22
    i32 10, label %27
    i32 13, label %27
    i32 92, label %32
  ]

22:                                               ; preds = %18
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = load i32, i32* @TK_eof, align 4
  %25 = load i32, i32* @LJ_ERR_XSTR, align 4
  %26 = call i32 @lj_lex_error(%struct.TYPE_10__* %23, i32 %24, i32 %25)
  br label %12

27:                                               ; preds = %18, %18
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = load i32, i32* @TK_string, align 4
  %30 = load i32, i32* @LJ_ERR_XSTR, align 4
  %31 = call i32 @lj_lex_error(%struct.TYPE_10__* %28, i32 %29, i32 %30)
  br label %12

32:                                               ; preds = %18
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = call i32 @lex_next(%struct.TYPE_10__* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %205 [
    i32 97, label %36
    i32 98, label %37
    i32 102, label %38
    i32 110, label %39
    i32 114, label %40
    i32 116, label %41
    i32 118, label %42
    i32 120, label %43
    i32 117, label %85
    i32 122, label %177
    i32 10, label %198
    i32 13, label %198
    i32 92, label %203
    i32 34, label %203
    i32 39, label %203
    i32 128, label %204
  ]

36:                                               ; preds = %32
  store i32 7, i32* %6, align 4
  br label %253

37:                                               ; preds = %32
  store i32 8, i32* %6, align 4
  br label %253

38:                                               ; preds = %32
  store i32 12, i32* %6, align 4
  br label %253

39:                                               ; preds = %32
  store i32 10, i32* %6, align 4
  br label %253

40:                                               ; preds = %32
  store i32 13, i32* %6, align 4
  br label %253

41:                                               ; preds = %32
  store i32 9, i32* %6, align 4
  br label %253

42:                                               ; preds = %32
  store i32 11, i32* %6, align 4
  br label %253

43:                                               ; preds = %32
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i32 @lex_next(%struct.TYPE_10__* %44)
  %46 = and i32 %45, 15
  %47 = shl i32 %46, 4
  store i32 %47, i32* %6, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @lj_char_isdigit(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %43
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lj_char_isxdigit(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %240

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 144
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %43
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = call i32 @lex_next(%struct.TYPE_10__* %64)
  %66 = and i32 %65, 15
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @lj_char_isdigit(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %63
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @lj_char_isxdigit(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %240

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 9
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %63
  br label %253

85:                                               ; preds = %32
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = call i32 @lex_next(%struct.TYPE_10__* %86)
  %88 = icmp ne i32 %87, 123
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %240

90:                                               ; preds = %85
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = call i32 @lex_next(%struct.TYPE_10__* %91)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %121, %90
  %94 = load i32, i32* %6, align 4
  %95 = shl i32 %94, 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 15
  %100 = or i32 %95, %99
  store i32 %100, i32* %6, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @lj_char_isdigit(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %93
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @lj_char_isxdigit(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  br label %240

113:                                              ; preds = %106
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 9
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %113, %93
  %117 = load i32, i32* %6, align 4
  %118 = icmp sge i32 %117, 1114112
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %240

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = call i32 @lex_next(%struct.TYPE_10__* %122)
  %124 = icmp ne i32 %123, 125
  br i1 %124, label %93, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 2048
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 128
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %253

132:                                              ; preds = %128
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = ashr i32 %134, 6
  %136 = or i32 192, %135
  %137 = call i32 @lex_save(%struct.TYPE_10__* %133, i32 %136)
  br label %173

138:                                              ; preds = %125
  %139 = load i32, i32* %6, align 4
  %140 = icmp sge i32 %139, 65536
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = load i32, i32* %6, align 4
  %144 = ashr i32 %143, 18
  %145 = or i32 240, %144
  %146 = call i32 @lex_save(%struct.TYPE_10__* %142, i32 %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %148 = load i32, i32* %6, align 4
  %149 = ashr i32 %148, 12
  %150 = and i32 %149, 63
  %151 = or i32 128, %150
  %152 = call i32 @lex_save(%struct.TYPE_10__* %147, i32 %151)
  br label %166

153:                                              ; preds = %138
  %154 = load i32, i32* %6, align 4
  %155 = icmp sge i32 %154, 55296
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* %6, align 4
  %158 = icmp slt i32 %157, 57344
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %240

160:                                              ; preds = %156, %153
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = load i32, i32* %6, align 4
  %163 = ashr i32 %162, 12
  %164 = or i32 224, %163
  %165 = call i32 @lex_save(%struct.TYPE_10__* %161, i32 %164)
  br label %166

166:                                              ; preds = %160, %141
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %168 = load i32, i32* %6, align 4
  %169 = ashr i32 %168, 6
  %170 = and i32 %169, 63
  %171 = or i32 128, %170
  %172 = call i32 @lex_save(%struct.TYPE_10__* %167, i32 %171)
  br label %173

173:                                              ; preds = %166, %132
  %174 = load i32, i32* %6, align 4
  %175 = and i32 %174, 63
  %176 = or i32 128, %175
  store i32 %176, i32* %6, align 4
  br label %253

177:                                              ; preds = %32
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %179 = call i32 @lex_next(%struct.TYPE_10__* %178)
  br label %180

180:                                              ; preds = %196, %177
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @lj_char_isspace(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %180
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %188 = call i32 @lex_iseol(%struct.TYPE_10__* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %192 = call i32 @lex_newline(%struct.TYPE_10__* %191)
  br label %196

193:                                              ; preds = %186
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %195 = call i32 @lex_next(%struct.TYPE_10__* %194)
  br label %196

196:                                              ; preds = %193, %190
  br label %180

197:                                              ; preds = %180
  br label %12

198:                                              ; preds = %32, %32
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %200 = call i32 @lex_save(%struct.TYPE_10__* %199, i32 10)
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = call i32 @lex_newline(%struct.TYPE_10__* %201)
  br label %12

203:                                              ; preds = %32, %32, %32
  br label %253

204:                                              ; preds = %32
  br label %12

205:                                              ; preds = %32
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @lj_char_isdigit(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  br label %240

210:                                              ; preds = %205
  %211 = load i32, i32* %6, align 4
  %212 = sub nsw i32 %211, 48
  store i32 %212, i32* %6, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %214 = call i32 @lex_next(%struct.TYPE_10__* %213)
  %215 = call i32 @lj_char_isdigit(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %249

217:                                              ; preds = %210
  %218 = load i32, i32* %6, align 4
  %219 = mul nsw i32 %218, 10
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %222, 48
  %224 = add nsw i32 %219, %223
  store i32 %224, i32* %6, align 4
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %226 = call i32 @lex_next(%struct.TYPE_10__* %225)
  %227 = call i32 @lj_char_isdigit(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %248

229:                                              ; preds = %217
  %230 = load i32, i32* %6, align 4
  %231 = mul nsw i32 %230, 10
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %234, 48
  %236 = add nsw i32 %231, %235
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp sgt i32 %237, 255
  br i1 %238, label %239, label %245

239:                                              ; preds = %229
  br label %240

240:                                              ; preds = %239, %209, %159, %119, %112, %89, %80, %59
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %242 = load i32, i32* @TK_string, align 4
  %243 = load i32, i32* @LJ_ERR_XESC, align 4
  %244 = call i32 @lj_lex_error(%struct.TYPE_10__* %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %240, %229
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %247 = call i32 @lex_next(%struct.TYPE_10__* %246)
  br label %248

248:                                              ; preds = %245, %217
  br label %249

249:                                              ; preds = %248, %210
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @lex_save(%struct.TYPE_10__* %250, i32 %251)
  br label %12

253:                                              ; preds = %203, %173, %131, %84, %42, %41, %40, %39, %38, %37, %36
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %255 = load i32, i32* %6, align 4
  %256 = call i32 @lex_save(%struct.TYPE_10__* %254, i32 %255)
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %258 = call i32 @lex_next(%struct.TYPE_10__* %257)
  br label %12

259:                                              ; preds = %18
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %261 = call i32 @lex_savenext(%struct.TYPE_10__* %260)
  br label %262

262:                                              ; preds = %259
  br label %12

263:                                              ; preds = %12
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %265 = call i32 @lex_savenext(%struct.TYPE_10__* %264)
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load i32*, i32** %4, align 8
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 1
  %273 = call i64 @sbufB(i32* %272)
  %274 = add nsw i64 %273, 1
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = call i64 @sbuflen(i32* %276)
  %278 = sub nsw i64 %277, 2
  %279 = call i32 @lj_parse_keepstr(%struct.TYPE_10__* %270, i64 %274, i64 %278)
  %280 = call i32 @setstrV(i32 %268, i32* %269, i32 %279)
  ret void
}

declare dso_local i32 @lex_savenext(%struct.TYPE_10__*) #1

declare dso_local i32 @lj_lex_error(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @lex_next(%struct.TYPE_10__*) #1

declare dso_local i32 @lj_char_isdigit(i32) #1

declare dso_local i32 @lj_char_isxdigit(i32) #1

declare dso_local i32 @lex_save(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @lj_char_isspace(i32) #1

declare dso_local i32 @lex_iseol(%struct.TYPE_10__*) #1

declare dso_local i32 @lex_newline(%struct.TYPE_10__*) #1

declare dso_local i32 @setstrV(i32, i32*, i32) #1

declare dso_local i32 @lj_parse_keepstr(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i64 @sbufB(i32*) #1

declare dso_local i64 @sbuflen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
