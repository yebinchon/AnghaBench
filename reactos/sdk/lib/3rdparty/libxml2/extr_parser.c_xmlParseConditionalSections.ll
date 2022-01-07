; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseConditionalSections.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseConditionalSections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i32, i64 }

@SKIP_BLANKS = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32* null, align 8
@RAW = common dso_local global i8 0, align 1
@XML_ERR_CONDSEC_INVALID = common dso_local global i32 0, align 4
@XML_ERR_ENTITY_BOUNDARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"All markup of the conditional section is not in the same entity\0A\00", align 1
@NEXT = common dso_local global i32 0, align 4
@xmlParserDebugEntities = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Entering INCLUDE Conditional Section\0A\00", align 1
@GROW = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@XML_ERR_EXT_SUBSET_NOT_FINISHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Leaving INCLUDE Conditional Section\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Entering IGNORE Conditional Section\0A\00", align 1
@XML_PARSER_IGNORE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Leaving IGNORE Conditional Section\0A\00", align 1
@XML_ERR_CONDSEC_INVALID_KEYWORD = common dso_local global i32 0, align 4
@SHRINK = common dso_local global i32 0, align 4
@XML_ERR_CONDSEC_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @xmlParseConditionalSections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlParseConditionalSections(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = call i32 @SKIP(i32 3)
  %15 = load i32, i32* @SKIP_BLANKS, align 4
  %16 = load i32*, i32** @CUR_PTR, align 8
  %17 = call i64 @CMP7(i32* %16, i8 signext 73, i8 signext 78, i8 signext 67, i8 signext 76, i8 zeroext 85, i8 signext 68, i8 signext 69)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %179

19:                                               ; preds = %1
  %20 = call i32 @SKIP(i32 7)
  %21 = load i32, i32* @SKIP_BLANKS, align 4
  %22 = load i8, i8* @RAW, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 91
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = load i32, i32* @XML_ERR_CONDSEC_INVALID, align 4
  %28 = call i32 @xmlFatalErr(%struct.TYPE_9__* %26, i32 %27, i32* null)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = call i32 @xmlHaltParser(%struct.TYPE_9__* %29)
  br label %403

31:                                               ; preds = %19
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %42 = call i32 @xmlFatalErrMsg(%struct.TYPE_9__* %40, i32 %41, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %31
  %44 = load i32, i32* @NEXT, align 4
  br label %45

45:                                               ; preds = %43
  %46 = load i64, i64* @xmlParserDebugEntities, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load i32, i32* @xmlGenericErrorContext, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @xmlGenericError(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %71)
  br label %73

73:                                               ; preds = %60, %53, %48
  %74 = load i32, i32* @xmlGenericErrorContext, align 4
  %75 = call i32 (i32, i8*, ...) @xmlGenericError(i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %45
  %77 = load i32, i32* @SKIP_BLANKS, align 4
  %78 = load i32, i32* @GROW, align 4
  br label %79

79:                                               ; preds = %146, %76
  %80 = load i8, i8* @RAW, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load i8, i8* @RAW, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 93
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = call signext i8 @NXT(i32 1)
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 93
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = call signext i8 @NXT(i32 2)
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 62
  br i1 %94, label %95, label %101

95:                                               ; preds = %91, %87, %83
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @XML_PARSER_EOF, align 8
  %100 = icmp ne i64 %98, %99
  br label %101

101:                                              ; preds = %95, %91, %79
  %102 = phi i1 [ false, %91 ], [ false, %79 ], [ %100, %95 ]
  br i1 %102, label %103, label %147

103:                                              ; preds = %101
  %104 = load i32*, i32** @CUR_PTR, align 8
  store i32* %104, i32** %4, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %5, align 4
  %110 = load i8, i8* @RAW, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 60
  br i1 %112, label %113, label %123

113:                                              ; preds = %103
  %114 = call signext i8 @NXT(i32 1)
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 33
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = call signext i8 @NXT(i32 2)
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 91
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  call void @xmlParseConditionalSections(%struct.TYPE_9__* %122)
  br label %126

123:                                              ; preds = %117, %113, %103
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = call i32 @xmlParseMarkupDecl(%struct.TYPE_9__* %124)
  br label %126

126:                                              ; preds = %123, %121
  %127 = load i32, i32* @SKIP_BLANKS, align 4
  %128 = load i32, i32* @GROW, align 4
  %129 = load i32*, i32** @CUR_PTR, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = icmp eq i32* %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %126
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %133, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %142 = load i32, i32* @XML_ERR_EXT_SUBSET_NOT_FINISHED, align 4
  %143 = call i32 @xmlFatalErr(%struct.TYPE_9__* %141, i32 %142, i32* null)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %145 = call i32 @xmlHaltParser(%struct.TYPE_9__* %144)
  br label %147

146:                                              ; preds = %132, %126
  br label %79

147:                                              ; preds = %140, %101
  %148 = load i64, i64* @xmlParserDebugEntities, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %147
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = icmp ne %struct.TYPE_8__* %153, null
  br i1 %154, label %155, label %175

155:                                              ; preds = %150
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %155
  %163 = load i32, i32* @xmlGenericErrorContext, align 4
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i32, i8*, ...) @xmlGenericError(i32 %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %168, i32 %173)
  br label %175

175:                                              ; preds = %162, %155, %150
  %176 = load i32, i32* @xmlGenericErrorContext, align 4
  %177 = call i32 (i32, i8*, ...) @xmlGenericError(i32 %176, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %147
  br label %355

179:                                              ; preds = %1
  %180 = load i32*, i32** @CUR_PTR, align 8
  %181 = call i64 @CMP6(i32* %180, i8 signext 73, i8 signext 71, i8 signext 78, i8 signext 79, i8 signext 82, i8 signext 69)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %348

183:                                              ; preds = %179
  store i32 0, i32* %8, align 4
  %184 = call i32 @SKIP(i32 6)
  %185 = load i32, i32* @SKIP_BLANKS, align 4
  %186 = load i8, i8* @RAW, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 91
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %191 = load i32, i32* @XML_ERR_CONDSEC_INVALID, align 4
  %192 = call i32 @xmlFatalErr(%struct.TYPE_9__* %190, i32 %191, i32* null)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %194 = call i32 @xmlHaltParser(%struct.TYPE_9__* %193)
  br label %403

195:                                              ; preds = %183
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %205 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %206 = call i32 @xmlFatalErrMsg(%struct.TYPE_9__* %204, i32 %205, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %207

207:                                              ; preds = %203, %195
  %208 = load i32, i32* @NEXT, align 4
  br label %209

209:                                              ; preds = %207
  %210 = load i64, i64* @xmlParserDebugEntities, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %240

212:                                              ; preds = %209
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = icmp ne %struct.TYPE_8__* %215, null
  br i1 %216, label %217, label %237

217:                                              ; preds = %212
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %217
  %225 = load i32, i32* @xmlGenericErrorContext, align 4
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 3
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = call i32 (i32, i8*, ...) @xmlGenericError(i32 %225, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %230, i32 %235)
  br label %237

237:                                              ; preds = %224, %217, %212
  %238 = load i32, i32* @xmlGenericErrorContext, align 4
  %239 = call i32 (i32, i8*, ...) @xmlGenericError(i32 %238, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %240

240:                                              ; preds = %237, %209
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  store i32 %243, i32* %6, align 4
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %7, align 8
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %240
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  store i32 1, i32* %253, align 8
  br label %254

254:                                              ; preds = %251, %240
  %255 = load i64, i64* @XML_PARSER_IGNORE, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  store i64 %255, i64* %257, align 8
  br label %258

258:                                              ; preds = %308, %307, %285, %254
  %259 = load i32, i32* %8, align 4
  %260 = icmp sge i32 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %258
  %262 = load i8, i8* @RAW, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %261
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @XML_PARSER_EOF, align 8
  %270 = icmp ne i64 %268, %269
  br label %271

271:                                              ; preds = %265, %261, %258
  %272 = phi i1 [ false, %261 ], [ false, %258 ], [ %270, %265 ]
  br i1 %272, label %273, label %310

273:                                              ; preds = %271
  %274 = load i8, i8* @RAW, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 60
  br i1 %276, label %277, label %289

277:                                              ; preds = %273
  %278 = call signext i8 @NXT(i32 1)
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %279, 33
  br i1 %280, label %281, label %289

281:                                              ; preds = %277
  %282 = call signext i8 @NXT(i32 2)
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 91
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %8, align 4
  %288 = call i32 @SKIP(i32 3)
  br label %258

289:                                              ; preds = %281, %277, %273
  %290 = load i8, i8* @RAW, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 93
  br i1 %292, label %293, label %308

293:                                              ; preds = %289
  %294 = call signext i8 @NXT(i32 1)
  %295 = sext i8 %294 to i32
  %296 = icmp eq i32 %295, 93
  br i1 %296, label %297, label %308

297:                                              ; preds = %293
  %298 = call signext i8 @NXT(i32 2)
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 62
  br i1 %300, label %301, label %308

301:                                              ; preds = %297
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, -1
  store i32 %303, i32* %8, align 4
  %304 = icmp sge i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %301
  %306 = call i32 @SKIP(i32 3)
  br label %307

307:                                              ; preds = %305, %301
  br label %258

308:                                              ; preds = %297, %293, %289
  %309 = load i32, i32* @NEXT, align 4
  br label %258

310:                                              ; preds = %271
  %311 = load i32, i32* %6, align 4
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 8
  %314 = load i64, i64* %7, align 8
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  store i64 %314, i64* %316, align 8
  %317 = load i64, i64* @xmlParserDebugEntities, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %347

319:                                              ; preds = %310
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 3
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %321, align 8
  %323 = icmp ne %struct.TYPE_8__* %322, null
  br i1 %323, label %324, label %344

324:                                              ; preds = %319
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 3
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 5
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %344

331:                                              ; preds = %324
  %332 = load i32, i32* @xmlGenericErrorContext, align 4
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 3
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 5
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 3
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = call i32 (i32, i8*, ...) @xmlGenericError(i32 %332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %337, i32 %342)
  br label %344

344:                                              ; preds = %331, %324, %319
  %345 = load i32, i32* @xmlGenericErrorContext, align 4
  %346 = call i32 (i32, i8*, ...) @xmlGenericError(i32 %345, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %347

347:                                              ; preds = %344, %310
  br label %354

348:                                              ; preds = %179
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %350 = load i32, i32* @XML_ERR_CONDSEC_INVALID_KEYWORD, align 4
  %351 = call i32 @xmlFatalErr(%struct.TYPE_9__* %349, i32 %350, i32* null)
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %353 = call i32 @xmlHaltParser(%struct.TYPE_9__* %352)
  br label %403

354:                                              ; preds = %347
  br label %355

355:                                              ; preds = %354, %178
  %356 = load i8, i8* @RAW, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %355
  %360 = load i32, i32* @SHRINK, align 4
  br label %361

361:                                              ; preds = %359, %355
  %362 = load i8, i8* @RAW, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %361
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %367 = load i32, i32* @XML_ERR_CONDSEC_NOT_FINISHED, align 4
  %368 = call i32 @xmlFatalErr(%struct.TYPE_9__* %366, i32 %367, i32* null)
  br label %403

369:                                              ; preds = %361
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 3
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* %3, align 4
  %376 = icmp ne i32 %374, %375
  br i1 %376, label %377, label %381

377:                                              ; preds = %369
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %379 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %380 = call i32 @xmlFatalErrMsg(%struct.TYPE_9__* %378, i32 %379, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %381

381:                                              ; preds = %377, %369
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @XML_PARSER_EOF, align 8
  %386 = icmp ne i64 %384, %385
  br i1 %386, label %387, label %402

387:                                              ; preds = %381
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 3
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 2
  %392 = load i64, i64* %391, align 8
  %393 = add nsw i64 %392, 3
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 3
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 3
  %398 = load i64, i64* %397, align 8
  %399 = icmp sle i64 %393, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %387
  %401 = call i32 @SKIP(i32 3)
  br label %402

402:                                              ; preds = %400, %387, %381
  br label %403

403:                                              ; preds = %25, %189, %348, %402, %365
  ret void
}

declare dso_local i32 @SKIP(i32) #1

declare dso_local i64 @CMP7(i32*, i8 signext, i8 signext, i8 signext, i8 signext, i8 zeroext, i8 signext, i8 signext) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @xmlHaltParser(%struct.TYPE_9__*) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @xmlGenericError(i32, i8*, ...) #1

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @xmlParseMarkupDecl(%struct.TYPE_9__*) #1

declare dso_local i64 @CMP6(i32*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
