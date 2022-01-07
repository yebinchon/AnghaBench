; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseEntityRef.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseEntityRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32* }
%struct.TYPE_20__ = type { i64, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_20__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_20__*, i32*)*, %struct.TYPE_21__* (%struct.TYPE_20__*, i32*)* }

@GROW = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@RAW = common dso_local global i8 0, align 1
@NEXT = common dso_local global i32 0, align 4
@XML_ERR_NAME_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"xmlParseEntityRef: no name\0A\00", align 1
@XML_ERR_ENTITYREF_SEMICOL_MISSING = common dso_local global i32 0, align 4
@XML_PARSE_OLDSAX = common dso_local global i32 0, align 4
@XML_ERR_UNDECLARED_ENTITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Entity '%s' not defined\0A\00", align 1
@XML_WAR_UNDECLARED_ENTITY = common dso_local global i32 0, align 4
@XML_EXTERNAL_GENERAL_UNPARSED_ENTITY = common dso_local global i32 0, align 4
@XML_ERR_UNPARSED_ENTITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Entity reference to unparsed entity %s\0A\00", align 1
@XML_PARSER_ATTRIBUTE_VALUE = common dso_local global i64 0, align 8
@XML_EXTERNAL_GENERAL_PARSED_ENTITY = common dso_local global i32 0, align 4
@XML_ERR_ENTITY_IS_EXTERNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Attribute references external entity '%s'\0A\00", align 1
@XML_INTERNAL_PREDEFINED_ENTITY = common dso_local global i32 0, align 4
@XML_ERR_LT_IN_ATTRIBUTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"'<' in entity '%s' is not allowed in attributes values\0A\00", align 1
@XML_ERR_ENTITY_IS_PARAMETER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Attempt to reference the parameter entity '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @xmlParseEntityRef(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  %6 = load i32, i32* @GROW, align 4
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XML_PARSER_EOF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %272

13:                                               ; preds = %1
  %14 = load i8, i8* @RAW, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 38
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %272

18:                                               ; preds = %13
  %19 = load i32, i32* @NEXT, align 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = call i32* @xmlParseName(%struct.TYPE_20__* %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = load i32, i32* @XML_ERR_NAME_REQUIRED, align 4
  %27 = call i32 @xmlFatalErrMsg(%struct.TYPE_20__* %25, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %272

28:                                               ; preds = %18
  %29 = load i8, i8* @RAW, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 59
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = load i32, i32* @XML_ERR_ENTITYREF_SEMICOL_MISSING, align 4
  %35 = call i32 @xmlFatalErr(%struct.TYPE_20__* %33, i32 %34, i32* null)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %272

36:                                               ; preds = %28
  %37 = load i32, i32* @NEXT, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @XML_PARSE_OLDSAX, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i32*, i32** %4, align 8
  %46 = call %struct.TYPE_21__* @xmlGetPredefinedEntity(i32* %45)
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %5, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = icmp ne %struct.TYPE_21__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %2, align 8
  br label %272

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %36
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 9
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = icmp ne %struct.TYPE_19__* %59, null
  br i1 %60, label %61, label %116

61:                                               ; preds = %52
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 9
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_21__* (%struct.TYPE_20__*, i32*)*, %struct.TYPE_21__* (%struct.TYPE_20__*, i32*)** %65, align 8
  %67 = icmp ne %struct.TYPE_21__* (%struct.TYPE_20__*, i32*)* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 9
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_21__* (%struct.TYPE_20__*, i32*)*, %struct.TYPE_21__* (%struct.TYPE_20__*, i32*)** %72, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call %struct.TYPE_21__* %73(%struct.TYPE_20__* %76, i32* %77)
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %5, align 8
  br label %79

79:                                               ; preds = %68, %61
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %86 = icmp eq %struct.TYPE_21__* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @XML_PARSE_OLDSAX, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32*, i32** %4, align 8
  %96 = call %struct.TYPE_21__* @xmlGetPredefinedEntity(i32* %95)
  store %struct.TYPE_21__* %96, %struct.TYPE_21__** %5, align 8
  br label %97

97:                                               ; preds = %94, %87, %84, %79
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = icmp eq %struct.TYPE_21__* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = icmp eq %struct.TYPE_20__* %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = call %struct.TYPE_21__* @xmlSAX2GetEntity(%struct.TYPE_20__* %112, i32* %113)
  store %struct.TYPE_21__* %114, %struct.TYPE_21__** %5, align 8
  br label %115

115:                                              ; preds = %111, %105, %102, %97
  br label %116

116:                                              ; preds = %115, %52
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @XML_PARSER_EOF, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %272

123:                                              ; preds = %116
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %125 = icmp eq %struct.TYPE_21__* %124, null
  br i1 %125, label %126, label %185

126:                                              ; preds = %123
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %141, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136, %126
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %143 = load i32, i32* @XML_ERR_UNDECLARED_ENTITY, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_20__* %142, i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %144)
  br label %179

146:                                              ; preds = %136, %131
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %148 = load i32, i32* @XML_WAR_UNDECLARED_ENTITY, align 4
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @xmlErrMsgStr(%struct.TYPE_20__* %147, i32 %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %149)
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %146
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 9
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  %159 = icmp ne %struct.TYPE_19__* %158, null
  br i1 %159, label %160, label %178

160:                                              ; preds = %155
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 9
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32 (%struct.TYPE_20__*, i32*)*, i32 (%struct.TYPE_20__*, i32*)** %164, align 8
  %166 = icmp ne i32 (%struct.TYPE_20__*, i32*)* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %160
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 9
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_20__*, i32*)*, i32 (%struct.TYPE_20__*, i32*)** %171, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %174, align 8
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 %172(%struct.TYPE_20__* %175, i32* %176)
  br label %178

