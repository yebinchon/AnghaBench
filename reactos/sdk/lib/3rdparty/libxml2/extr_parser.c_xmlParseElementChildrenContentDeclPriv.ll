; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseElementChildrenContentDeclPriv.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseElementChildrenContentDeclPriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }

@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_ELEMCONTENT_NOT_FINISHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"xmlParseElementChildrenContentDecl : depth %d too deep, use XML_PARSE_HUGE\0A\00", align 1
@SKIP_BLANKS = common dso_local global i32 0, align 4
@GROW = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@NEXT = common dso_local global i32 0, align 4
@XML_ERR_ELEMCONTENT_NOT_STARTED = common dso_local global i32 0, align 4
@XML_ELEMENT_CONTENT_ELEMENT = common dso_local global i64 0, align 8
@XML_ELEMENT_CONTENT_OPT = common dso_local global i64 0, align 8
@XML_ELEMENT_CONTENT_MULT = common dso_local global i64 0, align 8
@XML_ELEMENT_CONTENT_PLUS = common dso_local global i64 0, align 8
@XML_ELEMENT_CONTENT_ONCE = common dso_local global i8* null, align 8
@SHRINK = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@CUR = common dso_local global i32 0, align 4
@XML_ERR_SEPARATOR_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"xmlParseElementChildrenContentDecl : '%c' expected\0A\00", align 1
@XML_ELEMENT_CONTENT_SEQ = common dso_local global i64 0, align 8
@XML_ELEMENT_CONTENT_OR = common dso_local global i64 0, align 8
@XML_ERR_ENTITY_BOUNDARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"Element content declaration doesn't start and stop in the same entity\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__*, i32, i32)* @xmlParseElementChildrenContentDeclPriv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @xmlParseElementChildrenContentDeclPriv(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 128
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @XML_PARSE_HUGE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 2048
  br i1 %28, label %29, label %34

29:                                               ; preds = %26, %19
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = load i32, i32* @XML_ERR_ELEMCONTENT_NOT_FINISHED, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_14__* %30, i32 %31, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %32)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %728

34:                                               ; preds = %26
  %35 = load i32, i32* @SKIP_BLANKS, align 4
  %36 = load i32, i32* @GROW, align 4
  %37 = load i8, i8* @RAW, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 40
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @NEXT, align 4
  %47 = load i32, i32* @SKIP_BLANKS, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  %52 = call %struct.TYPE_15__* @xmlParseElementChildrenContentDeclPriv(%struct.TYPE_14__* %48, i32 %49, i32 %51)
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %9, align 8
  %53 = load i32, i32* @SKIP_BLANKS, align 4
  %54 = load i32, i32* @GROW, align 4
  br label %113

55:                                               ; preds = %34
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = call i32* @xmlParseName(%struct.TYPE_14__* %56)
  store i32* %57, i32** %12, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = load i32, i32* @XML_ERR_ELEMCONTENT_NOT_STARTED, align 4
  %63 = call i32 @xmlFatalErr(%struct.TYPE_14__* %61, i32 %62, i32* null)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %728

64:                                               ; preds = %55
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i64, i64* @XML_ELEMENT_CONTENT_ELEMENT, align 8
  %70 = call %struct.TYPE_15__* @xmlNewDocElementContent(i32 %67, i32* %68, i64 %69)
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %9, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = icmp eq %struct.TYPE_15__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = call i32 @xmlErrMemory(%struct.TYPE_14__* %74, i32* null)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %728

76:                                               ; preds = %64
  %77 = load i32, i32* @GROW, align 4
  %78 = load i8, i8* @RAW, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 63
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i64, i64* @XML_ELEMENT_CONTENT_OPT, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* @NEXT, align 4
  br label %111

86:                                               ; preds = %76
  %87 = load i8, i8* @RAW, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 42
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @NEXT, align 4
  br label %110

95:                                               ; preds = %86
  %96 = load i8, i8* @RAW, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 43
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i64, i64* @XML_ELEMENT_CONTENT_PLUS, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* @NEXT, align 4
  br label %109

