; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseStringEntityRef.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseStringEntityRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32, i64, i32, i64, i64, %struct.TYPE_19__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__* (%struct.TYPE_19__*, i8*)* }

@XML_ERR_NAME_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"xmlParseStringEntityRef: no name\0A\00", align 1
@XML_ERR_ENTITYREF_SEMICOL_MISSING = common dso_local global i32 0, align 4
@XML_PARSE_OLDSAX = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_19__*, i8**)* @xmlParseStringEntityRef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @xmlParseStringEntityRef(%struct.TYPE_19__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %247

17:                                               ; preds = %12
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %8, align 1
  %22 = load i8, i8* %8, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 38
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %247

26:                                               ; preds = %17
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = call i8* @xmlParseStringName(%struct.TYPE_19__* %29, i8** %7)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = load i32, i32* @XML_ERR_NAME_REQUIRED, align 4
  %36 = call i32 @xmlFatalErrMsg(%struct.TYPE_19__* %34, i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %7, align 8
  %38 = load i8**, i8*** %5, align 8
  store i8* %37, i8** %38, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %247

39:                                               ; preds = %26
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 59
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = load i32, i32* @XML_ERR_ENTITYREF_SEMICOL_MISSING, align 4
  %47 = call i32 @xmlFatalErr(%struct.TYPE_19__* %45, i32 %46, i32* null)
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @xmlFree(i8* %48)
  %50 = load i8*, i8** %7, align 8
  %51 = load i8**, i8*** %5, align 8
  store i8* %50, i8** %51, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %247

52:                                               ; preds = %39
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @XML_PARSE_OLDSAX, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = load i8*, i8** %6, align 8
  %63 = call %struct.TYPE_20__* @xmlGetPredefinedEntity(i8* %62)
  store %struct.TYPE_20__* %63, %struct.TYPE_20__** %9, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %65 = icmp ne %struct.TYPE_20__* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @xmlFree(i8* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = load i8**, i8*** %5, align 8
  store i8* %69, i8** %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %3, align 8
  br label %247

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %52
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = icmp ne %struct.TYPE_18__* %80, null
  br i1 %81, label %82, label %127

82:                                               ; preds = %73
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_20__* (%struct.TYPE_19__*, i8*)*, %struct.TYPE_20__* (%struct.TYPE_19__*, i8*)** %86, align 8
  %88 = icmp ne %struct.TYPE_20__* (%struct.TYPE_19__*, i8*)* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_20__* (%struct.TYPE_19__*, i8*)*, %struct.TYPE_20__* (%struct.TYPE_19__*, i8*)** %93, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call %struct.TYPE_20__* %94(%struct.TYPE_19__* %97, i8* %98)
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %9, align 8
  br label %100

100:                                              ; preds = %89, %82
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %102 = icmp eq %struct.TYPE_20__* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @XML_PARSE_OLDSAX, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i8*, i8** %6, align 8
  %112 = call %struct.TYPE_20__* @xmlGetPredefinedEntity(i8* %111)
  store %struct.TYPE_20__* %112, %struct.TYPE_20__** %9, align 8
  br label %113

113:                                              ; preds = %110, %103, %100
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %115 = icmp eq %struct.TYPE_20__* %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %121 = icmp eq %struct.TYPE_19__* %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call %struct.TYPE_20__* @xmlSAX2GetEntity(%struct.TYPE_19__* %123, i8* %124)
  store %struct.TYPE_20__* %125, %struct.TYPE_20__** %9, align 8
  br label %126

126:                                              ; preds = %122, %116, %113
  br label %127

127:                                              ; preds = %126, %73
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @XML_PARSER_EOF, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @xmlFree(i8* %134)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %247

136:                                              ; preds = %127
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %138 = icmp eq %struct.TYPE_20__* %137, null
  br i1 %138, label %139, label %168

139:                                              ; preds = %136
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %154, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149, %139
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %156 = load i32, i32* @XML_ERR_UNDECLARED_ENTITY, align 4
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_19__* %155, i32 %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %157)
  br label %164

159:                                              ; preds = %149, %144
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %161 = load i32, i32* @XML_WAR_UNDECLARED_ENTITY, align 4
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @xmlErrMsgStr(%struct.TYPE_19__* %160, i32 %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %159, %154
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %167 = call i32 @xmlParserEntityCheck(%struct.TYPE_19__* %165, i32 0, %struct.TYPE_20__* %166, i32 0)
  br label %241

168:                                              ; preds = %136
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @XML_EXTERNAL_GENERAL_UNPARSED_ENTITY, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %176 = load i32, i32* @XML_ERR_UNPARSED_ENTITY, align 4
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_19__* %175, i32 %176, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %177)
  br label %240

179:                                              ; preds = %168
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @XML_PARSER_ATTRIBUTE_VALUE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %179
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @XML_EXTERNAL_GENERAL_PARSED_ENTITY, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %193 = load i32, i32* @XML_ERR_ENTITY_IS_EXTERNAL, align 4
  %194 = load i8*, i8** %6, align 8
  %195 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_19__* %192, i32 %193, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %194)
  br label %239

196:                                              ; preds = %185, %179
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @XML_PARSER_ATTRIBUTE_VALUE, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %227

202:                                              ; preds = %196
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %204 = icmp ne %struct.TYPE_20__* %203, null
  br i1 %204, label %205, label %227

205:                                              ; preds = %202
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %227

210:                                              ; preds = %205
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @XML_INTERNAL_PREDEFINED_ENTITY, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %210
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = call i64 @xmlStrchr(i32* %219, i8 signext 60)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %216
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %224 = load i32, i32* @XML_ERR_LT_IN_ATTRIBUTE, align 4
  %225 = load i8*, i8** %6, align 8
  %226 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_19__* %223, i32 %224, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* %225)
  br label %238

227:                                              ; preds = %216, %210, %205, %202, %196
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  switch i32 %230, label %236 [
    i32 128, label %231
    i32 129, label %231
  ]

231:                                              ; preds = %227, %227
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %233 = load i32, i32* @XML_ERR_ENTITY_IS_PARAMETER, align 4
  %234 = load i8*, i8** %6, align 8
  %235 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_19__* %232, i32 %233, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %234)
  br label %237

236:                                              ; preds = %227
  br label %237

237:                                              ; preds = %236, %231
  br label %238

238:                                              ; preds = %237, %222
  br label %239

239:                                              ; preds = %238, %191
  br label %240

240:                                              ; preds = %239, %174
  br label %241

241:                                              ; preds = %240, %164
  %242 = load i8*, i8** %6, align 8
  %243 = call i32 @xmlFree(i8* %242)
  %244 = load i8*, i8** %7, align 8
  %245 = load i8**, i8*** %5, align 8
  store i8* %244, i8** %245, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %246, %struct.TYPE_20__** %3, align 8
  br label %247

247:                                              ; preds = %241, %133, %66, %44, %33, %25, %16
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %248
}

declare dso_local i8* @xmlParseStringName(%struct.TYPE_19__*, i8**) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local %struct.TYPE_20__* @xmlGetPredefinedEntity(i8*) #1

declare dso_local %struct.TYPE_20__* @xmlSAX2GetEntity(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @xmlFatalErrMsgStr(%struct.TYPE_19__*, i32, i8*, i8*) #1

declare dso_local i32 @xmlErrMsgStr(%struct.TYPE_19__*, i32, i8*, i8*) #1

declare dso_local i32 @xmlParserEntityCheck(%struct.TYPE_19__*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @xmlStrchr(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
