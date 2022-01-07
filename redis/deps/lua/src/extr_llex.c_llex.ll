; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_llex.c_llex.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_llex.c_llex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@TK_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid long string delimiter\00", align 1
@TK_EQ = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@TK_DOTS = common dso_local global i32 0, align 4
@TK_CONCAT = common dso_local global i32 0, align 4
@TK_NUMBER = common dso_local global i32 0, align 4
@TK_EOS = common dso_local global i32 0, align 4
@FIRST_RESERVED = common dso_local global i32 0, align 4
@TK_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @llex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llex(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @luaZ_resetbuffer(i32 %12)
  br label %14

14:                                               ; preds = %184, %69, %45, %18, %2
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %177 [
    i32 10, label %18
    i32 13, label %18
    i32 45, label %21
    i32 91, label %70
    i32 61, label %91
    i32 60, label %103
    i32 62, label %115
    i32 126, label %127
    i32 34, label %139
    i32 39, label %139
    i32 46, label %148
    i32 128, label %175
  ]

18:                                               ; preds = %14, %14
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = call i32 @inclinenumber(%struct.TYPE_25__* %19)
  br label %14

21:                                               ; preds = %14
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = call i32 @next(%struct.TYPE_25__* %22)
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 45, i32* %3, align 4
  br label %271

29:                                               ; preds = %21
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = call i32 @next(%struct.TYPE_25__* %30)
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 91
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %38 = call i32 @skip_sep(%struct.TYPE_25__* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @luaZ_resetbuffer(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @read_long_string(%struct.TYPE_25__* %46, %struct.TYPE_24__* null, i32 %47)
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @luaZ_resetbuffer(i32 %51)
  br label %14

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %66, %54
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %57 = call i32 @currIsNewline(%struct.TYPE_25__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 128
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i1 [ false, %55 ], [ %63, %59 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %68 = call i32 @next(%struct.TYPE_25__* %67)
  br label %55

69:                                               ; preds = %64
  br label %14

70:                                               ; preds = %14
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %72 = call i32 @skip_sep(%struct.TYPE_25__* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @read_long_string(%struct.TYPE_25__* %76, %struct.TYPE_24__* %77, i32 %78)
  %80 = load i32, i32* @TK_STRING, align 4
  store i32 %80, i32* %3, align 4
  br label %271

81:                                               ; preds = %70
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 91, i32* %3, align 4
  br label %271

85:                                               ; preds = %81
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = load i32, i32* @TK_STRING, align 4
  %88 = call i32 @luaX_lexerror(%struct.TYPE_25__* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %14, %90
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = call i32 @next(%struct.TYPE_25__* %92)
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 61
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 61, i32* %3, align 4
  br label %271

99:                                               ; preds = %91
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %101 = call i32 @next(%struct.TYPE_25__* %100)
  %102 = load i32, i32* @TK_EQ, align 4
  store i32 %102, i32* %3, align 4
  br label %271

103:                                              ; preds = %14
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %105 = call i32 @next(%struct.TYPE_25__* %104)
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 61
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 60, i32* %3, align 4
  br label %271

111:                                              ; preds = %103
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %113 = call i32 @next(%struct.TYPE_25__* %112)
  %114 = load i32, i32* @TK_LE, align 4
  store i32 %114, i32* %3, align 4
  br label %271

115:                                              ; preds = %14
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %117 = call i32 @next(%struct.TYPE_25__* %116)
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 61
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i32 62, i32* %3, align 4
  br label %271

123:                                              ; preds = %115
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %125 = call i32 @next(%struct.TYPE_25__* %124)
  %126 = load i32, i32* @TK_GE, align 4
  store i32 %126, i32* %3, align 4
  br label %271

127:                                              ; preds = %14
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %129 = call i32 @next(%struct.TYPE_25__* %128)
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 61
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 126, i32* %3, align 4
  br label %271

135:                                              ; preds = %127
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %137 = call i32 @next(%struct.TYPE_25__* %136)
  %138 = load i32, i32* @TK_NE, align 4
  store i32 %138, i32* %3, align 4
  br label %271

139:                                              ; preds = %14, %14
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = trunc i32 %143 to i8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %146 = call i32 @read_string(%struct.TYPE_25__* %140, i8 signext %144, %struct.TYPE_24__* %145)
  %147 = load i32, i32* @TK_STRING, align 4
  store i32 %147, i32* %3, align 4
  br label %271

148:                                              ; preds = %14
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %150 = call i32 @save_and_next(%struct.TYPE_25__* %149)
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %152 = call i32 @check_next(%struct.TYPE_25__* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %148
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %156 = call i32 @check_next(%struct.TYPE_25__* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @TK_DOTS, align 4
  store i32 %159, i32* %3, align 4
  br label %271

160:                                              ; preds = %154
  %161 = load i32, i32* @TK_CONCAT, align 4
  store i32 %161, i32* %3, align 4
  br label %271

162:                                              ; preds = %148
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = trunc i32 %165 to i8
  %167 = call i32 @isdigit(i8 signext %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %162
  store i32 46, i32* %3, align 4
  br label %271

170:                                              ; preds = %162
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %173 = call i32 @read_numeral(%struct.TYPE_25__* %171, %struct.TYPE_24__* %172)
  %174 = load i32, i32* @TK_NUMBER, align 4
  store i32 %174, i32* %3, align 4
  br label %271

175:                                              ; preds = %14
  %176 = load i32, i32* @TK_EOS, align 4
  store i32 %176, i32* %3, align 4
  br label %271

177:                                              ; preds = %14
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = trunc i32 %180 to i8
  %182 = call i32 @isspace(i8 signext %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %177
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %186 = call i32 @currIsNewline(%struct.TYPE_25__* %185)
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 @lua_assert(i32 %189)
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %192 = call i32 @next(%struct.TYPE_25__* %191)
  br label %14

193:                                              ; preds = %177
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = trunc i32 %196 to i8
  %198 = call i32 @isdigit(i8 signext %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %193
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %203 = call i32 @read_numeral(%struct.TYPE_25__* %201, %struct.TYPE_24__* %202)
  %204 = load i32, i32* @TK_NUMBER, align 4
  store i32 %204, i32* %3, align 4
  br label %271

205:                                              ; preds = %193
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = trunc i32 %208 to i8
  %210 = call i32 @isalpha(i8 signext %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %205
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 95
  br i1 %216, label %217, label %264

217:                                              ; preds = %212, %205
  br label %218

218:                                              ; preds = %233, %217
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %220 = call i32 @save_and_next(%struct.TYPE_25__* %219)
  br label %221

221:                                              ; preds = %218
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = trunc i32 %224 to i8
  %226 = call i32 @isalnum(i8 signext %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %221
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 95
  br label %233

233:                                              ; preds = %228, %221
  %234 = phi i1 [ true, %221 ], [ %232, %228 ]
  br i1 %234, label %218, label %235

235:                                              ; preds = %233
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @luaZ_buffer(i32 %239)
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @luaZ_bufflen(i32 %243)
  %245 = call %struct.TYPE_23__* @luaX_newstring(%struct.TYPE_25__* %236, i32 %240, i32 %244)
  store %struct.TYPE_23__* %245, %struct.TYPE_23__** %8, align 8
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %235
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %255, 1
  %257 = load i32, i32* @FIRST_RESERVED, align 4
  %258 = add nsw i32 %256, %257
  store i32 %258, i32* %3, align 4
  br label %271

259:                                              ; preds = %235
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 0
  store %struct.TYPE_23__* %260, %struct.TYPE_23__** %262, align 8
  %263 = load i32, i32* @TK_NAME, align 4
  store i32 %263, i32* %3, align 4
  br label %271

264:                                              ; preds = %212
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %9, align 4
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %269 = call i32 @next(%struct.TYPE_25__* %268)
  %270 = load i32, i32* %9, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %264, %259, %251, %200, %175, %170, %169, %160, %158, %139, %135, %134, %123, %122, %111, %110, %99, %98, %84, %75, %28
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @luaZ_resetbuffer(i32) #1

declare dso_local i32 @inclinenumber(%struct.TYPE_25__*) #1

declare dso_local i32 @next(%struct.TYPE_25__*) #1

declare dso_local i32 @skip_sep(%struct.TYPE_25__*) #1

declare dso_local i32 @read_long_string(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @currIsNewline(%struct.TYPE_25__*) #1

declare dso_local i32 @luaX_lexerror(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @read_string(%struct.TYPE_25__*, i8 signext, %struct.TYPE_24__*) #1

declare dso_local i32 @save_and_next(%struct.TYPE_25__*) #1

declare dso_local i32 @check_next(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @read_numeral(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local %struct.TYPE_23__* @luaX_newstring(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @luaZ_buffer(i32) #1

declare dso_local i32 @luaZ_bufflen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
