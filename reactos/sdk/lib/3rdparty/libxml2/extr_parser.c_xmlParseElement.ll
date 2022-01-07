; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseElement.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i64, i32*, i64, i64, %struct.TYPE_24__*, i64, i64, i32, %struct.TYPE_23__*, i32, %struct.TYPE_27__*, i32, i32, i64, i64, i64 }
%struct.TYPE_24__ = type { i8*, i8*, i32 }
%struct.TYPE_23__ = type { i32 (i32, i32*)*, i32 (i32, i32*, i32*, i32*)* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i32*, i8*, i8* }

@xmlParserMaxDepth = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Excessive depth in document: %d use XML_PARSE_HUGE option\0A\00", align 1
@CUR_PTR = common dso_local global i8* null, align 8
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@RAW = common dso_local global i8 0, align 1
@NEXT1 = common dso_local global i32 0, align 4
@XML_ERR_GT_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Couldn't find end of Start Tag %s line %d\0A\00", align 1
@XML_ERR_TAG_NOT_FINISHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Premature end of data in tag %s line %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseElement(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 17
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @xmlParserMaxDepth, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @XML_PARSE_HUGE, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %29 = load i32, i32* @XML_ERR_INTERNAL_ERROR, align 4
  %30 = load i32, i32* @xmlParserMaxDepth, align 4
  %31 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_26__* %28, i32 %29, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %33 = call i32 @xmlHaltParser(%struct.TYPE_26__* %32)
  br label %373

34:                                               ; preds = %20, %1
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @CUR_PTR, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %45 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = getelementptr i8, i8* %44, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 4
  store i8* %54, i8** %55, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  br label %62

62:                                               ; preds = %39, %34
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %69 = call i32 @spacePush(%struct.TYPE_26__* %68, i32 -1)
  br label %87

70:                                               ; preds = %62
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, -2
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %78 = call i32 @spacePush(%struct.TYPE_26__* %77, i32 -1)
  br label %86

79:                                               ; preds = %70
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @spacePush(%struct.TYPE_26__* %80, i32 %84)
  br label %86

86:                                               ; preds = %79, %76
  br label %87

87:                                               ; preds = %86, %67
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %7, align 4
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %94 = call i32* @xmlParseStartTag2(%struct.TYPE_26__* %93, i32** %4, i32** %5, i32* %8)
  store i32* %94, i32** %3, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @XML_PARSER_EOF, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %373

101:                                              ; preds = %87
  %102 = load i32*, i32** %3, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %106 = call i32 @spacePop(%struct.TYPE_26__* %105)
  br label %373

107:                                              ; preds = %101
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @namePush(%struct.TYPE_26__* %108, i32* %109)
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %9, align 8
  %115 = load i8, i8* @RAW, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 47
  br i1 %117, label %118, label %213

118:                                              ; preds = %107
  %119 = call signext i8 @NXT(i32 1)
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 62
  br i1 %121, label %122, label %213

122:                                              ; preds = %118
  %123 = call i32 @SKIP(i32 2)
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %159

128:                                              ; preds = %122
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 10
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = icmp ne %struct.TYPE_23__* %131, null
  br i1 %132, label %133, label %158

133:                                              ; preds = %128
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 10
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  %138 = load i32 (i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32*, i32*)** %137, align 8
  %139 = icmp ne i32 (i32, i32*, i32*, i32*)* %138, null
  br i1 %139, label %140, label %158

140:                                              ; preds = %133
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %158, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 10
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = load i32 (i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32*, i32*)** %149, align 8
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 9
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %3, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 %150(i32 %153, i32* %154, i32* %155, i32* %156)
  br label %158

158:                                              ; preds = %145, %140, %133, %128
  br label %159

159:                                              ; preds = %158, %122
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %161 = call i32 @namePop(%struct.TYPE_26__* %160)
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %163 = call i32 @spacePop(%struct.TYPE_26__* %162)
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %164, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %159
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sub nsw i32 %173, %174
  %176 = call i32 @nsPop(%struct.TYPE_26__* %170, i32 %175)
  br label %177

177:                                              ; preds = %169, %159
  %178 = load i32*, i32** %9, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %212

180:                                              ; preds = %177
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 7
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %212

185:                                              ; preds = %180
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load i8*, i8** @CUR_PTR, align 8
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 6
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = ptrtoint i8* %191 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  %200 = getelementptr i8, i8* %190, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 3
  store i8* %200, i8** %201, align 8
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 6
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  store i32 %206, i32* %207, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 2
  store i32* %208, i32** %209, align 8
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %211 = call i32 @xmlParserAddNodeInfo(%struct.TYPE_26__* %210, %struct.TYPE_25__* %6)
  br label %212

212:                                              ; preds = %185, %180, %177
  br label %373

213:                                              ; preds = %118, %107
  %214 = load i8, i8* @RAW, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 62
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load i32, i32* @NEXT1, align 4
  br label %280

219:                                              ; preds = %213
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %221 = load i32, i32* @XML_ERR_GT_REQUIRED, align 4
  %222 = load i32*, i32** %3, align 8
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @xmlFatalErrMsgStrIntStr(%struct.TYPE_26__* %220, i32 %221, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %222, i32 %223, i32* null)
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %226 = call i32 @nodePop(%struct.TYPE_26__* %225)
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %228 = call i32 @namePop(%struct.TYPE_26__* %227)
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %230 = call i32 @spacePop(%struct.TYPE_26__* %229)
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %231, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %219
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sub nsw i32 %240, %241
  %243 = call i32 @nsPop(%struct.TYPE_26__* %237, i32 %242)
  br label %244

244:                                              ; preds = %236, %219
  %245 = load i32*, i32** %9, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %279

247:                                              ; preds = %244
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 7
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %279

252:                                              ; preds = %247
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 6
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** @CUR_PTR, align 8
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 6
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = ptrtoint i8* %258 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = getelementptr i8, i8* %257, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 3
  store i8* %267, i8** %268, align 8
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 6
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  store i32 %273, i32* %274, align 4
  %275 = load i32*, i32** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 2
  store i32* %275, i32** %276, align 8
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %278 = call i32 @xmlParserAddNodeInfo(%struct.TYPE_26__* %277, %struct.TYPE_25__* %6)
  br label %279

279:                                              ; preds = %252, %247, %244
  br label %373

280:                                              ; preds = %217
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %282 = call i32 @xmlParseContent(%struct.TYPE_26__* %281)
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @XML_PARSER_EOF, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %280
  br label %373

289:                                              ; preds = %280
  %290 = load i8, i8* @RAW, align 1
  %291 = call i32 @IS_BYTE_CHAR(i8 signext %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %319, label %293

293:                                              ; preds = %289
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %295 = load i32, i32* @XML_ERR_TAG_NOT_FINISHED, align 4
  %296 = load i32*, i32** %3, align 8
  %297 = load i32, i32* %7, align 4
  %298 = call i32 @xmlFatalErrMsgStrIntStr(%struct.TYPE_26__* %294, i32 %295, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %296, i32 %297, i32* null)
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %300 = call i32 @nodePop(%struct.TYPE_26__* %299)
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %302 = call i32 @namePop(%struct.TYPE_26__* %301)
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %304 = call i32 @spacePop(%struct.TYPE_26__* %303)
  %305 = load i32, i32* %10, align 4
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %305, %308
  br i1 %309, label %310, label %318

310:                                              ; preds = %293
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sub nsw i32 %314, %315
  %317 = call i32 @nsPop(%struct.TYPE_26__* %311, i32 %316)
  br label %318

318:                                              ; preds = %310, %293
  br label %373

319:                                              ; preds = %289
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 8
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %338

324:                                              ; preds = %319
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %326 = load i32*, i32** %4, align 8
  %327 = load i32*, i32** %5, align 8
  %328 = load i32, i32* %7, align 4
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* %10, align 4
  %333 = sub nsw i32 %331, %332
  %334 = load i32, i32* %8, align 4
  %335 = call i32 @xmlParseEndTag2(%struct.TYPE_26__* %325, i32* %326, i32* %327, i32 %328, i32 %333, i32 %334)
  %336 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %337 = call i32 @namePop(%struct.TYPE_26__* %336)
  br label %338

338:                                              ; preds = %324, %319
  %339 = load i32*, i32** %9, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %341, label %373

341:                                              ; preds = %338
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 7
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %373

346:                                              ; preds = %341
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 6
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = load i8*, i8** @CUR_PTR, align 8
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %353, i32 0, i32 6
  %355 = load %struct.TYPE_24__*, %struct.TYPE_24__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 1
  %357 = load i8*, i8** %356, align 8
  %358 = ptrtoint i8* %352 to i64
  %359 = ptrtoint i8* %357 to i64
  %360 = sub i64 %358, %359
  %361 = getelementptr i8, i8* %351, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 3
  store i8* %361, i8** %362, align 8
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %364 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %363, i32 0, i32 6
  %365 = load %struct.TYPE_24__*, %struct.TYPE_24__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  store i32 %367, i32* %368, align 4
  %369 = load i32*, i32** %9, align 8
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 2
  store i32* %369, i32** %370, align 8
  %371 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %372 = call i32 @xmlParserAddNodeInfo(%struct.TYPE_26__* %371, %struct.TYPE_25__* %6)
  br label %373

373:                                              ; preds = %27, %100, %104, %212, %279, %288, %318, %346, %341, %338
  ret void
}

declare dso_local i32 @xmlFatalErrMsgInt(%struct.TYPE_26__*, i32, i8*, i32) #1

declare dso_local i32 @xmlHaltParser(%struct.TYPE_26__*) #1

declare dso_local i32 @spacePush(%struct.TYPE_26__*, i32) #1

declare dso_local i32* @xmlParseStartTag2(%struct.TYPE_26__*, i32**, i32**, i32*) #1

declare dso_local i32 @spacePop(%struct.TYPE_26__*) #1

declare dso_local i32 @namePush(%struct.TYPE_26__*, i32*) #1

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @namePop(%struct.TYPE_26__*) #1

declare dso_local i32 @nsPop(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @xmlParserAddNodeInfo(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @xmlFatalErrMsgStrIntStr(%struct.TYPE_26__*, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @nodePop(%struct.TYPE_26__*) #1

declare dso_local i32 @xmlParseContent(%struct.TYPE_26__*) #1

declare dso_local i32 @IS_BYTE_CHAR(i8 signext) #1

declare dso_local i32 @xmlParseEndTag2(%struct.TYPE_26__*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