178:                                              ; preds = %167, %160, %155, %146
  br label %179

179:                                              ; preds = %178, %141
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %182 = call i32 @xmlParserEntityCheck(%struct.TYPE_20__* %180, i32 0, %struct.TYPE_21__* %181, i32 0)
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 7
  store i64 0, i64* %184, align 8
  br label %270

185:                                              ; preds = %123
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @XML_EXTERNAL_GENERAL_UNPARSED_ENTITY, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %193 = load i32, i32* @XML_ERR_UNPARSED_ENTITY, align 4
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_20__* %192, i32 %193, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32* %194)
  br label %269

196:                                              ; preds = %185
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @XML_PARSER_ATTRIBUTE_VALUE, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %196
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @XML_EXTERNAL_GENERAL_PARSED_ENTITY, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %210 = load i32, i32* @XML_ERR_ENTITY_IS_EXTERNAL, align 4
  %211 = load i32*, i32** %4, align 8
  %212 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_20__* %209, i32 %210, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32* %211)
  br label %268

213:                                              ; preds = %202, %196
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @XML_PARSER_ATTRIBUTE_VALUE, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %256

219:                                              ; preds = %213
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %221 = icmp ne %struct.TYPE_21__* %220, null
  br i1 %221, label %222, label %256

222:                                              ; preds = %219
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @XML_INTERNAL_PREDEFINED_ENTITY, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %256

228:                                              ; preds = %222
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 1
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %228
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %255

239:                                              ; preds = %234, %228
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %255

244:                                              ; preds = %239
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = call i64 @xmlStrchr(i32* %247, i8 signext 60)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %252 = load i32, i32* @XML_ERR_LT_IN_ATTRIBUTE, align 4
  %253 = load i32*, i32** %4, align 8
  %254 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_20__* %251, i32 %252, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32* %253)
  br label %255

255:                                              ; preds = %250, %244, %239, %234
  br label %267

256:                                              ; preds = %222, %219, %213
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  switch i32 %259, label %265 [
    i32 128, label %260
    i32 129, label %260
  ]

260:                                              ; preds = %256, %256
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %262 = load i32, i32* @XML_ERR_ENTITY_IS_PARAMETER, align 4
  %263 = load i32*, i32** %4, align 8
  %264 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_20__* %261, i32 %262, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32* %263)
  br label %266

265:                                              ; preds = %256
  br label %266

266:                                              ; preds = %265, %260
  br label %267

267:                                              ; preds = %266, %255
  br label %268

268:                                              ; preds = %267, %208
  br label %269

269:                                              ; preds = %268, %191
  br label %270

270:                                              ; preds = %269, %179
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %271, %struct.TYPE_21__** %2, align 8
  br label %272

272:                                              ; preds = %270, %122, %49, %32, %24, %17, %12
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  ret %struct.TYPE_21__* %273
}

declare dso_local i32* @xmlParseName(%struct.TYPE_20__*) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local %struct.TYPE_21__* @xmlGetPredefinedEntity(i32*) #1

declare dso_local %struct.TYPE_21__* @xmlSAX2GetEntity(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @xmlFatalErrMsgStr(%struct.TYPE_20__*, i32, i8*, i32*) #1

declare dso_local i32 @xmlErrMsgStr(%struct.TYPE_20__*, i32, i8*, i32*) #1

declare dso_local i32 @xmlParserEntityCheck(%struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i64 @xmlStrchr(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
