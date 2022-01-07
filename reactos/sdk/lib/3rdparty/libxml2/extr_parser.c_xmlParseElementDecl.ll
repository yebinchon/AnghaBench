; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseElementDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseElementDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 (i32, i32*, i32, %struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@CUR_PTR = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i64 0, align 8
@XML_ERR_SPACE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Space required after 'ELEMENT'\0A\00", align 1
@XML_ERR_NAME_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"xmlParseElementDecl: no name for Element\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Space required after the element name\0A\00", align 1
@XML_ELEMENT_TYPE_EMPTY = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@XML_ELEMENT_TYPE_ANY = common dso_local global i32 0, align 4
@XML_ERR_PEREF_IN_INT_SUBSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"PEReference: forbidden within markup decl in internal subset\0A\00", align 1
@XML_ERR_ELEMCONTENT_NOT_STARTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"xmlParseElementDecl: 'EMPTY', 'ANY' or '(' expected\0A\00", align 1
@XML_ERR_GT_REQUIRED = common dso_local global i32 0, align 4
@XML_ERR_ENTITY_BOUNDARY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"Element declaration doesn't start and stop in the same entity\0A\00", align 1
@NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParseElementDecl(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 -1, i32* %5, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  %8 = load i32, i32* @CUR_PTR, align 4
  %9 = call i64 @CMP9(i32 %8, i8 signext 60, i8 signext 33, i8 signext 69, i8 signext 76, i8 signext 69, i8 signext 77, i8 signext 69, i8 signext 78, i8 signext 84)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %188

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = call i32 @SKIP(i32 9)
  %18 = load i64, i64* @SKIP_BLANKS, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %23 = call i32 @xmlFatalErrMsg(%struct.TYPE_15__* %21, i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %190

24:                                               ; preds = %11
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = call i32* @xmlParseName(%struct.TYPE_15__* %25)
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = load i32, i32* @XML_ERR_NAME_REQUIRED, align 4
  %32 = call i32 @xmlFatalErrMsg(%struct.TYPE_15__* %30, i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %190

33:                                               ; preds = %24
  %34 = load i64, i64* @SKIP_BLANKS, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %39 = call i32 @xmlFatalErrMsg(%struct.TYPE_15__* %37, i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* @CUR_PTR, align 4
  %42 = call i64 @CMP5(i32 %41, i8 signext 69, i8 signext 77, i8 signext 80, i8 signext 84, i8 signext 89)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call i32 @SKIP(i32 5)
  %46 = load i32, i32* @XML_ELEMENT_TYPE_EMPTY, align 4
  store i32 %46, i32* %5, align 4
  br label %95

47:                                               ; preds = %40
  %48 = load i8, i8* @RAW, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 65
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = call signext i8 @NXT(i32 1)
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 78
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = call signext i8 @NXT(i32 2)
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 89
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = call i32 @SKIP(i32 3)
  %61 = load i32, i32* @XML_ELEMENT_TYPE_ANY, align 4
  store i32 %61, i32* %5, align 4
  br label %94

62:                                               ; preds = %55, %51, %47
  %63 = load i8, i8* @RAW, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 40
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @xmlParseElementContentDecl(%struct.TYPE_15__* %67, i32* %68, %struct.TYPE_16__** %6)
  store i32 %69, i32* %5, align 4
  br label %93

70:                                               ; preds = %62
  %71 = load i8, i8* @RAW, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = load i32, i32* @XML_ERR_PEREF_IN_INT_SUBSET, align 4
  %87 = call i32 @xmlFatalErrMsg(%struct.TYPE_15__* %85, i32 %86, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %92

88:                                               ; preds = %79, %74, %70
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = load i32, i32* @XML_ERR_ELEMCONTENT_NOT_STARTED, align 4
  %91 = call i32 @xmlFatalErrMsg(%struct.TYPE_15__* %89, i32 %90, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %84
  store i32 -1, i32* %2, align 4
  br label %190

93:                                               ; preds = %66
  br label %94

94:                                               ; preds = %93, %59
  br label %95

95:                                               ; preds = %94, %44
  %96 = load i64, i64* @SKIP_BLANKS, align 8
  %97 = load i8, i8* @RAW, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 62
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = load i32, i32* @XML_ERR_GT_REQUIRED, align 4
  %103 = call i32 @xmlFatalErr(%struct.TYPE_15__* %101, i32 %102, i32* null)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = icmp ne %struct.TYPE_16__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = call i32 @xmlFreeDocElementContent(i32 %109, %struct.TYPE_16__* %110)
  br label %112

112:                                              ; preds = %106, %100
  br label %187

113:                                              ; preds = %95
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 6
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %114, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %124 = call i32 @xmlFatalErrMsg(%struct.TYPE_15__* %122, i32 %123, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %121, %113
  %126 = load i32, i32* @NEXT, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = icmp ne %struct.TYPE_14__* %129, null
  br i1 %130, label %131, label %176

131:                                              ; preds = %125
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %176, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32 (i32, i32*, i32, %struct.TYPE_16__*)*, i32 (i32, i32*, i32, %struct.TYPE_16__*)** %140, align 8
  %142 = icmp ne i32 (i32, i32*, i32, %struct.TYPE_16__*)* %141, null
  br i1 %142, label %143, label %176

143:                                              ; preds = %136
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = icmp ne %struct.TYPE_16__* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32 (i32, i32*, i32, %struct.TYPE_16__*)*, i32 (i32, i32*, i32, %struct.TYPE_16__*)** %153, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = call i32 %154(i32 %157, i32* %158, i32 %159, %struct.TYPE_16__* %160)
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %163 = icmp ne %struct.TYPE_16__* %162, null
  br i1 %163, label %164, label %175

164:                                              ; preds = %149
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %174 = call i32 @xmlFreeDocElementContent(i32 %172, %struct.TYPE_16__* %173)
  br label %175

175:                                              ; preds = %169, %164, %149
  br label %186

176:                                              ; preds = %136, %131, %125
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %178 = icmp ne %struct.TYPE_16__* %177, null
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = call i32 @xmlFreeDocElementContent(i32 %182, %struct.TYPE_16__* %183)
  br label %185

185:                                              ; preds = %179, %176
  br label %186

186:                                              ; preds = %185, %175
  br label %187

187:                                              ; preds = %186, %112
  br label %188

188:                                              ; preds = %187, %1
  %189 = load i32, i32* %5, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %188, %92, %29, %20
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i64 @CMP9(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32* @xmlParseName(%struct.TYPE_15__*) #1

declare dso_local i64 @CMP5(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @xmlParseElementContentDecl(%struct.TYPE_15__*, i32*, %struct.TYPE_16__**) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @xmlFreeDocElementContent(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
