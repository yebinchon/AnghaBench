; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseDocument.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseDocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i32, i32, i64, i64, %struct.TYPE_17__*, i64, i32, %struct.TYPE_20__*, i32, i32, i32, i32, %struct.TYPE_19__*, i32, i32, i32* }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_20__ = type { i32 (i32)*, i32 (i32, i32, i32, i32)*, i32 (i32)*, i32 (i32, i32*)* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i64 }

@GROW = common dso_local global i32 0, align 4
@xmlDefaultSAXLocator = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@RAW = common dso_local global i8 0, align 1
@XML_CHAR_ENCODING_NONE = common dso_local global i64 0, align 8
@CUR = common dso_local global i64 0, align 8
@XML_ERR_DOCUMENT_EMPTY = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32 0, align 4
@XML_ERR_UNSUPPORTED_ENCODING = common dso_local global i64 0, align 8
@SKIP_BLANKS = common dso_local global i32 0, align 4
@XML_DEFAULT_VERSION = common dso_local global i32 0, align 4
@XML_PARSER_DTD = common dso_local global i64 0, align 8
@XML_PARSER_PROLOG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Start tag expected, '<' not found\0A\00", align 1
@XML_PARSER_CONTENT = common dso_local global i64 0, align 8
@XML_PARSER_EPILOG = common dso_local global i64 0, align 8
@XML_ERR_DOCUMENT_END = common dso_local global i32 0, align 4
@SAX_COMPAT_MODE = common dso_local global i32 0, align 4
@XML_DOC_WELLFORMED = common dso_local global i32 0, align 4
@XML_DOC_DTDVALID = common dso_local global i32 0, align 4
@XML_DOC_NSVALID = common dso_local global i32 0, align 4
@XML_PARSE_OLD10 = common dso_local global i32 0, align 4
@XML_DOC_OLD10 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParseDocument(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %6 = call i32 (...) @xmlInitParser()
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %8 = icmp eq %struct.TYPE_21__* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 14
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %13 = icmp eq %struct.TYPE_19__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i32 -1, i32* %2, align 4
  br label %441

15:                                               ; preds = %9
  %16 = load i32, i32* @GROW, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = call i32 @xmlDetectSAX2(%struct.TYPE_21__* %17)
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 9
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = icmp ne %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %15
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 9
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = load i32 (i32, i32*)*, i32 (i32, i32*)** %27, align 8
  %29 = icmp ne i32 (i32, i32*)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 9
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 3
  %35 = load i32 (i32, i32*)*, i32 (i32, i32*)** %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %35(i32 %38, i32* @xmlDefaultSAXLocator)
  br label %40

40:                                               ; preds = %30, %23, %15
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @XML_PARSER_EOF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %441

47:                                               ; preds = %40
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 17
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %84

52:                                               ; preds = %47
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 14
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 14
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %57, %62
  %64 = icmp sge i32 %63, 4
  br i1 %64, label %65, label %84

65:                                               ; preds = %52
  %66 = load i8, i8* @RAW, align 1
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 %66, i8* %67, align 1
  %68 = call signext i8 @NXT(i32 1)
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  store i8 %68, i8* %69, align 1
  %70 = call signext i8 @NXT(i32 2)
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %70, i8* %71, align 1
  %72 = call signext i8 @NXT(i32 3)
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  store i8 %72, i8* %73, align 1
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %75 = call i64 @xmlDetectCharEncoding(i8* %74, i32 4)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @XML_CHAR_ENCODING_NONE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @xmlSwitchEncoding(%struct.TYPE_21__* %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %65
  br label %84

84:                                               ; preds = %83, %52, %47
  %85 = load i64, i64* @CUR, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %89 = load i32, i32* @XML_ERR_DOCUMENT_EMPTY, align 4
  %90 = call i32 @xmlFatalErr(%struct.TYPE_21__* %88, i32 %89, i32* null)
  store i32 -1, i32* %2, align 4
  br label %441

91:                                               ; preds = %84
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 14
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 14
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %96, %101
  %103 = icmp slt i32 %102, 35
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32, i32* @GROW, align 4
  br label %106

106:                                              ; preds = %104, %91
  %107 = load i32, i32* @CUR_PTR, align 4
  %108 = call i64 @CMP5(i32 %107, i8 signext 60, i8 signext 63, i8 signext 120, i8 signext 109, i8 signext 108)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %106
  %111 = call signext i8 @NXT(i32 5)
  %112 = call i64 @IS_BLANK_CH(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %110
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %116 = call i32 @xmlParseXMLDecl(%struct.TYPE_21__* %115)
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @XML_ERR_UNSUPPORTED_ENCODING, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %114
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @XML_PARSER_EOF, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122, %114
  store i32 -1, i32* %2, align 4
  br label %441

129:                                              ; preds = %122
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 14
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 16
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @SKIP_BLANKS, align 4
  br label %143

138:                                              ; preds = %110, %106
  %139 = load i32, i32* @XML_DEFAULT_VERSION, align 4
  %140 = call i32 @xmlCharStrdup(i32 %139)
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 15
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %138, %129
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 9
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = icmp ne %struct.TYPE_20__* %146, null
  br i1 %147, label %148, label %170

148:                                              ; preds = %143
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 9
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  %153 = load i32 (i32)*, i32 (i32)** %152, align 8
  %154 = icmp ne i32 (i32)* %153, null
  br i1 %154, label %155, label %170

155:                                              ; preds = %148
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 13
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %155
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 9
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  %165 = load i32 (i32)*, i32 (i32)** %164, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 8
  %169 = call i32 %165(i32 %168)
  br label %170

170:                                              ; preds = %160, %155, %148, %143
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @XML_PARSER_EOF, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  store i32 -1, i32* %2, align 4
  br label %441

177:                                              ; preds = %170
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = icmp ne %struct.TYPE_17__* %180, null
  br i1 %181, label %182, label %215

182:                                              ; preds = %177
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 14
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %184, align 8
  %186 = icmp ne %struct.TYPE_19__* %185, null
  br i1 %186, label %187, label %215

187:                                              ; preds = %182
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 14
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = icmp ne %struct.TYPE_18__* %192, null
  br i1 %193, label %194, label %215

194:                                              ; preds = %187
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 14
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp sge i64 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %194
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 14
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 6
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  store i64 %210, i64* %214, align 8
  br label %215

215:                                              ; preds = %203, %194, %187, %182, %177
  %216 = load i32, i32* @GROW, align 4
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %218 = call i32 @xmlParseMisc(%struct.TYPE_21__* %217)
  %219 = load i32, i32* @GROW, align 4
  %220 = load i32, i32* @CUR_PTR, align 4
  %221 = call i64 @CMP9(i32 %220, i8 signext 60, i8 signext 33, i8 signext 68, i8 signext 79, i8 signext 67, i8 signext 84, i8 signext 89, i8 signext 80, i8 signext 69)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %299

223:                                              ; preds = %215
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 2
  store i32 1, i32* %225, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %227 = call i32 @xmlParseDocTypeDecl(%struct.TYPE_21__* %226)
  %228 = load i8, i8* @RAW, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 91
  br i1 %230, label %231, label %244

231:                                              ; preds = %223
  %232 = load i64, i64* @XML_PARSER_DTD, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %236 = call i32 @xmlParseInternalSubset(%struct.TYPE_21__* %235)
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @XML_PARSER_EOF, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %231
  store i32 -1, i32* %2, align 4
  br label %441

243:                                              ; preds = %231
  br label %244

244:                                              ; preds = %243, %223
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 2
  store i32 2, i32* %246, align 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 9
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %248, align 8
  %250 = icmp ne %struct.TYPE_20__* %249, null
  br i1 %250, label %251, label %282

251:                                              ; preds = %244
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 9
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 1
  %256 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %255, align 8
  %257 = icmp ne i32 (i32, i32, i32, i32)* %256, null
  br i1 %257, label %258, label %282

258:                                              ; preds = %251
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 13
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %282, label %263

263:                                              ; preds = %258
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 9
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 1
  %268 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %267, align 8
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 8
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 12
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 11
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 10
  %280 = load i32, i32* %279, align 8
  %281 = call i32 %268(i32 %271, i32 %274, i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %263, %258, %251, %244
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @XML_PARSER_EOF, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  store i32 -1, i32* %2, align 4
  br label %441

289:                                              ; preds = %282
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 2
  store i32 0, i32* %291, align 8
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %293 = call i32 @xmlCleanSpecialAttr(%struct.TYPE_21__* %292)
  %294 = load i64, i64* @XML_PARSER_PROLOG, align 8
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 0
  store i64 %294, i64* %296, align 8
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %298 = call i32 @xmlParseMisc(%struct.TYPE_21__* %297)
  br label %299

299:                                              ; preds = %289, %215
  %300 = load i32, i32* @GROW, align 4
  %301 = load i8, i8* @RAW, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp ne i32 %302, 60
  br i1 %303, label %304, label %308

304:                                              ; preds = %299
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %306 = load i32, i32* @XML_ERR_DOCUMENT_EMPTY, align 4
  %307 = call i32 @xmlFatalErrMsg(%struct.TYPE_21__* %305, i32 %306, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %330

308:                                              ; preds = %299
  %309 = load i64, i64* @XML_PARSER_CONTENT, align 8
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %313 = call i32 @xmlParseElement(%struct.TYPE_21__* %312)
  %314 = load i64, i64* @XML_PARSER_EPILOG, align 8
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 0
  store i64 %314, i64* %316, align 8
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %318 = call i32 @xmlParseMisc(%struct.TYPE_21__* %317)
  %319 = load i8, i8* @RAW, align 1
  %320 = sext i8 %319 to i32
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %308
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %324 = load i32, i32* @XML_ERR_DOCUMENT_END, align 4
  %325 = call i32 @xmlFatalErr(%struct.TYPE_21__* %323, i32 %324, i32* null)
  br label %326

326:                                              ; preds = %322, %308
  %327 = load i64, i64* @XML_PARSER_EOF, align 8
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 0
  store i64 %327, i64* %329, align 8
  br label %330

330:                                              ; preds = %326, %304
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 9
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %332, align 8
  %334 = icmp ne %struct.TYPE_20__* %333, null
  br i1 %334, label %335, label %352

335:                                              ; preds = %330
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 9
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 0
  %340 = load i32 (i32)*, i32 (i32)** %339, align 8
  %341 = icmp ne i32 (i32)* %340, null
  br i1 %341, label %342, label %352

342:                                              ; preds = %335
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 9
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 0
  %347 = load i32 (i32)*, i32 (i32)** %346, align 8
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i32 0, i32 8
  %350 = load i32, i32* %349, align 8
  %351 = call i32 %347(i32 %350)
  br label %352

352:                                              ; preds = %342, %335, %330
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 6
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %354, align 8
  %356 = icmp ne %struct.TYPE_17__* %355, null
  br i1 %356, label %357, label %373

357:                                              ; preds = %352
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 6
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @SAX_COMPAT_MODE, align 4
  %364 = call i64 @xmlStrEqual(i32 %362, i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %357
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %367, i32 0, i32 6
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %368, align 8
  %370 = call i32 @xmlFreeDoc(%struct.TYPE_17__* %369)
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 6
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %372, align 8
  br label %373

373:                                              ; preds = %366, %357, %352
  %374 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %374, i32 0, i32 5
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %432

378:                                              ; preds = %373
  %379 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %379, i32 0, i32 6
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %380, align 8
  %382 = icmp ne %struct.TYPE_17__* %381, null
  br i1 %382, label %383, label %432

383:                                              ; preds = %378
  %384 = load i32, i32* @XML_DOC_WELLFORMED, align 4
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 6
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = or i32 %389, %384
  store i32 %390, i32* %388, align 8
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 4
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %403

395:                                              ; preds = %383
  %396 = load i32, i32* @XML_DOC_DTDVALID, align 4
  %397 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %397, i32 0, i32 6
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, %396
  store i32 %402, i32* %400, align 8
  br label %403

403:                                              ; preds = %395, %383
  %404 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %404, i32 0, i32 7
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %416

408:                                              ; preds = %403
  %409 = load i32, i32* @XML_DOC_NSVALID, align 4
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 6
  %412 = load %struct.TYPE_17__*, %struct.TYPE_17__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %409
  store i32 %415, i32* %413, align 8
  br label %416

416:                                              ; preds = %408, %403
  %417 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @XML_PARSE_OLD10, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %431

423:                                              ; preds = %416
  %424 = load i32, i32* @XML_DOC_OLD10, align 4
  %425 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %425, i32 0, i32 6
  %427 = load %struct.TYPE_17__*, %struct.TYPE_17__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = or i32 %429, %424
  store i32 %430, i32* %428, align 8
  br label %431

431:                                              ; preds = %423, %416
  br label %432

432:                                              ; preds = %431, %378, %373
  %433 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %433, i32 0, i32 5
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %432
  %438 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %438, i32 0, i32 4
  store i64 0, i64* %439, align 8
  store i32 -1, i32* %2, align 4
  br label %441

440:                                              ; preds = %432
  store i32 0, i32* %2, align 4
  br label %441

441:                                              ; preds = %440, %437, %288, %242, %176, %128, %87, %46, %14
  %442 = load i32, i32* %2, align 4
  ret i32 %442
}

declare dso_local i32 @xmlInitParser(...) #1

declare dso_local i32 @xmlDetectSAX2(%struct.TYPE_21__*) #1

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i64 @xmlDetectCharEncoding(i8*, i32) #1

declare dso_local i32 @xmlSwitchEncoding(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i64 @CMP5(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @IS_BLANK_CH(i8 signext) #1

declare dso_local i32 @xmlParseXMLDecl(%struct.TYPE_21__*) #1

declare dso_local i32 @xmlCharStrdup(i32) #1

declare dso_local i32 @xmlParseMisc(%struct.TYPE_21__*) #1

declare dso_local i64 @CMP9(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @xmlParseDocTypeDecl(%struct.TYPE_21__*) #1

declare dso_local i32 @xmlParseInternalSubset(%struct.TYPE_21__*) #1

declare dso_local i32 @xmlCleanSpecialAttr(%struct.TYPE_21__*) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @xmlParseElement(%struct.TYPE_21__*) #1

declare dso_local i64 @xmlStrEqual(i32, i32) #1

declare dso_local i32 @xmlFreeDoc(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
