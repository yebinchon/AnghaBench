; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseCharDataComplex.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseCharDataComplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i64, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)* }

@XML_PARSER_BIG_BUFFER_SIZE = common dso_local global i32 0, align 4
@SHRINK = common dso_local global i32 0, align 4
@GROW = common dso_local global i32 0, align 4
@XML_ERR_MISPLACED_CDATA_END = common dso_local global i32 0, align 4
@XML_PARSER_CONTENT = common dso_local global i64 0, align 8
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@XML_ERR_INVALID_CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PCDATA invalid Char value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @xmlParseCharDataComplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlParseCharDataComplex(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @XML_PARSER_BIG_BUFFER_SIZE, align 4
  %13 = add nsw i32 %12, 5
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @SHRINK, align 4
  %18 = load i32, i32* @GROW, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @CUR_CHAR(i32 %19)
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %162, %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 60
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 38
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @IS_CHAR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %24, %21
  %32 = phi i1 [ false, %24 ], [ false, %21 ], [ %30, %27 ]
  br i1 %32, label %33, label %167

33:                                               ; preds = %31
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 93
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = call signext i8 @NXT(i32 1)
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 93
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = call signext i8 @NXT(i32 2)
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 62
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %167

48:                                               ; preds = %44
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = load i32, i32* @XML_ERR_MISPLACED_CDATA_END, align 4
  %51 = call i32 @xmlFatalErr(%struct.TYPE_8__* %49, i32 %50, i32* null)
  br label %52

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %40, %36, %33
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @COPY_BUF(i32 %54, i64* %16, i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @XML_PARSER_BIG_BUFFER_SIZE, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %148

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %16, i64 %63
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %140

69:                                               ; preds = %61
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %140, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @areBlanks(%struct.TYPE_8__* %75, i64* %16, i32 %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %83, align 8
  %85 = icmp ne i32 (i32, i64*, i32)* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 %91(i32 %94, i64* %16, i32 %95)
  br label %97

97:                                               ; preds = %86, %79
  br label %139

98:                                               ; preds = %74
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %102, align 8
  %104 = icmp ne i32 (i32, i64*, i32)* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %109, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 %110(i32 %113, i64* %16, i32 %114)
  br label %116

116:                                              ; preds = %105, %98
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %125, align 8
  %127 = icmp ne i32 (i32, i64*, i32)* %121, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %116
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  store i32 -2, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %128, %116
  br label %139

139:                                              ; preds = %138, %97
  br label %140

140:                                              ; preds = %139, %69, %61
  store i32 0, i32* %7, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @XML_PARSER_CONTENT, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i32 1, i32* %11, align 4
  br label %265

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %53
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp sgt i32 %151, 50
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load i32, i32* @GROW, align 4
  store i32 0, i32* %10, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @XML_PARSER_EOF, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  store i32 1, i32* %11, align 4
  br label %265

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %148
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @NEXTL(i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @CUR_CHAR(i32 %165)
  store i32 %166, i32* %8, align 4
  br label %21

167:                                              ; preds = %47, %31
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %250

170:                                              ; preds = %167
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %16, i64 %172
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = icmp ne %struct.TYPE_7__* %176, null
  br i1 %177, label %178, label %249

178:                                              ; preds = %170
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %249, label %183

183:                                              ; preds = %178
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i64 @areBlanks(%struct.TYPE_8__* %184, i64* %16, i32 %185, i32 0)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %183
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %192, align 8
  %194 = icmp ne i32 (i32, i64*, i32)* %193, null
  br i1 %194, label %195, label %206

195:                                              ; preds = %188
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %199, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call i32 %200(i32 %203, i64* %16, i32 %204)
  br label %206

206:                                              ; preds = %195, %188
  br label %248

207:                                              ; preds = %183
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %211, align 8
  %213 = icmp ne i32 (i32, i64*, i32)* %212, null
  br i1 %213, label %214, label %225

214:                                              ; preds = %207
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %218, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = call i32 %219(i32 %222, i64* %16, i32 %223)
  br label %225

225:                                              ; preds = %214, %207
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  %230 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %229, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %234, align 8
  %236 = icmp ne i32 (i32, i64*, i32)* %230, %235
  br i1 %236, label %237, label %247

237:                                              ; preds = %225
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %247

243:                                              ; preds = %237
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  store i32 -2, i32* %246, align 4
  br label %247

247:                                              ; preds = %243, %237, %225
  br label %248

248:                                              ; preds = %247, %206
  br label %249

249:                                              ; preds = %248, %178, %170
  br label %250

250:                                              ; preds = %249, %167
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %264

253:                                              ; preds = %250
  %254 = load i32, i32* %8, align 4
  %255 = call i64 @IS_CHAR(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %253
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %259 = load i32, i32* @XML_ERR_INVALID_CHAR, align 4
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_8__* %258, i32 %259, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* %9, align 4
  %263 = call i32 @NEXTL(i32 %262)
  br label %264

264:                                              ; preds = %257, %253, %250
  store i32 0, i32* %11, align 4
  br label %265

265:                                              ; preds = %264, %160, %146
  %266 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %266)
  %267 = load i32, i32* %11, align 4
  switch i32 %267, label %269 [
    i32 0, label %268
    i32 1, label %268
  ]

268:                                              ; preds = %265, %265
  ret void

269:                                              ; preds = %265
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CUR_CHAR(i32) #2

declare dso_local i64 @IS_CHAR(i32) #2

declare dso_local signext i8 @NXT(i32) #2

declare dso_local i32 @xmlFatalErr(%struct.TYPE_8__*, i32, i32*) #2

declare dso_local i32 @COPY_BUF(i32, i64*, i32, i32) #2

declare dso_local i64 @areBlanks(%struct.TYPE_8__*, i64*, i32, i32) #2

declare dso_local i32 @NEXTL(i32) #2

declare dso_local i32 @xmlFatalErrMsgInt(%struct.TYPE_8__*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