104:                                              ; preds = %95
  %105 = load i8*, i8** @XML_ELEMENT_CONTENT_ONCE, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %81
  %112 = load i32, i32* @GROW, align 4
  br label %113

113:                                              ; preds = %111, %40
  %114 = load i32, i32* @SKIP_BLANKS, align 4
  %115 = load i32, i32* @SHRINK, align 4
  br label %116

116:                                              ; preds = %466, %113
  %117 = load i8, i8* @RAW, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 41
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @XML_PARSER_EOF, align 8
  %125 = icmp ne i64 %123, %124
  br label %126

126:                                              ; preds = %120, %116
  %127 = phi i1 [ false, %116 ], [ %125, %120 ]
  br i1 %127, label %128, label %469

128:                                              ; preds = %126
  %129 = load i8, i8* @RAW, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 44
  br i1 %131, label %132, label %235

132:                                              ; preds = %128
  %133 = load i32, i32* %13, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @CUR, align 4
  store i32 %136, i32* %13, align 4
  br label %169

137:                                              ; preds = %132
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @CUR, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = load i32, i32* @XML_ERR_SEPARATOR_REQUIRED, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_14__* %142, i32 %143, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %147 = icmp ne %struct.TYPE_15__* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %141
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %151 = icmp ne %struct.TYPE_15__* %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %157 = call i32 @xmlFreeDocElementContent(i32 %155, %struct.TYPE_15__* %156)
  br label %158

158:                                              ; preds = %152, %148, %141
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %160 = icmp ne %struct.TYPE_15__* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %166 = call i32 @xmlFreeDocElementContent(i32 %164, %struct.TYPE_15__* %165)
  br label %167

167:                                              ; preds = %161, %158
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %728

168:                                              ; preds = %137
  br label %169

169:                                              ; preds = %168, %135
  %170 = load i32, i32* @NEXT, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i64, i64* @XML_ELEMENT_CONTENT_SEQ, align 8
  %175 = call %struct.TYPE_15__* @xmlNewDocElementContent(i32 %173, i32* null, i64 %174)
  store %struct.TYPE_15__* %175, %struct.TYPE_15__** %11, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %177 = icmp eq %struct.TYPE_15__* %176, null
  br i1 %177, label %178, label %197

178:                                              ; preds = %169
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %180 = icmp ne %struct.TYPE_15__* %179, null
  br i1 %180, label %181, label %191

181:                                              ; preds = %178
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %184 = icmp ne %struct.TYPE_15__* %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %190 = call i32 @xmlFreeDocElementContent(i32 %188, %struct.TYPE_15__* %189)
  br label %191

191:                                              ; preds = %185, %181, %178
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %196 = call i32 @xmlFreeDocElementContent(i32 %194, %struct.TYPE_15__* %195)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %728

197:                                              ; preds = %169
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %199 = icmp eq %struct.TYPE_15__* %198, null
  br i1 %199, label %200, label %212

200:                                              ; preds = %197
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 3
  store %struct.TYPE_15__* %201, %struct.TYPE_15__** %203, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %205 = icmp ne %struct.TYPE_15__* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 4
  store %struct.TYPE_15__* %207, %struct.TYPE_15__** %209, align 8
  br label %210

210:                                              ; preds = %206, %200
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %211, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %211, %struct.TYPE_15__** %8, align 8
  br label %234

212:                                              ; preds = %197
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 2
  store %struct.TYPE_15__* %213, %struct.TYPE_15__** %215, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %217 = icmp ne %struct.TYPE_15__* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 4
  store %struct.TYPE_15__* %219, %struct.TYPE_15__** %221, align 8
  br label %222

222:                                              ; preds = %218, %212
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 3
  store %struct.TYPE_15__* %223, %struct.TYPE_15__** %225, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %227 = icmp ne %struct.TYPE_15__* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %222
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 4
  store %struct.TYPE_15__* %229, %struct.TYPE_15__** %231, align 8
  br label %232

