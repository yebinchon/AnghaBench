; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lex.c_lex_scan.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lex.c_lex_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i64 }

@TK_number = common dso_local global i8 0, align 1
@TK_OFS = common dso_local global i8 0, align 1
@TK_name = common dso_local global i8 0, align 1
@TK_string = common dso_local global i8 0, align 1
@LJ_ERR_XLDELIM = common dso_local global i32 0, align 4
@TK_eq = common dso_local global i8 0, align 1
@TK_le = common dso_local global i8 0, align 1
@TK_ge = common dso_local global i8 0, align 1
@TK_ne = common dso_local global i8 0, align 1
@TK_label = common dso_local global i8 0, align 1
@TK_dots = common dso_local global i8 0, align 1
@TK_concat = common dso_local global i8 0, align 1
@TK_eof = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_16__*, i32*)* @lex_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @lex_scan(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = call i32 @lj_buf_reset(i32* %11)
  br label %13

13:                                               ; preds = %141, %125, %102, %76, %73, %2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @lj_char_isident(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %13
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @lj_char_isdigit(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @lex_number(%struct.TYPE_16__* %26, i32* %27)
  %29 = load i8, i8* @TK_number, align 1
  store i8 %29, i8* %3, align 1
  br label %251

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %34, %30
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = call signext i8 @lex_savenext(%struct.TYPE_16__* %32)
  br label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @lj_char_isident(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %31, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = call i32 @sbufB(i32* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = call i32 @sbuflen(i32* %46)
  %48 = call %struct.TYPE_17__* @lj_parse_keepstr(%struct.TYPE_16__* %41, i32 %44, i32 %47)
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %6, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = call i32 @setstrV(i32 %51, i32* %52, %struct.TYPE_17__* %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %40
  %60 = load i8, i8* @TK_OFS, align 1
  %61 = sext i8 %60 to i64
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = trunc i64 %65 to i8
  store i8 %66, i8* %3, align 1
  br label %251

67:                                               ; preds = %40
  %68 = load i8, i8* @TK_name, align 1
  store i8 %68, i8* %3, align 1
  br label %251

69:                                               ; preds = %13
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %243 [
    i32 10, label %73
    i32 13, label %73
    i32 32, label %76
    i32 9, label %76
    i32 11, label %76
    i32 12, label %76
    i32 45, label %79
    i32 91, label %126
    i32 61, label %146
    i32 60, label %158
    i32 62, label %170
    i32 126, label %182
    i32 58, label %194
    i32 34, label %206
    i32 39, label %206
    i32 46, label %211
    i32 128, label %241
  ]

73:                                               ; preds = %69, %69
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = call i32 @lex_newline(%struct.TYPE_16__* %74)
  br label %13

76:                                               ; preds = %69, %69, %69, %69
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = call i32 @lex_next(%struct.TYPE_16__* %77)
  br label %13

79:                                               ; preds = %69
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = call i32 @lex_next(%struct.TYPE_16__* %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 45
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i8 45, i8* %3, align 1
  br label %251

87:                                               ; preds = %79
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = call i32 @lex_next(%struct.TYPE_16__* %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 91
  br i1 %93, label %94, label %110

94:                                               ; preds = %87
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = call i32 @lex_skipeq(%struct.TYPE_16__* %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = call i32 @lj_buf_reset(i32* %98)
  %100 = load i32, i32* %7, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @lex_longstring(%struct.TYPE_16__* %103, i32* null, i32 %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = call i32 @lj_buf_reset(i32* %107)
  br label %13

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109, %87
  br label %111

111:                                              ; preds = %122, %110
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = call i32 @lex_iseol(%struct.TYPE_16__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 128
  br label %120

120:                                              ; preds = %115, %111
  %121 = phi i1 [ false, %111 ], [ %119, %115 ]
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = call i32 @lex_next(%struct.TYPE_16__* %123)
  br label %111

125:                                              ; preds = %120
  br label %13

126:                                              ; preds = %69
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = call i32 @lex_skipeq(%struct.TYPE_16__* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @lex_longstring(%struct.TYPE_16__* %132, i32* %133, i32 %134)
  %136 = load i8, i8* @TK_string, align 1
  store i8 %136, i8* %3, align 1
  br label %251

137:                                              ; preds = %126
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i8 91, i8* %3, align 1
  br label %251

141:                                              ; preds = %137
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = load i8, i8* @TK_string, align 1
  %144 = load i32, i32* @LJ_ERR_XLDELIM, align 4
  %145 = call i32 @lj_lex_error(%struct.TYPE_16__* %142, i8 signext %143, i32 %144)
  br label %13

146:                                              ; preds = %69
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %148 = call i32 @lex_next(%struct.TYPE_16__* %147)
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 61
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  store i8 61, i8* %3, align 1
  br label %251

154:                                              ; preds = %146
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %156 = call i32 @lex_next(%struct.TYPE_16__* %155)
  %157 = load i8, i8* @TK_eq, align 1
  store i8 %157, i8* %3, align 1
  br label %251

158:                                              ; preds = %69
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = call i32 @lex_next(%struct.TYPE_16__* %159)
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 61
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  store i8 60, i8* %3, align 1
  br label %251

166:                                              ; preds = %158
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %168 = call i32 @lex_next(%struct.TYPE_16__* %167)
  %169 = load i8, i8* @TK_le, align 1
  store i8 %169, i8* %3, align 1
  br label %251

170:                                              ; preds = %69
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = call i32 @lex_next(%struct.TYPE_16__* %171)
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 61
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i8 62, i8* %3, align 1
  br label %251

178:                                              ; preds = %170
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %180 = call i32 @lex_next(%struct.TYPE_16__* %179)
  %181 = load i8, i8* @TK_ge, align 1
  store i8 %181, i8* %3, align 1
  br label %251

182:                                              ; preds = %69
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %184 = call i32 @lex_next(%struct.TYPE_16__* %183)
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 61
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  store i8 126, i8* %3, align 1
  br label %251

190:                                              ; preds = %182
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %192 = call i32 @lex_next(%struct.TYPE_16__* %191)
  %193 = load i8, i8* @TK_ne, align 1
  store i8 %193, i8* %3, align 1
  br label %251

194:                                              ; preds = %69
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %196 = call i32 @lex_next(%struct.TYPE_16__* %195)
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 58
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  store i8 58, i8* %3, align 1
  br label %251

202:                                              ; preds = %194
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %204 = call i32 @lex_next(%struct.TYPE_16__* %203)
  %205 = load i8, i8* @TK_label, align 1
  store i8 %205, i8* %3, align 1
  br label %251

206:                                              ; preds = %69, %69
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @lex_string(%struct.TYPE_16__* %207, i32* %208)
  %210 = load i8, i8* @TK_string, align 1
  store i8 %210, i8* %3, align 1
  br label %251

211:                                              ; preds = %69
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %213 = call signext i8 @lex_savenext(%struct.TYPE_16__* %212)
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 46
  br i1 %215, label %216, label %229

216:                                              ; preds = %211
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %218 = call i32 @lex_next(%struct.TYPE_16__* %217)
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 46
  br i1 %222, label %223, label %227

223:                                              ; preds = %216
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %225 = call i32 @lex_next(%struct.TYPE_16__* %224)
  %226 = load i8, i8* @TK_dots, align 1
  store i8 %226, i8* %3, align 1
  br label %251

227:                                              ; preds = %216
  %228 = load i8, i8* @TK_concat, align 1
  store i8 %228, i8* %3, align 1
  br label %251

229:                                              ; preds = %211
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @lj_char_isdigit(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %229
  store i8 46, i8* %3, align 1
  br label %251

236:                                              ; preds = %229
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %238 = load i32*, i32** %5, align 8
  %239 = call i32 @lex_number(%struct.TYPE_16__* %237, i32* %238)
  %240 = load i8, i8* @TK_number, align 1
  store i8 %240, i8* %3, align 1
  br label %251

241:                                              ; preds = %69
  %242 = load i8, i8* @TK_eof, align 1
  store i8 %242, i8* %3, align 1
  br label %251

243:                                              ; preds = %69
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %9, align 1
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %249 = call i32 @lex_next(%struct.TYPE_16__* %248)
  %250 = load i8, i8* %9, align 1
  store i8 %250, i8* %3, align 1
  br label %251

251:                                              ; preds = %243, %241, %236, %235, %227, %223, %206, %202, %201, %190, %189, %178, %177, %166, %165, %154, %153, %140, %131, %86, %67, %59, %25
  %252 = load i8, i8* %3, align 1
  ret i8 %252
}

declare dso_local i32 @lj_buf_reset(i32*) #1

declare dso_local i64 @lj_char_isident(i32) #1

declare dso_local i64 @lj_char_isdigit(i32) #1

declare dso_local i32 @lex_number(%struct.TYPE_16__*, i32*) #1

declare dso_local signext i8 @lex_savenext(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @lj_parse_keepstr(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @sbufB(i32*) #1

declare dso_local i32 @sbuflen(i32*) #1

declare dso_local i32 @setstrV(i32, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @lex_newline(%struct.TYPE_16__*) #1

declare dso_local i32 @lex_next(%struct.TYPE_16__*) #1

declare dso_local i32 @lex_skipeq(%struct.TYPE_16__*) #1

declare dso_local i32 @lex_longstring(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @lex_iseol(%struct.TYPE_16__*) #1

declare dso_local i32 @lj_lex_error(%struct.TYPE_16__*, i8 signext, i32) #1

declare dso_local i32 @lex_string(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
