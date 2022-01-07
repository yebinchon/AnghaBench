; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_regexp.c_re_subcompile_string.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_regexp.c_re_subcompile_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*)*, i32, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"unmatched '('\00", align 1
@RE_OP_ANYSTAR = common dso_local global i32 0, align 4
@RE_OP_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"'*' without operand\00", align 1
@RE_OP_GOTO = common dso_local global i32 0, align 4
@RE_OP_FORK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"'+' without operand\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"'?' without operand\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"'{m,n}' without operand\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"unmatched '{'\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"n less than m in '{m,n}'\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"both m and n are zero in '{m,n}'\00", align 1
@RE_OP_CC_EXC = common dso_local global i32 0, align 4
@RE_OP_CC_INC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"POSIX character classes not supported\00", align 1
@RE_OP_CC_RANGE = common dso_local global i32 0, align 4
@RE_OP_CC_VALUE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"unclosed '['\00", align 1
@RE_OP_BOUNDARY = common dso_local global i32 0, align 4
@RE_OP_DIGIT = common dso_local global i32 0, align 4
@RE_OP_NOTDIGIT = common dso_local global i32 0, align 4
@RE_OP_SPACE = common dso_local global i32 0, align 4
@RE_OP_NOTSPACE = common dso_local global i32 0, align 4
@RE_OP_WORD = common dso_local global i32 0, align 4
@RE_OP_NOTWORD = common dso_local global i32 0, align 4
@RE_OP_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*)* @re_subcompile_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @re_subcompile_string(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 -1, i32* %4, align 4
  br label %14

14:                                               ; preds = %417, %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = call i32 %17(%struct.TYPE_13__* %19)
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %419

22:                                               ; preds = %14
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %412 [
    i32 124, label %27
    i32 36, label %27
    i32 41, label %27
    i32 40, label %33
    i32 46, label %52
    i32 42, label %71
    i32 43, label %95
    i32 63, label %108
    i32 123, label %123
    i32 91, label %265
    i32 92, label %374
  ]

27:                                               ; preds = %22, %22, %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  store i8* null, i8** %2, align 8
  br label %420

33:                                               ; preds = %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i8* @re_subcompile_re(%struct.TYPE_12__* %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %2, align 8
  br label %420

40:                                               ; preds = %33
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = call signext i8 @rePeek(%struct.TYPE_12__* %41)
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 41
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %420

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %417

52:                                               ; preds = %22
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = call signext i8 @rePeek(%struct.TYPE_12__* %53)
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 42
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = load i32, i32* @RE_OP_ANYSTAR, align 4
  %60 = call i32 @re_append(%struct.TYPE_12__* %58, i32 %59, i32 0)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %70

66:                                               ; preds = %52
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = load i32, i32* @RE_OP_ANY, align 4
  %69 = call i32 @re_append(%struct.TYPE_12__* %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %66, %57
  br label %417

71:                                               ; preds = %22
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %420

75:                                               ; preds = %71
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @RE_OP_GOTO, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sub nsw i32 %81, %82
  %84 = add nsw i32 %83, 1
  %85 = call i32 @re_insert(%struct.TYPE_12__* %76, i32 %77, i32 %78, i32 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = load i32, i32* @RE_OP_FORK, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %88, %91
  %93 = add nsw i32 %92, 1
  %94 = call i32 @re_append(%struct.TYPE_12__* %86, i32 %87, i32 %93)
  br label %417

95:                                               ; preds = %22
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %420

99:                                               ; preds = %95
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = load i32, i32* @RE_OP_FORK, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %102, %105
  %107 = call i32 @re_append(%struct.TYPE_12__* %100, i32 %101, i32 %106)
  br label %417

108:                                              ; preds = %22
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %420

112:                                              ; preds = %108
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @RE_OP_FORK, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sub nsw i32 %118, %119
  %121 = add nsw i32 %120, 1
  %122 = call i32 @re_insert(%struct.TYPE_12__* %113, i32 %114, i32 %115, i32 %121)
  br label %417

123:                                              ; preds = %22
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %420

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %138, %127
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = call signext i8 @rePeek(%struct.TYPE_12__* %129)
  %131 = sext i8 %130 to i32
  store i32 %131, i32* %6, align 4
  %132 = icmp uge i32 %131, 48
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* %6, align 4
  %135 = icmp ule i32 %134, 57
  br label %136

136:                                              ; preds = %133, %128
  %137 = phi i1 [ false, %128 ], [ %135, %133 ]
  br i1 %137, label %138, label %149

138:                                              ; preds = %136
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 %139, 10
  %141 = load i32, i32* %6, align 4
  %142 = add i32 %140, %141
  %143 = sub i32 %142, 48
  store i32 %143, i32* %8, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  br label %128

149:                                              ; preds = %136
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp eq i32 %151, 44
  br i1 %152, label %153, label %181

153:                                              ; preds = %149
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %169, %153
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %161 = call signext i8 @rePeek(%struct.TYPE_12__* %160)
  %162 = sext i8 %161 to i32
  store i32 %162, i32* %6, align 4
  %163 = icmp uge i32 %162, 48
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %6, align 4
  %166 = icmp ule i32 %165, 57
  br label %167

167:                                              ; preds = %164, %159
  %168 = phi i1 [ false, %159 ], [ %166, %164 ]
  br i1 %168, label %169, label %180

169:                                              ; preds = %167
  %170 = load i32, i32* %9, align 4
  %171 = mul nsw i32 %170, 10
  %172 = load i32, i32* %6, align 4
  %173 = add i32 %171, %172
  %174 = sub i32 %173, 48
  store i32 %174, i32* %9, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  br label %159

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %180, %149
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 125
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %420

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %420

193:                                              ; preds = %188, %185
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %4, align 4
  %203 = sub nsw i32 %201, %202
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %193
  %207 = load i32, i32* %9, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %420

210:                                              ; preds = %206
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* @RE_OP_FORK, align 4
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  %216 = call i32 @re_insert(%struct.TYPE_12__* %211, i32 %212, i32 %213, i32 %215)
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %9, align 4
  br label %233

219:                                              ; preds = %193
  store i32 1, i32* %11, align 4
  br label %220

220:                                              ; preds = %229, %219
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %220
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @re_copy(%struct.TYPE_12__* %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %224
  %230 = load i32, i32* %11, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %11, align 4
  br label %220

232:                                              ; preds = %220
  br label %233

233:                                              ; preds = %232, %210
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %11, align 4
  br label %235

235:                                              ; preds = %249, %233
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %252

239:                                              ; preds = %235
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %241 = load i32, i32* @RE_OP_FORK, align 4
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, 1
  %244 = call i32 @re_append(%struct.TYPE_12__* %240, i32 %241, i32 %243)
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @re_copy(%struct.TYPE_12__* %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %239
  %250 = load i32, i32* %11, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %11, align 4
  br label %235

252:                                              ; preds = %235
  %253 = load i32, i32* %9, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %252
  %256 = load i32, i32* %8, align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %255
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %260 = load i32, i32* @RE_OP_FORK, align 4
  %261 = load i32, i32* %10, align 4
  %262 = sub nsw i32 0, %261
  %263 = call i32 @re_append(%struct.TYPE_12__* %259, i32 %260, i32 %262)
  br label %264

264:                                              ; preds = %258, %255, %252
  br label %417

265:                                              ; preds = %22
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  store i32 %268, i32* %12, align 4
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %270 = call signext i8 @rePeek(%struct.TYPE_12__* %269)
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 94
  br i1 %272, label %273, label %282

273:                                              ; preds = %265
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %275 = load i32, i32* @RE_OP_CC_EXC, align 4
  %276 = call i32 @re_append(%struct.TYPE_12__* %274, i32 %275, i32 0)
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 8
  br label %286

282:                                              ; preds = %265
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %284 = load i32, i32* @RE_OP_CC_INC, align 4
  %285 = call i32 @re_append(%struct.TYPE_12__* %283, i32 %284, i32 0)
  br label %286

286:                                              ; preds = %282, %273
  br label %287

287:                                              ; preds = %357, %286
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %289, align 8
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 3
  %293 = call i32 %290(%struct.TYPE_13__* %292)
  store i32 %293, i32* %6, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %358

295:                                              ; preds = %287
  %296 = load i32, i32* %6, align 4
  %297 = icmp eq i32 %296, 91
  br i1 %297, label %298, label %304

298:                                              ; preds = %295
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %300 = call signext i8 @rePeek(%struct.TYPE_12__* %299)
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %301, 58
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %420

304:                                              ; preds = %298, %295
  %305 = load i32, i32* %6, align 4
  %306 = icmp eq i32 %305, 92
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %309 = call i32 @re_esc_char(%struct.TYPE_12__* %308)
  store i32 %309, i32* %6, align 4
  br label %310

310:                                              ; preds = %307, %304
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %312 = call signext i8 @rePeek(%struct.TYPE_12__* %311)
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 45
  br i1 %314, label %315, label %341

315:                                              ; preds = %310
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %317 = load i32, i32* @RE_OP_CC_RANGE, align 4
  %318 = load i32, i32* %6, align 4
  %319 = call i32 @re_append(%struct.TYPE_12__* %316, i32 %317, i32 %318)
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 8
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 0
  %327 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %326, align 8
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 3
  %330 = call i32 %327(%struct.TYPE_13__* %329)
  store i32 %330, i32* %6, align 4
  %331 = load i32, i32* %6, align 4
  %332 = icmp eq i32 %331, 92
  br i1 %332, label %333, label %336

333:                                              ; preds = %315
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %335 = call i32 @re_esc_char(%struct.TYPE_12__* %334)
  store i32 %335, i32* %6, align 4
  br label %336

336:                                              ; preds = %333, %315
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %338 = load i32, i32* @RE_OP_CC_RANGE, align 4
  %339 = load i32, i32* %6, align 4
  %340 = call i32 @re_append(%struct.TYPE_12__* %337, i32 %338, i32 %339)
  br label %346

341:                                              ; preds = %310
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %343 = load i32, i32* @RE_OP_CC_VALUE, align 4
  %344 = load i32, i32* %6, align 4
  %345 = call i32 @re_append(%struct.TYPE_12__* %342, i32 %343, i32 %344)
  br label %346

346:                                              ; preds = %341, %336
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %348 = call signext i8 @rePeek(%struct.TYPE_12__* %347)
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %349, 93
  br i1 %350, label %351, label %357

351:                                              ; preds = %346
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 3
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %354, align 8
  br label %358

357:                                              ; preds = %346
  br label %287

358:                                              ; preds = %351, %287
  %359 = load i32, i32* %6, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %358
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %420

362:                                              ; preds = %358
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* %12, align 4
  %367 = sub nsw i32 %365, %366
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 2
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %12, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  store i32 %367, i32* %373, align 4
  br label %417

374:                                              ; preds = %22
  store i32 0, i32* %13, align 4
  %375 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %376 = call signext i8 @rePeek(%struct.TYPE_12__* %375)
  %377 = sext i8 %376 to i32
  switch i32 %377, label %392 [
    i32 98, label %378
    i32 100, label %380
    i32 68, label %382
    i32 115, label %384
    i32 83, label %386
    i32 119, label %388
    i32 87, label %390
  ]

378:                                              ; preds = %374
  %379 = load i32, i32* @RE_OP_BOUNDARY, align 4
  store i32 %379, i32* %13, align 4
  br label %392

380:                                              ; preds = %374
  %381 = load i32, i32* @RE_OP_DIGIT, align 4
  store i32 %381, i32* %13, align 4
  br label %392

382:                                              ; preds = %374
  %383 = load i32, i32* @RE_OP_NOTDIGIT, align 4
  store i32 %383, i32* %13, align 4
  br label %392

384:                                              ; preds = %374
  %385 = load i32, i32* @RE_OP_SPACE, align 4
  store i32 %385, i32* %13, align 4
  br label %392

386:                                              ; preds = %374
  %387 = load i32, i32* @RE_OP_NOTSPACE, align 4
  store i32 %387, i32* %13, align 4
  br label %392

388:                                              ; preds = %374
  %389 = load i32, i32* @RE_OP_WORD, align 4
  store i32 %389, i32* %13, align 4
  br label %392

390:                                              ; preds = %374
  %391 = load i32, i32* @RE_OP_NOTWORD, align 4
  store i32 %391, i32* %13, align 4
  br label %392

392:                                              ; preds = %374, %390, %388, %386, %384, %382, %380, %378
  %393 = load i32, i32* %13, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %392
  %396 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %398, align 8
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %402 = load i32, i32* %13, align 4
  %403 = call i32 @re_append(%struct.TYPE_12__* %401, i32 %402, i32 0)
  br label %411

404:                                              ; preds = %392
  %405 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %406 = call i32 @re_esc_char(%struct.TYPE_12__* %405)
  store i32 %406, i32* %6, align 4
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %408 = load i32, i32* @RE_OP_MATCH, align 4
  %409 = load i32, i32* %6, align 4
  %410 = call i32 @re_append(%struct.TYPE_12__* %407, i32 %408, i32 %409)
  br label %411

411:                                              ; preds = %404, %395
  br label %417

412:                                              ; preds = %22
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %414 = load i32, i32* @RE_OP_MATCH, align 4
  %415 = load i32, i32* %6, align 4
  %416 = call i32 @re_append(%struct.TYPE_12__* %413, i32 %414, i32 %415)
  br label %417

417:                                              ; preds = %412, %411, %362, %264, %112, %99, %75, %70, %46
  %418 = load i32, i32* %5, align 4
  store i32 %418, i32* %4, align 4
  br label %14

419:                                              ; preds = %14
  store i8* null, i8** %2, align 8
  br label %420

420:                                              ; preds = %419, %361, %303, %209, %192, %184, %126, %111, %98, %74, %45, %38, %27
  %421 = load i8*, i8** %2, align 8
  ret i8* %421
}

declare dso_local i8* @re_subcompile_re(%struct.TYPE_12__*) #1

declare dso_local signext i8 @rePeek(%struct.TYPE_12__*) #1

declare dso_local i32 @re_append(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @re_insert(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @re_copy(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @re_esc_char(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