232:                                              ; preds = %228, %222
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %233, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  br label %234

234:                                              ; preds = %232, %210
  br label %373

235:                                              ; preds = %128
  %236 = load i8, i8* @RAW, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 124
  br i1 %238, label %239, label %346

239:                                              ; preds = %235
  %240 = load i32, i32* %13, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = load i32, i32* @CUR, align 4
  store i32 %243, i32* %13, align 4
  br label %276

244:                                              ; preds = %239
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* @CUR, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %275

248:                                              ; preds = %244
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %250 = load i32, i32* @XML_ERR_SEPARATOR_REQUIRED, align 4
  %251 = load i32, i32* %13, align 4
  %252 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_14__* %249, i32 %250, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %251)
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %254 = icmp ne %struct.TYPE_15__* %253, null
  br i1 %254, label %255, label %265

255:                                              ; preds = %248
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %258 = icmp ne %struct.TYPE_15__* %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %255
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %264 = call i32 @xmlFreeDocElementContent(i32 %262, %struct.TYPE_15__* %263)
  br label %265

265:                                              ; preds = %259, %255, %248
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %267 = icmp ne %struct.TYPE_15__* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %273 = call i32 @xmlFreeDocElementContent(i32 %271, %struct.TYPE_15__* %272)
  br label %274

274:                                              ; preds = %268, %265
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %728

275:                                              ; preds = %244
  br label %276

276:                                              ; preds = %275, %242
  %277 = load i32, i32* @NEXT, align 4
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = load i64, i64* @XML_ELEMENT_CONTENT_OR, align 8
  %282 = call %struct.TYPE_15__* @xmlNewDocElementContent(i32 %280, i32* null, i64 %281)
  store %struct.TYPE_15__* %282, %struct.TYPE_15__** %11, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %284 = icmp eq %struct.TYPE_15__* %283, null
  br i1 %284, label %285, label %308

285:                                              ; preds = %276
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %287 = icmp ne %struct.TYPE_15__* %286, null
  br i1 %287, label %288, label %298

288:                                              ; preds = %285
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %291 = icmp ne %struct.TYPE_15__* %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %288
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %297 = call i32 @xmlFreeDocElementContent(i32 %295, %struct.TYPE_15__* %296)
  br label %298

298:                                              ; preds = %292, %288, %285
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %300 = icmp ne %struct.TYPE_15__* %299, null
  br i1 %300, label %301, label %307

301:                                              ; preds = %298
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %306 = call i32 @xmlFreeDocElementContent(i32 %304, %struct.TYPE_15__* %305)
  br label %307

307:                                              ; preds = %301, %298
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %728

308:                                              ; preds = %276
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %310 = icmp eq %struct.TYPE_15__* %309, null
  br i1 %310, label %311, label %323

311:                                              ; preds = %308
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 3
  store %struct.TYPE_15__* %312, %struct.TYPE_15__** %314, align 8
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %316 = icmp ne %struct.TYPE_15__* %315, null
  br i1 %316, label %317, label %321

317:                                              ; preds = %311
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 4
  store %struct.TYPE_15__* %318, %struct.TYPE_15__** %320, align 8
  br label %321

321:                                              ; preds = %317, %311
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %322, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %322, %struct.TYPE_15__** %8, align 8
  br label %345

323:                                              ; preds = %308
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 2
  store %struct.TYPE_15__* %324, %struct.TYPE_15__** %326, align 8
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %328 = icmp ne %struct.TYPE_15__* %327, null
  br i1 %328, label %329, label %333

329:                                              ; preds = %323
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 4
  store %struct.TYPE_15__* %330, %struct.TYPE_15__** %332, align 8
  br label %333

333:                                              ; preds = %329, %323
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 3
  store %struct.TYPE_15__* %334, %struct.TYPE_15__** %336, align 8
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %338 = icmp ne %struct.TYPE_15__* %337, null
  br i1 %338, label %339, label %343

339:                                              ; preds = %333
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 4
  store %struct.TYPE_15__* %340, %struct.TYPE_15__** %342, align 8
  br label %343

