; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_jsY_lexx.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_jsY_lexx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i8, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"multi-line comment not terminated\00", align 1
@TK_DIV_ASS = common dso_local global i32 0, align 4
@TK_SHL_ASS = common dso_local global i32 0, align 4
@TK_SHL = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@TK_USHR_ASS = common dso_local global i32 0, align 4
@TK_USHR = common dso_local global i32 0, align 4
@TK_SHR_ASS = common dso_local global i32 0, align 4
@TK_SHR = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_STRICTEQ = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TK_STRICTNE = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@TK_INC = common dso_local global i32 0, align 4
@TK_ADD_ASS = common dso_local global i32 0, align 4
@TK_DEC = common dso_local global i32 0, align 4
@TK_SUB_ASS = common dso_local global i32 0, align 4
@TK_MUL_ASS = common dso_local global i32 0, align 4
@TK_MOD_ASS = common dso_local global i32 0, align 4
@TK_AND = common dso_local global i32 0, align 4
@TK_AND_ASS = common dso_local global i32 0, align 4
@TK_OR = common dso_local global i32 0, align 4
@TK_OR_ASS = common dso_local global i32 0, align 4
@TK_XOR_ASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unexpected character: '%c'\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unexpected character: \\u%04X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @jsY_lexx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsY_lexx(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %1, %34, %43, %57, %369
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %18, %6
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 4
  %16 = call i64 @jsY_iswhite(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = call i32 @jsY_next(%struct.TYPE_18__* %19)
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = call i64 @jsY_accept(%struct.TYPE_18__* %22, i8 signext 10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @isnlthcontext(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 59, i32* %2, align 4
  br label %376

34:                                               ; preds = %25
  br label %6

35:                                               ; preds = %21
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = call i64 @jsY_accept(%struct.TYPE_18__* %36, i8 signext 47)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = call i64 @jsY_accept(%struct.TYPE_18__* %40, i8 signext 47)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = call i32 @lexlinecomment(%struct.TYPE_18__* %44)
  br label %6

46:                                               ; preds = %39
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = call i64 @jsY_accept(%struct.TYPE_18__* %47, i8 signext 42)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = call i64 @lexcomment(%struct.TYPE_18__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = call i32 (%struct.TYPE_18__*, i8*, ...) @jsY_error(%struct.TYPE_18__* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %50
  br label %6

58:                                               ; preds = %46
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @isregexpcontext(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = call i32 @lexregexp(%struct.TYPE_18__* %65)
  store i32 %66, i32* %2, align 4
  br label %376

67:                                               ; preds = %58
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = call i64 @jsY_accept(%struct.TYPE_18__* %68, i8 signext 61)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @TK_DIV_ASS, align 4
  store i32 %72, i32* %2, align 4
  br label %376

73:                                               ; preds = %67
  store i32 47, i32* %2, align 4
  br label %376

74:                                               ; preds = %35
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i8, i8* %76, align 4
  %78 = sext i8 %77 to i32
  %79 = icmp sge i32 %78, 48
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i8, i8* %82, align 4
  %84 = sext i8 %83 to i32
  %85 = icmp sle i32 %84, 57
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = call i32 @lexnumber(%struct.TYPE_18__* %87)
  store i32 %88, i32* %2, align 4
  br label %376

89:                                               ; preds = %80, %74
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i8, i8* %91, align 4
  %93 = sext i8 %92 to i32
  switch i32 %93, label %305 [
    i32 40, label %94
    i32 41, label %97
    i32 44, label %100
    i32 58, label %103
    i32 59, label %106
    i32 63, label %109
    i32 91, label %112
    i32 93, label %115
    i32 123, label %118
    i32 125, label %121
    i32 126, label %124
    i32 39, label %127
    i32 34, label %127
    i32 46, label %130
    i32 60, label %133
    i32 62, label %154
    i32 61, label %187
    i32 33, label %202
    i32 43, label %217
    i32 45, label %232
    i32 42, label %247
    i32 37, label %256
    i32 38, label %265
    i32 124, label %280
    i32 94, label %295
    i32 0, label %304
  ]

94:                                               ; preds = %89
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %96 = call i32 @jsY_next(%struct.TYPE_18__* %95)
  store i32 40, i32* %2, align 4
  br label %376

97:                                               ; preds = %89
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %99 = call i32 @jsY_next(%struct.TYPE_18__* %98)
  store i32 41, i32* %2, align 4
  br label %376

100:                                              ; preds = %89
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %102 = call i32 @jsY_next(%struct.TYPE_18__* %101)
  store i32 44, i32* %2, align 4
  br label %376

103:                                              ; preds = %89
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = call i32 @jsY_next(%struct.TYPE_18__* %104)
  store i32 58, i32* %2, align 4
  br label %376

106:                                              ; preds = %89
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = call i32 @jsY_next(%struct.TYPE_18__* %107)
  store i32 59, i32* %2, align 4
  br label %376

109:                                              ; preds = %89
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %111 = call i32 @jsY_next(%struct.TYPE_18__* %110)
  store i32 63, i32* %2, align 4
  br label %376

112:                                              ; preds = %89
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = call i32 @jsY_next(%struct.TYPE_18__* %113)
  store i32 91, i32* %2, align 4
  br label %376

115:                                              ; preds = %89
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %117 = call i32 @jsY_next(%struct.TYPE_18__* %116)
  store i32 93, i32* %2, align 4
  br label %376

118:                                              ; preds = %89
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = call i32 @jsY_next(%struct.TYPE_18__* %119)
  store i32 123, i32* %2, align 4
  br label %376

121:                                              ; preds = %89
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %123 = call i32 @jsY_next(%struct.TYPE_18__* %122)
  store i32 125, i32* %2, align 4
  br label %376

124:                                              ; preds = %89
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %126 = call i32 @jsY_next(%struct.TYPE_18__* %125)
  store i32 126, i32* %2, align 4
  br label %376

127:                                              ; preds = %89, %89
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %129 = call i32 @lexstring(%struct.TYPE_18__* %128)
  store i32 %129, i32* %2, align 4
  br label %376

130:                                              ; preds = %89
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %132 = call i32 @lexnumber(%struct.TYPE_18__* %131)
  store i32 %132, i32* %2, align 4
  br label %376

133:                                              ; preds = %89
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = call i32 @jsY_next(%struct.TYPE_18__* %134)
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = call i64 @jsY_accept(%struct.TYPE_18__* %136, i8 signext 60)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %133
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %141 = call i64 @jsY_accept(%struct.TYPE_18__* %140, i8 signext 61)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* @TK_SHL_ASS, align 4
  store i32 %144, i32* %2, align 4
  br label %376

145:                                              ; preds = %139
  %146 = load i32, i32* @TK_SHL, align 4
  store i32 %146, i32* %2, align 4
  br label %376

147:                                              ; preds = %133
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %149 = call i64 @jsY_accept(%struct.TYPE_18__* %148, i8 signext 61)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @TK_LE, align 4
  store i32 %152, i32* %2, align 4
  br label %376

153:                                              ; preds = %147
  store i32 60, i32* %2, align 4
  br label %376

154:                                              ; preds = %89
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %156 = call i32 @jsY_next(%struct.TYPE_18__* %155)
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %158 = call i64 @jsY_accept(%struct.TYPE_18__* %157, i8 signext 62)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %154
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %162 = call i64 @jsY_accept(%struct.TYPE_18__* %161, i8 signext 62)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %166 = call i64 @jsY_accept(%struct.TYPE_18__* %165, i8 signext 61)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* @TK_USHR_ASS, align 4
  store i32 %169, i32* %2, align 4
  br label %376

170:                                              ; preds = %164
  %171 = load i32, i32* @TK_USHR, align 4
  store i32 %171, i32* %2, align 4
  br label %376

172:                                              ; preds = %160
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %174 = call i64 @jsY_accept(%struct.TYPE_18__* %173, i8 signext 61)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* @TK_SHR_ASS, align 4
  store i32 %177, i32* %2, align 4
  br label %376

178:                                              ; preds = %172
  %179 = load i32, i32* @TK_SHR, align 4
  store i32 %179, i32* %2, align 4
  br label %376

180:                                              ; preds = %154
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %182 = call i64 @jsY_accept(%struct.TYPE_18__* %181, i8 signext 61)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i32, i32* @TK_GE, align 4
  store i32 %185, i32* %2, align 4
  br label %376

186:                                              ; preds = %180
  store i32 62, i32* %2, align 4
  br label %376

187:                                              ; preds = %89
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %189 = call i32 @jsY_next(%struct.TYPE_18__* %188)
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %191 = call i64 @jsY_accept(%struct.TYPE_18__* %190, i8 signext 61)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %187
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %195 = call i64 @jsY_accept(%struct.TYPE_18__* %194, i8 signext 61)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* @TK_STRICTEQ, align 4
  store i32 %198, i32* %2, align 4
  br label %376

199:                                              ; preds = %193
  %200 = load i32, i32* @TK_EQ, align 4
  store i32 %200, i32* %2, align 4
  br label %376

201:                                              ; preds = %187
  store i32 61, i32* %2, align 4
  br label %376

202:                                              ; preds = %89
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %204 = call i32 @jsY_next(%struct.TYPE_18__* %203)
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %206 = call i64 @jsY_accept(%struct.TYPE_18__* %205, i8 signext 61)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %202
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %210 = call i64 @jsY_accept(%struct.TYPE_18__* %209, i8 signext 61)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i32, i32* @TK_STRICTNE, align 4
  store i32 %213, i32* %2, align 4
  br label %376

214:                                              ; preds = %208
  %215 = load i32, i32* @TK_NE, align 4
  store i32 %215, i32* %2, align 4
  br label %376

216:                                              ; preds = %202
  store i32 33, i32* %2, align 4
  br label %376

217:                                              ; preds = %89
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %219 = call i32 @jsY_next(%struct.TYPE_18__* %218)
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %221 = call i64 @jsY_accept(%struct.TYPE_18__* %220, i8 signext 43)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = load i32, i32* @TK_INC, align 4
  store i32 %224, i32* %2, align 4
  br label %376

225:                                              ; preds = %217
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %227 = call i64 @jsY_accept(%struct.TYPE_18__* %226, i8 signext 61)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = load i32, i32* @TK_ADD_ASS, align 4
  store i32 %230, i32* %2, align 4
  br label %376

231:                                              ; preds = %225
  store i32 43, i32* %2, align 4
  br label %376

232:                                              ; preds = %89
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %234 = call i32 @jsY_next(%struct.TYPE_18__* %233)
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %236 = call i64 @jsY_accept(%struct.TYPE_18__* %235, i8 signext 45)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i32, i32* @TK_DEC, align 4
  store i32 %239, i32* %2, align 4
  br label %376

240:                                              ; preds = %232
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %242 = call i64 @jsY_accept(%struct.TYPE_18__* %241, i8 signext 61)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = load i32, i32* @TK_SUB_ASS, align 4
  store i32 %245, i32* %2, align 4
  br label %376

246:                                              ; preds = %240
  store i32 45, i32* %2, align 4
  br label %376

247:                                              ; preds = %89
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %249 = call i32 @jsY_next(%struct.TYPE_18__* %248)
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %251 = call i64 @jsY_accept(%struct.TYPE_18__* %250, i8 signext 61)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %247
  %254 = load i32, i32* @TK_MUL_ASS, align 4
  store i32 %254, i32* %2, align 4
  br label %376

255:                                              ; preds = %247
  store i32 42, i32* %2, align 4
  br label %376

256:                                              ; preds = %89
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %258 = call i32 @jsY_next(%struct.TYPE_18__* %257)
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %260 = call i64 @jsY_accept(%struct.TYPE_18__* %259, i8 signext 61)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load i32, i32* @TK_MOD_ASS, align 4
  store i32 %263, i32* %2, align 4
  br label %376

264:                                              ; preds = %256
  store i32 37, i32* %2, align 4
  br label %376

265:                                              ; preds = %89
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %267 = call i32 @jsY_next(%struct.TYPE_18__* %266)
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %269 = call i64 @jsY_accept(%struct.TYPE_18__* %268, i8 signext 38)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = load i32, i32* @TK_AND, align 4
  store i32 %272, i32* %2, align 4
  br label %376

273:                                              ; preds = %265
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %275 = call i64 @jsY_accept(%struct.TYPE_18__* %274, i8 signext 61)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = load i32, i32* @TK_AND_ASS, align 4
  store i32 %278, i32* %2, align 4
  br label %376

279:                                              ; preds = %273
  store i32 38, i32* %2, align 4
  br label %376

280:                                              ; preds = %89
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %282 = call i32 @jsY_next(%struct.TYPE_18__* %281)
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %284 = call i64 @jsY_accept(%struct.TYPE_18__* %283, i8 signext 124)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = load i32, i32* @TK_OR, align 4
  store i32 %287, i32* %2, align 4
  br label %376

288:                                              ; preds = %280
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %290 = call i64 @jsY_accept(%struct.TYPE_18__* %289, i8 signext 61)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = load i32, i32* @TK_OR_ASS, align 4
  store i32 %293, i32* %2, align 4
  br label %376

294:                                              ; preds = %288
  store i32 124, i32* %2, align 4
  br label %376

295:                                              ; preds = %89
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %297 = call i32 @jsY_next(%struct.TYPE_18__* %296)
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %299 = call i64 @jsY_accept(%struct.TYPE_18__* %298, i8 signext 61)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %295
  %302 = load i32, i32* @TK_XOR_ASS, align 4
  store i32 %302, i32* %2, align 4
  br label %376

303:                                              ; preds = %295
  store i32 94, i32* %2, align 4
  br label %376

304:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %376

305:                                              ; preds = %89
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %307 = call i32 @jsY_unescape(%struct.TYPE_18__* %306)
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 1
  %310 = load i8, i8* %309, align 4
  %311 = call i64 @jsY_isidentifierstart(i8 signext %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %350

313:                                              ; preds = %305
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %315 = call i32 @textinit(%struct.TYPE_18__* %314)
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 1
  %319 = load i8, i8* %318, align 4
  %320 = call i32 @textpush(%struct.TYPE_18__* %316, i8 signext %319)
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %322 = call i32 @jsY_next(%struct.TYPE_18__* %321)
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %324 = call i32 @jsY_unescape(%struct.TYPE_18__* %323)
  br label %325

325:                                              ; preds = %331, %313
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 1
  %328 = load i8, i8* %327, align 4
  %329 = call i64 @jsY_isidentifierpart(i8 signext %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %341

331:                                              ; preds = %325
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = load i8, i8* %334, align 4
  %336 = call i32 @textpush(%struct.TYPE_18__* %332, i8 signext %335)
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %338 = call i32 @jsY_next(%struct.TYPE_18__* %337)
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %340 = call i32 @jsY_unescape(%struct.TYPE_18__* %339)
  br label %325

341:                                              ; preds = %325
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %343 = call i32 @textend(%struct.TYPE_18__* %342)
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @jsY_findkeyword(%struct.TYPE_18__* %344, i32 %348)
  store i32 %349, i32* %2, align 4
  br label %376

350:                                              ; preds = %305
  %351 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %351, i32 0, i32 1
  %353 = load i8, i8* %352, align 4
  %354 = sext i8 %353 to i32
  %355 = icmp sge i32 %354, 32
  br i1 %355, label %356, label %369

356:                                              ; preds = %350
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 1
  %359 = load i8, i8* %358, align 4
  %360 = sext i8 %359 to i32
  %361 = icmp sle i32 %360, 126
  br i1 %361, label %362, label %369

362:                                              ; preds = %356
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 1
  %366 = load i8, i8* %365, align 4
  %367 = sext i8 %366 to i32
  %368 = call i32 (%struct.TYPE_18__*, i8*, ...) @jsY_error(%struct.TYPE_18__* %363, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %367)
  br label %369

369:                                              ; preds = %362, %356, %350
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %371 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %371, i32 0, i32 1
  %373 = load i8, i8* %372, align 4
  %374 = sext i8 %373 to i32
  %375 = call i32 (%struct.TYPE_18__*, i8*, ...) @jsY_error(%struct.TYPE_18__* %370, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %374)
  br label %6

376:                                              ; preds = %341, %304, %303, %301, %294, %292, %286, %279, %277, %271, %264, %262, %255, %253, %246, %244, %238, %231, %229, %223, %216, %214, %212, %201, %199, %197, %186, %184, %178, %176, %170, %168, %153, %151, %145, %143, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %100, %97, %94, %86, %73, %71, %64, %33
  %377 = load i32, i32* %2, align 4
  ret i32 %377
}

declare dso_local i64 @jsY_iswhite(i8 signext) #1

declare dso_local i32 @jsY_next(%struct.TYPE_18__*) #1

declare dso_local i64 @jsY_accept(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i64 @isnlthcontext(i32) #1

declare dso_local i32 @lexlinecomment(%struct.TYPE_18__*) #1

declare dso_local i64 @lexcomment(%struct.TYPE_18__*) #1

declare dso_local i32 @jsY_error(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i64 @isregexpcontext(i32) #1

declare dso_local i32 @lexregexp(%struct.TYPE_18__*) #1

declare dso_local i32 @lexnumber(%struct.TYPE_18__*) #1

declare dso_local i32 @lexstring(%struct.TYPE_18__*) #1

declare dso_local i32 @jsY_unescape(%struct.TYPE_18__*) #1

declare dso_local i64 @jsY_isidentifierstart(i8 signext) #1

declare dso_local i32 @textinit(%struct.TYPE_18__*) #1

declare dso_local i32 @textpush(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i64 @jsY_isidentifierpart(i8 signext) #1

declare dso_local i32 @textend(%struct.TYPE_18__*) #1

declare dso_local i32 @jsY_findkeyword(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
