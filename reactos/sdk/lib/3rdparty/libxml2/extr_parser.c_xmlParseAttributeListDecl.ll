; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseAttributeListDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseAttributeListDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, i64, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 (i32, i32*, i32*, i32, i32, i32*, i32*)* }

@CUR_PTR = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i64 0, align 8
@XML_ERR_SPACE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Space required after '<!ATTLIST'\0A\00", align 1
@XML_ERR_NAME_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ATTLIST: no name for Element\0A\00", align 1
@GROW = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"ATTLIST: no name for Attribute\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Space required after the attribute name\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Space required after the attribute type\0A\00", align 1
@XML_ATTRIBUTE_CDATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Space required after the attribute default value\0A\00", align 1
@XML_ATTRIBUTE_IMPLIED = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_REQUIRED = common dso_local global i32 0, align 4
@XML_ERR_ENTITY_BOUNDARY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"Attribute list declaration doesn't start and stop in the same entity\0A\00", align 1
@NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseAttributeListDecl(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %10 = load i32, i32* @CUR_PTR, align 4
  %11 = call i64 @CMP9(i32 %10, i8 signext 60, i8 signext 33, i8 signext 65, i8 signext 84, i8 signext 84, i8 signext 76, i8 signext 73, i8 signext 83, i8 signext 84)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %242

13:                                               ; preds = %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = call i32 @SKIP(i32 9)
  %20 = load i64, i64* @SKIP_BLANKS, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %25 = call i32 @xmlFatalErrMsg(%struct.TYPE_13__* %23, i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %13
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = call i32* @xmlParseName(%struct.TYPE_13__* %27)
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = load i32, i32* @XML_ERR_NAME_REQUIRED, align 4
  %34 = call i32 @xmlFatalErrMsg(%struct.TYPE_13__* %32, i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %242

35:                                               ; preds = %26
  %36 = load i64, i64* @SKIP_BLANKS, align 8
  %37 = load i32, i32* @GROW, align 4
  br label %38

38:                                               ; preds = %221, %35
  %39 = load i8, i8* @RAW, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 62
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @XML_PARSER_EOF, align 8
  %47 = icmp ne i64 %45, %46
  br label %48

48:                                               ; preds = %42, %38
  %49 = phi i1 [ false, %38 ], [ %47, %42 ]
  br i1 %49, label %50, label %223

50:                                               ; preds = %48
  store i32* null, i32** %9, align 8
  %51 = load i32, i32* @GROW, align 4
  store i32* null, i32** %5, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = call i32* @xmlParseName(%struct.TYPE_13__* %52)
  store i32* %53, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = load i32, i32* @XML_ERR_NAME_REQUIRED, align 4
  %59 = call i32 @xmlFatalErrMsg(%struct.TYPE_13__* %57, i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %223

60:                                               ; preds = %50
  %61 = load i32, i32* @GROW, align 4
  %62 = load i64, i64* @SKIP_BLANKS, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %66 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %67 = call i32 @xmlFatalErrMsg(%struct.TYPE_13__* %65, i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %223

68:                                               ; preds = %60
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = call i32 @xmlParseAttributeType(%struct.TYPE_13__* %69, i32** %5)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %223

74:                                               ; preds = %68
  %75 = load i32, i32* @GROW, align 4
  %76 = load i64, i64* @SKIP_BLANKS, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %81 = call i32 @xmlFatalErrMsg(%struct.TYPE_13__* %79, i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32*, i32** %5, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @xmlFreeEnumeration(i32* %85)
  br label %87

87:                                               ; preds = %84, %78
  br label %223

88:                                               ; preds = %74
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = call i32 @xmlParseDefaultDecl(%struct.TYPE_13__* %89, i32** %9)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load i32*, i32** %9, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @xmlFree(i32* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32*, i32** %5, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @xmlFreeEnumeration(i32* %103)
  br label %105

105:                                              ; preds = %102, %99
  br label %223

106:                                              ; preds = %88
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @XML_ATTRIBUTE_CDATA, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32*, i32** %9, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @xmlAttrNormalizeSpace(i32* %114, i32* %115)
  br label %117

117:                                              ; preds = %113, %110, %106
  %118 = load i32, i32* @GROW, align 4
  %119 = load i8, i8* @RAW, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 62
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = load i64, i64* @SKIP_BLANKS, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %127 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %128 = call i32 @xmlFatalErrMsg(%struct.TYPE_13__* %126, i32 %127, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %129 = load i32*, i32** %9, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @xmlFree(i32* %132)
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32*, i32** %5, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @xmlFreeEnumeration(i32* %138)
  br label %140

140:                                              ; preds = %137, %134
  br label %223

141:                                              ; preds = %122
  br label %142

142:                                              ; preds = %141, %117
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = icmp ne %struct.TYPE_11__* %145, null
  br i1 %146, label %147, label %175

147:                                              ; preds = %142
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %175, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32 (i32, i32*, i32*, i32, i32, i32*, i32*)*, i32 (i32, i32*, i32*, i32, i32, i32*, i32*)** %156, align 8
  %158 = icmp ne i32 (i32, i32*, i32*, i32, i32, i32*, i32*)* %157, null
  br i1 %158, label %159, label %175

159:                                              ; preds = %152
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32 (i32, i32*, i32*, i32, i32, i32*, i32*)*, i32 (i32, i32*, i32*, i32, i32, i32*, i32*)** %163, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load i32*, i32** %3, align 8
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 %164(i32 %167, i32* %168, i32* %169, i32 %170, i32 %171, i32* %172, i32* %173)
  br label %182

175:                                              ; preds = %152, %147, %142
  %176 = load i32*, i32** %5, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @xmlFreeEnumeration(i32* %179)
  br label %181

181:                                              ; preds = %178, %175
  br label %182

182:                                              ; preds = %181, %159
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %182
  %188 = load i32*, i32** %9, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @XML_ATTRIBUTE_IMPLIED, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %190
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @XML_ATTRIBUTE_REQUIRED, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %200 = load i32*, i32** %3, align 8
  %201 = load i32*, i32** %4, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = call i32 @xmlAddDefAttrs(%struct.TYPE_13__* %199, i32* %200, i32* %201, i32* %202)
  br label %204

204:                                              ; preds = %198, %194, %190, %187, %182
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %204
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %211 = load i32*, i32** %3, align 8
  %212 = load i32*, i32** %4, align 8
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @xmlAddSpecialAttr(%struct.TYPE_13__* %210, i32* %211, i32* %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %204
  %216 = load i32*, i32** %9, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32*, i32** %9, align 8
  %220 = call i32 @xmlFree(i32* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load i32, i32* @GROW, align 4
  br label %38

223:                                              ; preds = %140, %105, %87, %73, %64, %56, %48
  %224 = load i8, i8* @RAW, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 62
  br i1 %226, label %227, label %241

227:                                              ; preds = %223
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %228, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %227
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %237 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %238 = call i32 @xmlFatalErrMsg(%struct.TYPE_13__* %236, i32 %237, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  br label %239

239:                                              ; preds = %235, %227
  %240 = load i32, i32* @NEXT, align 4
  br label %241

241:                                              ; preds = %239, %223
  br label %242

242:                                              ; preds = %31, %241, %1
  ret void
}

declare dso_local i64 @CMP9(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32* @xmlParseName(%struct.TYPE_13__*) #1

declare dso_local i32 @xmlParseAttributeType(%struct.TYPE_13__*, i32**) #1

declare dso_local i32 @xmlFreeEnumeration(i32*) #1

declare dso_local i32 @xmlParseDefaultDecl(%struct.TYPE_13__*, i32**) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @xmlAttrNormalizeSpace(i32*, i32*) #1

declare dso_local i32 @xmlAddDefAttrs(%struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @xmlAddSpecialAttr(%struct.TYPE_13__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
