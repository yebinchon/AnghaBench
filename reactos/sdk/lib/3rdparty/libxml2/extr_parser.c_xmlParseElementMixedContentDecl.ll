; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseElementMixedContentDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseElementMixedContentDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@GROW = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i32 0, align 4
@SHRINK = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@XML_ERR_ENTITY_BOUNDARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Element content declaration doesn't start and stop in the same entity\0A\00", align 1
@NEXT = common dso_local global i32 0, align 4
@XML_ELEMENT_CONTENT_PCDATA = common dso_local global i32 0, align 4
@XML_ELEMENT_CONTENT_MULT = common dso_local global i8* null, align 8
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@XML_ELEMENT_CONTENT_OR = common dso_local global i32 0, align 4
@XML_ELEMENT_CONTENT_ELEMENT = common dso_local global i32 0, align 4
@XML_ERR_NAME_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"xmlParseElementMixedContentDecl : Name expected\0A\00", align 1
@XML_ERR_MIXED_NOT_STARTED = common dso_local global i32 0, align 4
@XML_ERR_PCDATA_REQUIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @xmlParseElementMixedContentDecl(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* @GROW, align 4
  %11 = load i32, i32* @CUR_PTR, align 4
  %12 = call i64 @CMP7(i32 %11, i8 signext 35, i8 signext 80, i8 signext 67, i8 signext 68, i8 signext 65, i8 signext 84, i8 signext 65)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %236

14:                                               ; preds = %2
  %15 = call i32 @SKIP(i32 7)
  %16 = load i32, i32* @SKIP_BLANKS, align 4
  %17 = load i32, i32* @SHRINK, align 4
  %18 = load i8, i8* @RAW, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 41
  br i1 %20, label %21, label %55

21:                                               ; preds = %14
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %32 = call i32 @xmlFatalErrMsg(%struct.TYPE_11__* %30, i32 %31, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32, i32* @NEXT, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @XML_ELEMENT_CONTENT_PCDATA, align 4
  %39 = call i8* @xmlNewDocElementContent(i32 %37, i32* null, i32 %38)
  %40 = bitcast i8* %39 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %6, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = icmp eq %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %242

44:                                               ; preds = %33
  %45 = load i8, i8* @RAW, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 42
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** @XML_ELEMENT_CONTENT_MULT, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @NEXT, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %3, align 8
  br label %242

55:                                               ; preds = %14
  %56 = load i8, i8* @RAW, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 40
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8, i8* @RAW, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 124
  br i1 %62, label %63, label %74

63:                                               ; preds = %59, %55
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @XML_ELEMENT_CONTENT_PCDATA, align 4
  %68 = call i8* @xmlNewDocElementContent(i32 %66, i32* null, i32 %67)
  %69 = bitcast i8* %68 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %6, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = icmp eq %struct.TYPE_12__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %242

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %170, %74
  %76 = load i8, i8* @RAW, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 124
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @XML_PARSER_EOF, align 8
  %84 = icmp ne i64 %82, %83
  br label %85

85:                                               ; preds = %79, %75
  %86 = phi i1 [ false, %75 ], [ %84, %79 ]
  br i1 %86, label %87, label %173

87:                                               ; preds = %85
  %88 = load i32, i32* @NEXT, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @XML_ELEMENT_CONTENT_OR, align 4
  %96 = call i8* @xmlNewDocElementContent(i32 %94, i32* null, i32 %95)
  %97 = bitcast i8* %96 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %6, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = icmp eq %struct.TYPE_12__* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %242

101:                                              ; preds = %91
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 3
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %110, align 8
  br label %111

111:                                              ; preds = %107, %101
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %7, align 8
  br label %155

113:                                              ; preds = %87
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @XML_ELEMENT_CONTENT_OR, align 4
  %118 = call i8* @xmlNewDocElementContent(i32 %116, i32* null, i32 %117)
  %119 = bitcast i8* %118 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %8, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %121 = icmp eq %struct.TYPE_12__* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %242

123:                                              ; preds = %113
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* @XML_ELEMENT_CONTENT_ELEMENT, align 4
  %129 = call i8* @xmlNewDocElementContent(i32 %126, i32* %127, i32 %128)
  %130 = bitcast i8* %129 to %struct.TYPE_12__*
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = icmp ne %struct.TYPE_12__* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %123
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  store %struct.TYPE_12__* %138, %struct.TYPE_12__** %142, align 8
  br label %143

143:                                              ; preds = %137, %123
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  store %struct.TYPE_12__* %144, %struct.TYPE_12__** %146, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %148 = icmp ne %struct.TYPE_12__* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  store %struct.TYPE_12__* %150, %struct.TYPE_12__** %152, align 8
  br label %153

153:                                              ; preds = %149, %143
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %154, %struct.TYPE_12__** %7, align 8
  br label %155

155:                                              ; preds = %153, %111
  %156 = load i32, i32* @SKIP_BLANKS, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = call i32* @xmlParseName(%struct.TYPE_11__* %157)
  store i32* %158, i32** %9, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %163 = load i32, i32* @XML_ERR_NAME_REQUIRED, align 4
  %164 = call i32 @xmlFatalErrMsg(%struct.TYPE_11__* %162, i32 %163, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %169 = call i32 @xmlFreeDocElementContent(i32 %167, %struct.TYPE_12__* %168)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %242

170:                                              ; preds = %155
  %171 = load i32, i32* @SKIP_BLANKS, align 4
  %172 = load i32, i32* @GROW, align 4
  br label %75

173:                                              ; preds = %85
  %174 = load i8, i8* @RAW, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 41
  br i1 %176, label %177, label %226

177:                                              ; preds = %173
  %178 = call signext i8 @NXT(i32 1)
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 42
  br i1 %180, label %181, label %226

181:                                              ; preds = %177
  %182 = load i32*, i32** %9, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %205

184:                                              ; preds = %181
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* @XML_ELEMENT_CONTENT_ELEMENT, align 4
  %190 = call i8* @xmlNewDocElementContent(i32 %187, i32* %188, i32 %189)
  %191 = bitcast i8* %190 to %struct.TYPE_12__*
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  store %struct.TYPE_12__* %191, %struct.TYPE_12__** %193, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = icmp ne %struct.TYPE_12__* %196, null
  br i1 %197, label %198, label %204

198:                                              ; preds = %184
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  store %struct.TYPE_12__* %199, %struct.TYPE_12__** %203, align 8
  br label %204

204:                                              ; preds = %198, %184
  br label %205

205:                                              ; preds = %204, %181
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %207 = icmp ne %struct.TYPE_12__* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i8*, i8** @XML_ELEMENT_CONTENT_MULT, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  store i8* %209, i8** %211, align 8
  br label %212

212:                                              ; preds = %208, %205
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %5, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %212
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %222 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %223 = call i32 @xmlFatalErrMsg(%struct.TYPE_11__* %221, i32 %222, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %224

224:                                              ; preds = %220, %212
  %225 = call i32 @SKIP(i32 2)
  br label %235

226:                                              ; preds = %177, %173
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %231 = call i32 @xmlFreeDocElementContent(i32 %229, %struct.TYPE_12__* %230)
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %233 = load i32, i32* @XML_ERR_MIXED_NOT_STARTED, align 4
  %234 = call i32 @xmlFatalErr(%struct.TYPE_11__* %232, i32 %233, i32* null)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %242

235:                                              ; preds = %224
  br label %240

236:                                              ; preds = %2
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %238 = load i32, i32* @XML_ERR_PCDATA_REQUIRED, align 4
  %239 = call i32 @xmlFatalErr(%struct.TYPE_11__* %237, i32 %238, i32* null)
  br label %240

240:                                              ; preds = %236, %235
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %241, %struct.TYPE_12__** %3, align 8
  br label %242

242:                                              ; preds = %240, %226, %161, %122, %100, %72, %53, %43
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %243
}

declare dso_local i64 @CMP7(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i8* @xmlNewDocElementContent(i32, i32*, i32) #1

declare dso_local i32* @xmlParseName(%struct.TYPE_11__*) #1

declare dso_local i32 @xmlFreeDocElementContent(i32, %struct.TYPE_12__*) #1

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_11__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
