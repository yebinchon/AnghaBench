; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseContent.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i8* }

@GROW = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@CUR_PTR = common dso_local global i8* null, align 8
@XML_PARSER_CONTENT = common dso_local global i64 0, align 8
@SHRINK = common dso_local global i32 0, align 4
@XML_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"detected an error in element content\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseContent(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load i32, i32* @GROW, align 4
  br label %7

7:                                                ; preds = %125, %1
  %8 = load i8, i8* @RAW, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i8, i8* @RAW, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 60
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = call signext i8 @NXT(i32 1)
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 47
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %11
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XML_PARSER_EOF, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %19, %15, %7
  %26 = phi i1 [ false, %15 ], [ false, %7 ], [ %24, %19 ]
  br i1 %26, label %27, label %126

27:                                               ; preds = %25
  %28 = load i8*, i8** @CUR_PTR, align 8
  store i8* %28, i8** %3, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %4, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 60
  br i1 %42, label %43, label %52

43:                                               ; preds = %27
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 63
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = call i32 @xmlParsePI(%struct.TYPE_13__* %50)
  br label %105

52:                                               ; preds = %43, %27
  %53 = load i8*, i8** @CUR_PTR, align 8
  %54 = call i64 @CMP9(i8* %53, i8 signext 60, i8 signext 33, i8 signext 91, i8 signext 67, i8 signext 68, i8 signext 65, i8 signext 84, i8 signext 65, i8 signext 91)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = call i32 @xmlParseCDSect(%struct.TYPE_13__* %57)
  br label %104

59:                                               ; preds = %52
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 60
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = call signext i8 @NXT(i32 1)
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 33
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = call signext i8 @NXT(i32 2)
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 45
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = call signext i8 @NXT(i32 3)
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 45
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = call i32 @xmlParseComment(%struct.TYPE_13__* %77)
  %79 = load i64, i64* @XML_PARSER_CONTENT, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %103

82:                                               ; preds = %72, %68, %64, %59
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 60
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %89 = call i32 @xmlParseElement(%struct.TYPE_13__* %88)
  br label %102

90:                                               ; preds = %82
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 38
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = call i32 @xmlParseReference(%struct.TYPE_13__* %96)
  br label %101

98:                                               ; preds = %90
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %100 = call i32 @xmlParseCharData(%struct.TYPE_13__* %99, i32 0)
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102, %76
  br label %104

104:                                              ; preds = %103, %56
  br label %105

105:                                              ; preds = %104, %49
  %106 = load i32, i32* @GROW, align 4
  %107 = load i32, i32* @SHRINK, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %108, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %105
  %116 = load i8*, i8** %3, align 8
  %117 = load i8*, i8** @CUR_PTR, align 8
  %118 = icmp eq i8* %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %121 = load i32, i32* @XML_ERR_INTERNAL_ERROR, align 4
  %122 = call i32 @xmlFatalErr(%struct.TYPE_13__* %120, i32 %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %124 = call i32 @xmlHaltParser(%struct.TYPE_13__* %123)
  br label %126

125:                                              ; preds = %115, %105
  br label %7

126:                                              ; preds = %119, %25
  ret void
}

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @xmlParsePI(%struct.TYPE_13__*) #1

declare dso_local i64 @CMP9(i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @xmlParseCDSect(%struct.TYPE_13__*) #1

declare dso_local i32 @xmlParseComment(%struct.TYPE_13__*) #1

declare dso_local i32 @xmlParseElement(%struct.TYPE_13__*) #1

declare dso_local i32 @xmlParseReference(%struct.TYPE_13__*) #1

declare dso_local i32 @xmlParseCharData(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @xmlHaltParser(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