343:                                              ; preds = %339, %333
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %344, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  br label %345

345:                                              ; preds = %343, %321
  br label %372

346:                                              ; preds = %235
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %348 = load i32, i32* @XML_ERR_ELEMCONTENT_NOT_FINISHED, align 4
  %349 = call i32 @xmlFatalErr(%struct.TYPE_14__* %347, i32 %348, i32* null)
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %351 = icmp ne %struct.TYPE_15__* %350, null
  br i1 %351, label %352, label %362

352:                                              ; preds = %346
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %355 = icmp ne %struct.TYPE_15__* %353, %354
  br i1 %355, label %356, label %362

356:                                              ; preds = %352
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %361 = call i32 @xmlFreeDocElementContent(i32 %359, %struct.TYPE_15__* %360)
  br label %362

362:                                              ; preds = %356, %352, %346
  %363 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %364 = icmp ne %struct.TYPE_15__* %363, null
  br i1 %364, label %365, label %371

365:                                              ; preds = %362
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %370 = call i32 @xmlFreeDocElementContent(i32 %368, %struct.TYPE_15__* %369)
  br label %371

371:                                              ; preds = %365, %362
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %728

372:                                              ; preds = %345
  br label %373

373:                                              ; preds = %372, %234
  %374 = load i32, i32* @GROW, align 4
  %375 = load i32, i32* @SKIP_BLANKS, align 4
  %376 = load i32, i32* @GROW, align 4
  %377 = load i8, i8* @RAW, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 40
  br i1 %379, label %380, label %394

380:                                              ; preds = %373
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 2
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %15, align 4
  %386 = load i32, i32* @NEXT, align 4
  %387 = load i32, i32* @SKIP_BLANKS, align 4
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %389 = load i32, i32* %15, align 4
  %390 = load i32, i32* %7, align 4
  %391 = add nsw i32 %390, 1
  %392 = call %struct.TYPE_15__* @xmlParseElementChildrenContentDeclPriv(%struct.TYPE_14__* %388, i32 %389, i32 %391)
  store %struct.TYPE_15__* %392, %struct.TYPE_15__** %10, align 8
  %393 = load i32, i32* @SKIP_BLANKS, align 4
  br label %466

394:                                              ; preds = %373
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %396 = call i32* @xmlParseName(%struct.TYPE_14__* %395)
  store i32* %396, i32** %12, align 8
  %397 = load i32*, i32** %12, align 8
  %398 = icmp eq i32* %397, null
  br i1 %398, label %399, label %412

399:                                              ; preds = %394
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %401 = load i32, i32* @XML_ERR_ELEMCONTENT_NOT_STARTED, align 4
  %402 = call i32 @xmlFatalErr(%struct.TYPE_14__* %400, i32 %401, i32* null)
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %404 = icmp ne %struct.TYPE_15__* %403, null
  br i1 %404, label %405, label %411

405:                                              ; preds = %399
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %410 = call i32 @xmlFreeDocElementContent(i32 %408, %struct.TYPE_15__* %409)
  br label %411

411:                                              ; preds = %405, %399
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %728

412:                                              ; preds = %394
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 8
  %416 = load i32*, i32** %12, align 8
  %417 = load i64, i64* @XML_ELEMENT_CONTENT_ELEMENT, align 8
  %418 = call %struct.TYPE_15__* @xmlNewDocElementContent(i32 %415, i32* %416, i64 %417)
  store %struct.TYPE_15__* %418, %struct.TYPE_15__** %10, align 8
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %420 = icmp eq %struct.TYPE_15__* %419, null
  br i1 %420, label %421, label %431

421:                                              ; preds = %412
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %423 = icmp ne %struct.TYPE_15__* %422, null
  br i1 %423, label %424, label %430

424:                                              ; preds = %421
  %425 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %429 = call i32 @xmlFreeDocElementContent(i32 %427, %struct.TYPE_15__* %428)
  br label %430

430:                                              ; preds = %424, %421
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %728

