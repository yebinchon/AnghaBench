; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParsePI.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParsePI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 (i32, i64*, i64*)* }
%struct.TYPE_11__ = type { i32 }

@XML_PARSER_BUFFER_SIZE = common dso_local global i64 0, align 8
@RAW = common dso_local global i8 0, align 1
@XML_PARSER_PI = common dso_local global i64 0, align 8
@SHRINK = common dso_local global i32 0, align 4
@XML_ERR_ENTITY_BOUNDARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"PI declaration doesn't start and stop in the same entity\0A\00", align 1
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@SKIP_BLANKS = common dso_local global i64 0, align 8
@XML_ERR_SPACE_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ParsePI: PI %s space expected\0A\00", align 1
@GROW = common dso_local global i32 0, align 4
@XML_MAX_TEXT_LENGTH = common dso_local global i64 0, align 8
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_PI_NOT_FINISHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"PI %s too big found\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"ParsePI: PI %s never end ...\0A\00", align 1
@XML_ERR_PI_NOT_STARTED = common dso_local global i32 0, align 4
@XML_CATALOG_PI = common dso_local global i32 0, align 4
@XML_CATA_ALLOW_ALL = common dso_local global i64 0, align 8
@XML_CATA_ALLOW_DOCUMENT = common dso_local global i64 0, align 8
@XML_PARSER_MISC = common dso_local global i64 0, align 8
@XML_PARSER_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParsePI(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i64* null, i64** %3, align 8
  store i64 0, i64* %4, align 8
  %14 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8, i8* @RAW, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 60
  br i1 %17, label %18, label %312

18:                                               ; preds = %1
  %19 = call signext i8 @NXT(i32 1)
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 63
  br i1 %21, label %22, label %312

22:                                               ; preds = %18
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* @XML_PARSER_PI, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = call i32 @SKIP(i32 2)
  %35 = load i32, i32* @SHRINK, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = call i64* @xmlParsePITarget(%struct.TYPE_13__* %36)
  store i64* %37, i64** %8, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %297

40:                                               ; preds = %22
  %41 = load i8, i8* @RAW, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 63
  br i1 %43, label %44, label %100

44:                                               ; preds = %40
  %45 = call signext i8 @NXT(i32 1)
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 62
  br i1 %47, label %48, label %100

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %49, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %59 = call i32 @xmlFatalErrMsg(%struct.TYPE_13__* %57, i32 %58, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %48
  %61 = call i32 @SKIP(i32 2)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = icmp ne %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %89

66:                                               ; preds = %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32 (i32, i64*, i64*)*, i32 (i32, i64*, i64*)** %75, align 8
  %77 = icmp ne i32 (i32, i64*, i64*)* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32 (i32, i64*, i64*)*, i32 (i32, i64*, i64*)** %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i64*, i64** %8, align 8
  %88 = call i32 %83(i32 %86, i64* %87, i64* null)
  br label %89

89:                                               ; preds = %78, %71, %66, %60
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @XML_PARSER_EOF, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %89
  br label %312

100:                                              ; preds = %44, %40
  %101 = load i64, i64* %5, align 8
  %102 = mul i64 %101, 8
  %103 = call i64 @xmlMallocAtomic(i64 %102)
  %104 = inttoptr i64 %103 to i64*
  store i64* %104, i64** %3, align 8
  %105 = load i64*, i64** %3, align 8
  %106 = icmp eq i64* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %109 = call i32 @xmlErrMemory(%struct.TYPE_13__* %108, i32* null)
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %312

113:                                              ; preds = %100
  %114 = load i64, i64* @SKIP_BLANKS, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %118 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %119 = load i64*, i64** %8, align 8
  %120 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_13__* %117, i32 %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64* %119)
  br label %121

121:                                              ; preds = %116, %113
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @CUR_CHAR(i32 %122)
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %218, %121
  %125 = load i32, i32* %6, align 4
  %126 = call i64 @IS_CHAR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 63
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = call signext i8 @NXT(i32 1)
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 62
  br label %135

135:                                              ; preds = %131, %128
  %136 = phi i1 [ true, %128 ], [ %134, %131 ]
  br label %137

137:                                              ; preds = %135, %124
  %138 = phi i1 [ false, %124 ], [ %136, %135 ]
  br i1 %138, label %139, label %219

139:                                              ; preds = %137
  %140 = load i64, i64* %4, align 8
  %141 = add i64 %140, 5
  %142 = load i64, i64* %5, align 8
  %143 = icmp uge i64 %141, %142
  br i1 %143, label %144, label %164

144:                                              ; preds = %139
  %145 = load i64, i64* %5, align 8
  %146 = mul i64 %145, 2
  store i64 %146, i64* %13, align 8
  %147 = load i64*, i64** %3, align 8
  %148 = load i64, i64* %13, align 8
  %149 = call i64 @xmlRealloc(i64* %147, i64 %148)
  %150 = inttoptr i64 %149 to i64*
  store i64* %150, i64** %12, align 8
  %151 = load i64*, i64** %12, align 8
  %152 = icmp eq i64* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %144
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %155 = call i32 @xmlErrMemory(%struct.TYPE_13__* %154, i32* null)
  %156 = load i64*, i64** %3, align 8
  %157 = call i32 @xmlFree(i64* %156)
  %158 = load i64, i64* %9, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  br label %312

161:                                              ; preds = %144
  %162 = load i64*, i64** %12, align 8
  store i64* %162, i64** %3, align 8
  %163 = load i64, i64* %13, align 8
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %161, %139
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp sgt i32 %167, 50
  br i1 %168, label %169, label %201

169:                                              ; preds = %164
  %170 = load i32, i32* @GROW, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @XML_PARSER_EOF, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load i64*, i64** %3, align 8
  %178 = call i32 @xmlFree(i64* %177)
  br label %312

179:                                              ; preds = %169
  store i32 0, i32* %10, align 4
  %180 = load i64, i64* %4, align 8
  %181 = load i64, i64* @XML_MAX_TEXT_LENGTH, align 8
  %182 = icmp ugt i64 %180, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @XML_PARSE_HUGE, align 4
  %188 = and i32 %186, %187
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %183
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %192 = load i32, i32* @XML_ERR_PI_NOT_FINISHED, align 4
  %193 = load i64*, i64** %8, align 8
  %194 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_13__* %191, i32 %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64* %193)
  %195 = load i64*, i64** %3, align 8
  %196 = call i32 @xmlFree(i64* %195)
  %197 = load i64, i64* %9, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  br label %312

