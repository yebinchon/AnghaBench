; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseXMLDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseXMLDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }

@RAW = common dso_local global i8 0, align 1
@XML_ERR_SPACE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Blank needed after '<?xml'\0A\00", align 1
@SKIP_BLANKS = common dso_local global i32 0, align 4
@XML_ERR_VERSION_MISSING = common dso_local global i32 0, align 4
@XML_DEFAULT_VERSION = common dso_local global i64 0, align 8
@XML_PARSE_OLD10 = common dso_local global i32 0, align 4
@XML_ERR_UNKNOWN_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported version '%s'\0A\00", align 1
@XML_WAR_UNKNOWN_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Blank needed here\0A\00", align 1
@XML_ERR_UNSUPPORTED_ENCODING = common dso_local global i64 0, align 8
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@GROW = common dso_local global i32 0, align 4
@XML_ERR_XMLDECL_NOT_FINISHED = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseXMLDecl(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 4
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 -2, i32* %7, align 8
  %8 = call i32 @SKIP(i32 5)
  %9 = load i8, i8* @RAW, align 1
  %10 = call i32 @IS_BLANK_CH(i8 signext %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %15 = call i32 @xmlFatalErrMsg(%struct.TYPE_12__* %13, i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @SKIP_BLANKS, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = call i8* @xmlParseVersionInfo(%struct.TYPE_12__* %18)
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = load i32, i32* @XML_ERR_VERSION_MISSING, align 4
  %25 = call i32 @xmlFatalErr(%struct.TYPE_12__* %23, i32 %24, i32* null)
  br label %82

26:                                               ; preds = %16
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* @XML_DEFAULT_VERSION, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @xmlStrEqual(i8* %27, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @XML_PARSE_OLD10, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = load i32, i32* @XML_ERR_UNKNOWN_VERSION, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_12__* %40, i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %67

44:                                               ; preds = %32
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 49
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = load i32, i32* @XML_WAR_UNKNOWN_VERSION, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @xmlWarningMsg(%struct.TYPE_12__* %57, i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32* null)
  br label %66

61:                                               ; preds = %50, %44
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = load i32, i32* @XML_ERR_UNKNOWN_VERSION, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_12__* %62, i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %39
  br label %68

68:                                               ; preds = %67, %26
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @xmlFree(i8* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i8*, i8** %3, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %22
  %83 = load i8, i8* @RAW, align 1
  %84 = call i32 @IS_BLANK_CH(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %82
  %87 = load i8, i8* @RAW, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 63
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = call signext i8 @NXT(i32 1)
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 62
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @SKIP(i32 2)
  br label %176

96:                                               ; preds = %90, %86
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %99 = call i32 @xmlFatalErrMsg(%struct.TYPE_12__* %97, i32 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %82
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %102 = call i32 @xmlParseEncodingDecl(%struct.TYPE_12__* %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @XML_ERR_UNSUPPORTED_ENCODING, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %100
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @XML_PARSER_EOF, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108, %100
  br label %176

115:                                              ; preds = %108
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %140

122:                                              ; preds = %115
  %123 = load i8, i8* @RAW, align 1
  %124 = call i32 @IS_BLANK_CH(i8 signext %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %122
  %127 = load i8, i8* @RAW, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 63
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = call signext i8 @NXT(i32 1)
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 62
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 @SKIP(i32 2)
  br label %176

136:                                              ; preds = %130, %126
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %138 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %139 = call i32 @xmlFatalErrMsg(%struct.TYPE_12__* %137, i32 %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %140

140:                                              ; preds = %136, %122, %115
  %141 = load i32, i32* @GROW, align 4
  %142 = load i32, i32* @SKIP_BLANKS, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %144 = call i32 @xmlParseSDDecl(%struct.TYPE_12__* %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 8
  %149 = load i32, i32* @SKIP_BLANKS, align 4
  %150 = load i8, i8* @RAW, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 63
  br i1 %152, label %153, label %159

153:                                              ; preds = %140
  %154 = call signext i8 @NXT(i32 1)
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 62
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = call i32 @SKIP(i32 2)
  br label %176

159:                                              ; preds = %153, %140
  %160 = load i8, i8* @RAW, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 62
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %165 = load i32, i32* @XML_ERR_XMLDECL_NOT_FINISHED, align 4
  %166 = call i32 @xmlFatalErr(%struct.TYPE_12__* %164, i32 %165, i32* null)
  %167 = load i32, i32* @NEXT, align 4
  br label %175

168:                                              ; preds = %159
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %170 = load i32, i32* @XML_ERR_XMLDECL_NOT_FINISHED, align 4
  %171 = call i32 @xmlFatalErr(%struct.TYPE_12__* %169, i32 %170, i32* null)
  %172 = load i32, i32* @CUR_PTR, align 4
  %173 = call i32 @MOVETO_ENDTAG(i32 %172)
  %174 = load i32, i32* @NEXT, align 4
  br label %175

175:                                              ; preds = %168, %163
  br label %176

176:                                              ; preds = %94, %114, %134, %175, %157
  ret void
}

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @IS_BLANK_CH(i8 signext) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i8* @xmlParseVersionInfo(%struct.TYPE_12__*) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @xmlStrEqual(i8*, i8*) #1

declare dso_local i32 @xmlFatalErrMsgStr(%struct.TYPE_12__*, i32, i8*, i8*) #1

declare dso_local i32 @xmlWarningMsg(%struct.TYPE_12__*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @xmlParseEncodingDecl(%struct.TYPE_12__*) #1

declare dso_local i32 @xmlParseSDDecl(%struct.TYPE_12__*) #1

declare dso_local i32 @MOVETO_ENDTAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
