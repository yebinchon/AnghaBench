; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_llex.c_llex.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_llex.c_llex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }

@TK_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid long string delimiter\00", align 1
@TK_EQ = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@TK_SHL = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_SHR = common dso_local global i32 0, align 4
@TK_IDIV = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@TK_DBCOLON = common dso_local global i32 0, align 4
@TK_DOTS = common dso_local global i32 0, align 4
@TK_CONCAT = common dso_local global i32 0, align 4
@TK_EOS = common dso_local global i32 0, align 4
@FIRST_RESERVED = common dso_local global i32 0, align 4
@TK_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)* @llex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llex(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @luaZ_resetbuffer(i32 %12)
  br label %14

14:                                               ; preds = %247, %2
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %198 [
    i32 10, label %18
    i32 13, label %18
    i32 32, label %21
    i32 12, label %21
    i32 9, label %21
    i32 11, label %21
    i32 45, label %24
    i32 91, label %73
    i32 61, label %93
    i32 60, label %102
    i32 62, label %117
    i32 47, label %132
    i32 126, label %141
    i32 58, label %150
    i32 34, label %159
    i32 39, label %159
    i32 46, label %167
    i32 48, label %192
    i32 49, label %192
    i32 50, label %192
    i32 51, label %192
    i32 52, label %192
    i32 53, label %192
    i32 54, label %192
    i32 55, label %192
    i32 56, label %192
    i32 57, label %192
    i32 128, label %196
  ]

18:                                               ; preds = %14, %14
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %20 = call i32 @inclinenumber(%struct.TYPE_24__* %19)
  br label %247

21:                                               ; preds = %14, %14, %14, %14
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = call i32 @next(%struct.TYPE_24__* %22)
  br label %247

24:                                               ; preds = %14
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = call i32 @next(%struct.TYPE_24__* %25)
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 45, i32* %3, align 4
  br label %248

32:                                               ; preds = %24
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %34 = call i32 @next(%struct.TYPE_24__* %33)
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 91
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %41 = call i32 @skip_sep(%struct.TYPE_24__* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @luaZ_resetbuffer(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @read_long_string(%struct.TYPE_24__* %49, %struct.TYPE_23__* null, i32 %50)
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @luaZ_resetbuffer(i32 %54)
  br label %247

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %69, %57
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %60 = call i32 @currIsNewline(%struct.TYPE_24__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 128
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i1 [ false, %58 ], [ %66, %62 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %71 = call i32 @next(%struct.TYPE_24__* %70)
  br label %58

72:                                               ; preds = %67
  br label %247

73:                                               ; preds = %14
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %75 = call i32 @skip_sep(%struct.TYPE_24__* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @read_long_string(%struct.TYPE_24__* %79, %struct.TYPE_23__* %80, i32 %81)
  %83 = load i32, i32* @TK_STRING, align 4
  store i32 %83, i32* %3, align 4
  br label %248

84:                                               ; preds = %73
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %89 = load i32, i32* @TK_STRING, align 4
  %90 = call i32 @lexerror(%struct.TYPE_24__* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %84
  br label %92

92:                                               ; preds = %91
  store i32 91, i32* %3, align 4
  br label %248

93:                                               ; preds = %14
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %95 = call i32 @next(%struct.TYPE_24__* %94)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %97 = call i32 @check_next1(%struct.TYPE_24__* %96, i8 signext 61)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @TK_EQ, align 4
  store i32 %100, i32* %3, align 4
  br label %248

101:                                              ; preds = %93
  store i32 61, i32* %3, align 4
  br label %248

102:                                              ; preds = %14
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %104 = call i32 @next(%struct.TYPE_24__* %103)
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %106 = call i32 @check_next1(%struct.TYPE_24__* %105, i8 signext 61)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @TK_LE, align 4
  store i32 %109, i32* %3, align 4
  br label %248

110:                                              ; preds = %102
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %112 = call i32 @check_next1(%struct.TYPE_24__* %111, i8 signext 60)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @TK_SHL, align 4
  store i32 %115, i32* %3, align 4
  br label %248

116:                                              ; preds = %110
  store i32 60, i32* %3, align 4
  br label %248

117:                                              ; preds = %14
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %119 = call i32 @next(%struct.TYPE_24__* %118)
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %121 = call i32 @check_next1(%struct.TYPE_24__* %120, i8 signext 61)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @TK_GE, align 4
  store i32 %124, i32* %3, align 4
  br label %248

125:                                              ; preds = %117
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %127 = call i32 @check_next1(%struct.TYPE_24__* %126, i8 signext 62)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @TK_SHR, align 4
  store i32 %130, i32* %3, align 4
  br label %248

131:                                              ; preds = %125
  store i32 62, i32* %3, align 4
  br label %248

132:                                              ; preds = %14
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %134 = call i32 @next(%struct.TYPE_24__* %133)
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %136 = call i32 @check_next1(%struct.TYPE_24__* %135, i8 signext 47)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @TK_IDIV, align 4
  store i32 %139, i32* %3, align 4
  br label %248

140:                                              ; preds = %132
  store i32 47, i32* %3, align 4
  br label %248

141:                                              ; preds = %14
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %143 = call i32 @next(%struct.TYPE_24__* %142)
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %145 = call i32 @check_next1(%struct.TYPE_24__* %144, i8 signext 61)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @TK_NE, align 4
  store i32 %148, i32* %3, align 4
  br label %248

149:                                              ; preds = %141
  store i32 126, i32* %3, align 4
  br label %248

150:                                              ; preds = %14
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %152 = call i32 @next(%struct.TYPE_24__* %151)
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %154 = call i32 @check_next1(%struct.TYPE_24__* %153, i8 signext 58)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @TK_DBCOLON, align 4
  store i32 %157, i32* %3, align 4
  br label %248

158:                                              ; preds = %150
  store i32 58, i32* %3, align 4
  br label %248

159:                                              ; preds = %14, %14
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %165 = call i32 @read_string(%struct.TYPE_24__* %160, i32 %163, %struct.TYPE_23__* %164)
  %166 = load i32, i32* @TK_STRING, align 4
  store i32 %166, i32* %3, align 4
  br label %248

167:                                              ; preds = %14
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %169 = call i32 @save_and_next(%struct.TYPE_24__* %168)
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %171 = call i32 @check_next1(%struct.TYPE_24__* %170, i8 signext 46)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %167
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %175 = call i32 @check_next1(%struct.TYPE_24__* %174, i8 signext 46)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i32, i32* @TK_DOTS, align 4
  store i32 %178, i32* %3, align 4
  br label %248

179:                                              ; preds = %173
  %180 = load i32, i32* @TK_CONCAT, align 4
  store i32 %180, i32* %3, align 4
  br label %248

181:                                              ; preds = %167
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @lisdigit(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %181
  store i32 46, i32* %3, align 4
  br label %248

188:                                              ; preds = %181
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %191 = call i32 @read_numeral(%struct.TYPE_24__* %189, %struct.TYPE_23__* %190)
  store i32 %191, i32* %3, align 4
  br label %248

192:                                              ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %195 = call i32 @read_numeral(%struct.TYPE_24__* %193, %struct.TYPE_23__* %194)
  store i32 %195, i32* %3, align 4
  br label %248

196:                                              ; preds = %14
  %197 = load i32, i32* @TK_EOS, align 4
  store i32 %197, i32* %3, align 4
  br label %248

198:                                              ; preds = %14
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @lislalpha(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %240

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %208, %204
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %207 = call i32 @save_and_next(%struct.TYPE_24__* %206)
  br label %208

208:                                              ; preds = %205
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @lislalnum(i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %205, label %214

214:                                              ; preds = %208
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @luaZ_buffer(i32 %218)
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @luaZ_bufflen(i32 %222)
  %224 = call %struct.TYPE_22__* @luaX_newstring(%struct.TYPE_24__* %215, i32 %219, i32 %223)
  store %struct.TYPE_22__* %224, %struct.TYPE_22__** %8, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  store %struct.TYPE_22__* %225, %struct.TYPE_22__** %227, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %229 = call i32 @isreserved(%struct.TYPE_22__* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %214
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %234, 1
  %236 = load i32, i32* @FIRST_RESERVED, align 4
  %237 = add nsw i32 %235, %236
  store i32 %237, i32* %3, align 4
  br label %248

238:                                              ; preds = %214
  %239 = load i32, i32* @TK_NAME, align 4
  store i32 %239, i32* %3, align 4
  br label %248

240:                                              ; preds = %198
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %9, align 4
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %245 = call i32 @next(%struct.TYPE_24__* %244)
  %246 = load i32, i32* %9, align 4
  store i32 %246, i32* %3, align 4
  br label %248

247:                                              ; preds = %72, %48, %21, %18
  br label %14

248:                                              ; preds = %240, %238, %231, %196, %192, %188, %187, %179, %177, %159, %158, %156, %149, %147, %140, %138, %131, %129, %123, %116, %114, %108, %101, %99, %92, %78, %31
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @luaZ_resetbuffer(i32) #1

declare dso_local i32 @inclinenumber(%struct.TYPE_24__*) #1

declare dso_local i32 @next(%struct.TYPE_24__*) #1

declare dso_local i32 @skip_sep(%struct.TYPE_24__*) #1

declare dso_local i32 @read_long_string(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @currIsNewline(%struct.TYPE_24__*) #1

declare dso_local i32 @lexerror(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @check_next1(%struct.TYPE_24__*, i8 signext) #1

declare dso_local i32 @read_string(%struct.TYPE_24__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @save_and_next(%struct.TYPE_24__*) #1

declare dso_local i32 @lisdigit(i32) #1

declare dso_local i32 @read_numeral(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @lislalpha(i32) #1

declare dso_local i32 @lislalnum(i32) #1

declare dso_local %struct.TYPE_22__* @luaX_newstring(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @luaZ_buffer(i32) #1

declare dso_local i32 @luaZ_bufflen(i32) #1

declare dso_local i32 @isreserved(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