431:                                              ; preds = %412
  %432 = load i8, i8* @RAW, align 1
  %433 = sext i8 %432 to i32
  %434 = icmp eq i32 %433, 63
  br i1 %434, label %435, label %440

435:                                              ; preds = %431
  %436 = load i64, i64* @XML_ELEMENT_CONTENT_OPT, align 8
  %437 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %438 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %437, i32 0, i32 0
  store i64 %436, i64* %438, align 8
  %439 = load i32, i32* @NEXT, align 4
  br label %465

440:                                              ; preds = %431
  %441 = load i8, i8* @RAW, align 1
  %442 = sext i8 %441 to i32
  %443 = icmp eq i32 %442, 42
  br i1 %443, label %444, label %449

444:                                              ; preds = %440
  %445 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %446 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %447 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %446, i32 0, i32 0
  store i64 %445, i64* %447, align 8
  %448 = load i32, i32* @NEXT, align 4
  br label %464

449:                                              ; preds = %440
  %450 = load i8, i8* @RAW, align 1
  %451 = sext i8 %450 to i32
  %452 = icmp eq i32 %451, 43
  br i1 %452, label %453, label %458

453:                                              ; preds = %449
  %454 = load i64, i64* @XML_ELEMENT_CONTENT_PLUS, align 8
  %455 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %456 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %455, i32 0, i32 0
  store i64 %454, i64* %456, align 8
  %457 = load i32, i32* @NEXT, align 4
  br label %463

458:                                              ; preds = %449
  %459 = load i8*, i8** @XML_ELEMENT_CONTENT_ONCE, align 8
  %460 = ptrtoint i8* %459 to i64
  %461 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %462 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %461, i32 0, i32 0
  store i64 %460, i64* %462, align 8
  br label %463

463:                                              ; preds = %458, %453
  br label %464

464:                                              ; preds = %463, %444
  br label %465

465:                                              ; preds = %464, %435
  br label %466

466:                                              ; preds = %465, %380
  %467 = load i32, i32* @SKIP_BLANKS, align 4
  %468 = load i32, i32* @GROW, align 4
  br label %116

469:                                              ; preds = %126
  %470 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %471 = icmp ne %struct.TYPE_15__* %470, null
  br i1 %471, label %472, label %486

472:                                              ; preds = %469
  %473 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %474 = icmp ne %struct.TYPE_15__* %473, null
  br i1 %474, label %475, label %486

475:                                              ; preds = %472
  %476 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %477 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %478 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %477, i32 0, i32 2
  store %struct.TYPE_15__* %476, %struct.TYPE_15__** %478, align 8
  %479 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %480 = icmp ne %struct.TYPE_15__* %479, null
  br i1 %480, label %481, label %485

481:                                              ; preds = %475
  %482 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %483 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %484 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %483, i32 0, i32 4
  store %struct.TYPE_15__* %482, %struct.TYPE_15__** %484, align 8
  br label %485

485:                                              ; preds = %481, %475
  br label %486

486:                                              ; preds = %485, %472, %469
  %487 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %488 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %487, i32 0, i32 2
  %489 = load %struct.TYPE_13__*, %struct.TYPE_13__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* %6, align 4
  %493 = icmp ne i32 %491, %492
  br i1 %493, label %494, label %498