200:                                              ; preds = %183, %179
  br label %201

201:                                              ; preds = %200, %164
  %202 = load i32, i32* %7, align 4
  %203 = load i64*, i64** %3, align 8
  %204 = load i64, i64* %4, align 8
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @COPY_BUF(i32 %202, i64* %203, i64 %204, i32 %205)
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @NEXTL(i32 %207)
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @CUR_CHAR(i32 %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %201
  %214 = load i32, i32* @SHRINK, align 4
  %215 = load i32, i32* @GROW, align 4
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @CUR_CHAR(i32 %216)
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %213, %201
  br label %124

219:                                              ; preds = %137
  %220 = load i64, i64* %4, align 8
  %221 = load i64, i64* @XML_MAX_TEXT_LENGTH, align 8
  %222 = icmp ugt i64 %220, %221
  br i1 %222, label %223, label %240

223:                                              ; preds = %219
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @XML_PARSE_HUGE, align 4
  %228 = and i32 %226, %227
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %223
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %232 = load i32, i32* @XML_ERR_PI_NOT_FINISHED, align 4
  %233 = load i64*, i64** %8, align 8
  %234 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_13__* %231, i32 %232, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64* %233)
  %235 = load i64*, i64** %3, align 8
  %236 = call i32 @xmlFree(i64* %235)
  %237 = load i64, i64* %9, align 8
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  store i64 %237, i64* %239, align 8
  br label %312

240:                                              ; preds = %223, %219
  %241 = load i64*, i64** %3, align 8
  %242 = load i64, i64* %4, align 8
  %243 = getelementptr inbounds i64, i64* %241, i64 %242
  store i64 0, i64* %243, align 8
  %244 = load i32, i32* %6, align 4
  %245 = icmp ne i32 %244, 63
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %248 = load i32, i32* @XML_ERR_PI_NOT_FINISHED, align 4
  %249 = load i64*, i64** %8, align 8
  %250 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_13__* %247, i32 %248, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64* %249)
  br label %294

251:                                              ; preds = %240
  %252 = load i32, i32* %11, align 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 5
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %252, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %251
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %261 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %262 = call i32 @xmlFatalErrMsg(%struct.TYPE_13__* %260, i32 %261, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %263

263:                                              ; preds = %259, %251
  %264 = call i32 @SKIP(i32 2)
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %266, align 8
  %268 = icmp ne %struct.TYPE_12__* %267, null
  br i1 %268, label %269, label %293

269:                                              ; preds = %263
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %293, label %274

274:                                              ; preds = %269
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 3
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = load i32 (i32, i64*, i64*)*, i32 (i32, i64*, i64*)** %278, align 8
  %280 = icmp ne i32 (i32, i64*, i64*)* %279, null
  br i1 %280, label %281, label %293

281:                                              ; preds = %274
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load i32 (i32, i64*, i64*)*, i32 (i32, i64*, i64*)** %285, align 8
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load i64*, i64** %8, align 8
  %291 = load i64*, i64** %3, align 8
  %292 = call i32 %286(i32 %289, i64* %290, i64* %291)
  br label %293

293:                                              ; preds = %281, %274, %269, %263
  br label %294

294:                                              ; preds = %293, %246
  %295 = load i64*, i64** %3, align 8
  %296 = call i32 @xmlFree(i64* %295)
  br label %301

297:                                              ; preds = %22
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %299 = load i32, i32* @XML_ERR_PI_NOT_STARTED, align 4
  %300 = call i32 @xmlFatalErr(%struct.TYPE_13__* %298, i32 %299, i32* null)
  br label %301

301:                                              ; preds = %297, %294
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @XML_PARSER_EOF, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %301
  %308 = load i64, i64* %9, align 8
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 0
  store i64 %308, i64* %310, align 8
  br label %311

311:                                              ; preds = %307, %301
  br label %312

312:                                              ; preds = %99, %107, %153, %176, %190, %230, %311, %18, %1
  ret void
}

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i64* @xmlParsePITarget(%struct.TYPE_13__*) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i64 @xmlMallocAtomic(i64) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @xmlFatalErrMsgStr(%struct.TYPE_13__*, i32, i8*, i64*) #1

declare dso_local i32 @CUR_CHAR(i32) #1

declare dso_local i64 @IS_CHAR(i32) #1

declare dso_local i64 @xmlRealloc(i64*, i64) #1

declare dso_local i32 @xmlFree(i64*) #1

declare dso_local i32 @COPY_BUF(i32, i64*, i64, i32) #1

declare dso_local i32 @NEXTL(i32) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_13__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