494:                                              ; preds = %486
  %495 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %496 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %497 = call i32 @xmlFatalErrMsg(%struct.TYPE_14__* %495, i32 %496, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  br label %498

498:                                              ; preds = %494, %486
  %499 = load i32, i32* @NEXT, align 4
  %500 = load i8, i8* @RAW, align 1
  %501 = sext i8 %500 to i32
  %502 = icmp eq i32 %501, 63
  br i1 %502, label %503, label %529

503:                                              ; preds = %498
  %504 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %505 = icmp ne %struct.TYPE_15__* %504, null
  br i1 %505, label %506, label %527

506:                                              ; preds = %503
  %507 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %508 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %507, i32 0, i32 0
  %509 = load i64, i64* %508, align 8
  %510 = load i64, i64* @XML_ELEMENT_CONTENT_PLUS, align 8
  %511 = icmp eq i64 %509, %510
  br i1 %511, label %518, label %512

512:                                              ; preds = %506
  %513 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %514 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %518, label %522

518:                                              ; preds = %512, %506
  %519 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %520 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %521 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %520, i32 0, i32 0
  store i64 %519, i64* %521, align 8
  br label %526

522:                                              ; preds = %512
  %523 = load i64, i64* @XML_ELEMENT_CONTENT_OPT, align 8
  %524 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %525 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %524, i32 0, i32 0
  store i64 %523, i64* %525, align 8
  br label %526

526:                                              ; preds = %522, %518
  br label %527

527:                                              ; preds = %526, %503
  %528 = load i32, i32* @NEXT, align 4
  br label %726

529:                                              ; preds = %498
  %530 = load i8, i8* @RAW, align 1
  %531 = sext i8 %530 to i32
  %532 = icmp eq i32 %531, 42
  br i1 %532, label %533, label %615

533:                                              ; preds = %529
  %534 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %535 = icmp ne %struct.TYPE_15__* %534, null
  br i1 %535, label %536, label %613

536:                                              ; preds = %533
  %537 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %538 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %539 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %538, i32 0, i32 0
  store i64 %537, i64* %539, align 8
  %540 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %540, %struct.TYPE_15__** %9, align 8
  br label %541

541:                                              ; preds = %608, %536
  %542 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %543 = icmp ne %struct.TYPE_15__* %542, null
  br i1 %543, label %544, label %550

544:                                              ; preds = %541
  %545 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %546 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %545, i32 0, i32 1
  %547 = load i64, i64* %546, align 8
  %548 = load i64, i64* @XML_ELEMENT_CONTENT_OR, align 8
  %549 = icmp eq i64 %547, %548
  br label %550

550:                                              ; preds = %544, %541
  %551 = phi i1 [ false, %541 ], [ %549, %544 ]
  br i1 %551, label %552, label %612

552:                                              ; preds = %550
  %553 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %554 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %553, i32 0, i32 3
  %555 = load %struct.TYPE_15__*, %struct.TYPE_15__** %554, align 8
  %556 = icmp ne %struct.TYPE_15__* %555, null
  br i1 %556, label %557, label %580

557:                                              ; preds = %552
  %558 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %559 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %558, i32 0, i32 3
  %560 = load %struct.TYPE_15__*, %struct.TYPE_15__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %560, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = load i64, i64* @XML_ELEMENT_CONTENT_OPT, align 8
  %564 = icmp eq i64 %562, %563
  br i1 %564, label %573, label %565

565:                                              ; preds = %557
  %566 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %567 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %566, i32 0, i32 3
  %568 = load %struct.TYPE_15__*, %struct.TYPE_15__** %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %568, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %572 = icmp eq i64 %570, %571
  br i1 %572, label %573, label %580

573:                                              ; preds = %565, %557
  %574 = load i8*, i8** @XML_ELEMENT_CONTENT_ONCE, align 8
  %575 = ptrtoint i8* %574 to i64
  %576 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %577 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %576, i32 0, i32 3
  %578 = load %struct.TYPE_15__*, %struct.TYPE_15__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %578, i32 0, i32 0
  store i64 %575, i64* %579, align 8
  br label %580

580:                                              ; preds = %573, %565, %552
  %581 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %582 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %581, i32 0, i32 2
  %583 = load %struct.TYPE_15__*, %struct.TYPE_15__** %582, align 8
  %584 = icmp ne %struct.TYPE_15__* %583, null
  br i1 %584, label %585, label %608

585:                                              ; preds = %580
  %586 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %587 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %586, i32 0, i32 2
  %588 = load %struct.TYPE_15__*, %struct.TYPE_15__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %588, i32 0, i32 0
  %590 = load i64, i64* %589, align 8
  %591 = load i64, i64* @XML_ELEMENT_CONTENT_OPT, align 8
  %592 = icmp eq i64 %590, %591
  br i1 %592, label %601, label %593

593:                                              ; preds = %585
  %594 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %595 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %594, i32 0, i32 2
  %596 = load %struct.TYPE_15__*, %struct.TYPE_15__** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %596, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %600 = icmp eq i64 %598, %599
  br i1 %600, label %601, label %608

601:                                              ; preds = %593, %585
  %602 = load i8*, i8** @XML_ELEMENT_CONTENT_ONCE, align 8
  %603 = ptrtoint i8* %602 to i64
  %604 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %605 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %604, i32 0, i32 2
  %606 = load %struct.TYPE_15__*, %struct.TYPE_15__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %606, i32 0, i32 0
  store i64 %603, i64* %607, align 8
  br label %608

608:                                              ; preds = %601, %593, %580
  %609 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %610 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %609, i32 0, i32 2
  %611 = load %struct.TYPE_15__*, %struct.TYPE_15__** %610, align 8
  store %struct.TYPE_15__* %611, %struct.TYPE_15__** %9, align 8
  br label %541

612:                                              ; preds = %550
  br label %613

613:                                              ; preds = %612, %533
  %614 = load i32, i32* @NEXT, align 4
  br label %725

615:                                              ; preds = %529
  %616 = load i8, i8* @RAW, align 1
  %617 = sext i8 %616 to i32
  %618 = icmp eq i32 %617, 43
  br i1 %618, label %619, label %724

619:                                              ; preds = %615
  %620 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %621 = icmp ne %struct.TYPE_15__* %620, null
  br i1 %621, label %622, label %722

622:                                              ; preds = %619
  store i32 0, i32* %16, align 4
  %623 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %624 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %623, i32 0, i32 0
  %625 = load i64, i64* %624, align 8
  %626 = load i64, i64* @XML_ELEMENT_CONTENT_OPT, align 8
  %627 = icmp eq i64 %625, %626
  br i1 %627, label %634, label %628

628:                                              ; preds = %622
  %629 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %630 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %629, i32 0, i32 0
  %631 = load i64, i64* %630, align 8
  %632 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %633 = icmp eq i64 %631, %632
  br i1 %633, label %634, label %638

634:                                              ; preds = %628, %622
  %635 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %636 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %637 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %636, i32 0, i32 0
  store i64 %635, i64* %637, align 8
  br label %642

638:                                              ; preds = %628
  %639 = load i64, i64* @XML_ELEMENT_CONTENT_PLUS, align 8
  %640 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %641 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %640, i32 0, i32 0
  store i64 %639, i64* %641, align 8
  br label %642

642:                                              ; preds = %638, %634
  br label %643

643:                                              ; preds = %710, %642
  %644 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %645 = icmp ne %struct.TYPE_15__* %644, null
  br i1 %645, label %646, label %652

646:                                              ; preds = %643
  %647 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %648 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %647, i32 0, i32 1
  %649 = load i64, i64* %648, align 8
  %650 = load i64, i64* @XML_ELEMENT_CONTENT_OR, align 8
  %651 = icmp eq i64 %649, %650
  br label %652

652:                                              ; preds = %646, %643
  %653 = phi i1 [ false, %643 ], [ %651, %646 ]
  br i1 %653, label %654, label %714

654:                                              ; preds = %652
  %655 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %656 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %655, i32 0, i32 3
  %657 = load %struct.TYPE_15__*, %struct.TYPE_15__** %656, align 8
  %658 = icmp ne %struct.TYPE_15__* %657, null
  br i1 %658, label %659, label %682

659:                                              ; preds = %654
  %660 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %661 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %660, i32 0, i32 3
  %662 = load %struct.TYPE_15__*, %struct.TYPE_15__** %661, align 8
  %663 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %662, i32 0, i32 0
  %664 = load i64, i64* %663, align 8
  %665 = load i64, i64* @XML_ELEMENT_CONTENT_OPT, align 8
  %666 = icmp eq i64 %664, %665
  br i1 %666, label %675, label %667

667:                                              ; preds = %659
  %668 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %669 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %668, i32 0, i32 3
  %670 = load %struct.TYPE_15__*, %struct.TYPE_15__** %669, align 8
  %671 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %670, i32 0, i32 0
  %672 = load i64, i64* %671, align 8
  %673 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %674 = icmp eq i64 %672, %673
  br i1 %674, label %675, label %682

675:                                              ; preds = %667, %659
  %676 = load i8*, i8** @XML_ELEMENT_CONTENT_ONCE, align 8
  %677 = ptrtoint i8* %676 to i64
  %678 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %679 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %678, i32 0, i32 3
  %680 = load %struct.TYPE_15__*, %struct.TYPE_15__** %679, align 8
  %681 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %680, i32 0, i32 0
  store i64 %677, i64* %681, align 8
  store i32 1, i32* %16, align 4
  br label %682

682:                                              ; preds = %675, %667, %654
  %683 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %684 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %683, i32 0, i32 2
  %685 = load %struct.TYPE_15__*, %struct.TYPE_15__** %684, align 8
  %686 = icmp ne %struct.TYPE_15__* %685, null
  br i1 %686, label %687, label %710

687:                                              ; preds = %682
  %688 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %689 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %688, i32 0, i32 2
  %690 = load %struct.TYPE_15__*, %struct.TYPE_15__** %689, align 8
  %691 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %690, i32 0, i32 0
  %692 = load i64, i64* %691, align 8
  %693 = load i64, i64* @XML_ELEMENT_CONTENT_OPT, align 8
  %694 = icmp eq i64 %692, %693
  br i1 %694, label %703, label %695

695:                                              ; preds = %687
  %696 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %697 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %696, i32 0, i32 2
  %698 = load %struct.TYPE_15__*, %struct.TYPE_15__** %697, align 8
  %699 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %698, i32 0, i32 0
  %700 = load i64, i64* %699, align 8
  %701 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %702 = icmp eq i64 %700, %701
  br i1 %702, label %703, label %710

703:                                              ; preds = %695, %687
  %704 = load i8*, i8** @XML_ELEMENT_CONTENT_ONCE, align 8
  %705 = ptrtoint i8* %704 to i64
  %706 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %707 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %706, i32 0, i32 2
  %708 = load %struct.TYPE_15__*, %struct.TYPE_15__** %707, align 8
  %709 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %708, i32 0, i32 0
  store i64 %705, i64* %709, align 8
  store i32 1, i32* %16, align 4
  br label %710

710:                                              ; preds = %703, %695, %682
  %711 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %712 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %711, i32 0, i32 2
  %713 = load %struct.TYPE_15__*, %struct.TYPE_15__** %712, align 8
  store %struct.TYPE_15__* %713, %struct.TYPE_15__** %9, align 8
  br label %643

714:                                              ; preds = %652
  %715 = load i32, i32* %16, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %721

717:                                              ; preds = %714
  %718 = load i64, i64* @XML_ELEMENT_CONTENT_MULT, align 8
  %719 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %720 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %719, i32 0, i32 0
  store i64 %718, i64* %720, align 8
  br label %721

721:                                              ; preds = %717, %714
  br label %722

722:                                              ; preds = %721, %619
  %723 = load i32, i32* @NEXT, align 4
  br label %724

724:                                              ; preds = %722, %615
  br label %725

725:                                              ; preds = %724, %613
  br label %726

726:                                              ; preds = %725, %527
  %727 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %727, %struct.TYPE_15__** %4, align 8
  br label %728

728:                                              ; preds = %726, %430, %411, %371, %307, %274, %191, %167, %73, %60, %29
  %729 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %729
}

declare dso_local i32 @xmlFatalErrMsgInt(%struct.TYPE_14__*, i32, i8*, i32) #1

declare dso_local i32* @xmlParseName(%struct.TYPE_14__*) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @xmlNewDocElementContent(i32, i32*, i64) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @xmlFreeDocElementContent(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_14__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
