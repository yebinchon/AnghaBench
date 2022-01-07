; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseTextDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseTextDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@CUR_PTR = common dso_local global i32 0, align 4
@XML_ERR_XMLDECL_NOT_STARTED = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i64 0, align 8
@XML_ERR_SPACE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Space needed after '<?xml'\0A\00", align 1
@XML_DEFAULT_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Space needed here\0A\00", align 1
@XML_ERR_UNSUPPORTED_ENCODING = common dso_local global i64 0, align 8
@XML_ERR_OK = common dso_local global i64 0, align 8
@XML_ERR_MISSING_ENCODING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Missing encoding in text declaration\0A\00", align 1
@RAW = common dso_local global i8 0, align 1
@XML_ERR_XMLDECL_NOT_FINISHED = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseTextDecl(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load i32, i32* @CUR_PTR, align 4
  %6 = call i64 @CMP5(i32 %5, i8 signext 60, i8 signext 63, i8 signext 120, i8 signext 109, i8 signext 108)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call signext i8 @NXT(i32 5)
  %10 = call i64 @IS_BLANK_CH(i8 signext %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @SKIP(i32 5)
  br label %18

14:                                               ; preds = %8, %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = load i32, i32* @XML_ERR_XMLDECL_NOT_STARTED, align 4
  %17 = call i32 @xmlFatalErr(%struct.TYPE_9__* %15, i32 %16, i32* null)
  br label %96

18:                                               ; preds = %12
  %19 = load i64, i64* @SKIP_BLANKS, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %24 = call i32 @xmlFatalErrMsg(%struct.TYPE_9__* %22, i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = call i32* @xmlParseVersionInfo(%struct.TYPE_9__* %26)
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @XML_DEFAULT_VERSION, align 4
  %32 = call i32* @xmlCharStrdup(i32 %31)
  store i32* %32, i32** %3, align 8
  br label %41

33:                                               ; preds = %25
  %34 = load i64, i64* @SKIP_BLANKS, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %39 = call i32 @xmlFatalErrMsg(%struct.TYPE_9__* %37, i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32* %42, i32** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = call i32* @xmlParseEncodingDecl(%struct.TYPE_9__* %47)
  store i32* %48, i32** %4, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XML_ERR_UNSUPPORTED_ENCODING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %96

55:                                               ; preds = %41
  %56 = load i32*, i32** %4, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XML_ERR_OK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = load i32, i32* @XML_ERR_MISSING_ENCODING, align 4
  %67 = call i32 @xmlFatalErrMsg(%struct.TYPE_9__* %65, i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %58, %55
  %69 = load i64, i64* @SKIP_BLANKS, align 8
  %70 = load i8, i8* @RAW, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 63
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = call signext i8 @NXT(i32 1)
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 62
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @SKIP(i32 2)
  br label %96

79:                                               ; preds = %73, %68
  %80 = load i8, i8* @RAW, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 62
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = load i32, i32* @XML_ERR_XMLDECL_NOT_FINISHED, align 4
  %86 = call i32 @xmlFatalErr(%struct.TYPE_9__* %84, i32 %85, i32* null)
  %87 = load i32, i32* @NEXT, align 4
  br label %95

88:                                               ; preds = %79
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = load i32, i32* @XML_ERR_XMLDECL_NOT_FINISHED, align 4
  %91 = call i32 @xmlFatalErr(%struct.TYPE_9__* %89, i32 %90, i32* null)
  %92 = load i32, i32* @CUR_PTR, align 4
  %93 = call i32 @MOVETO_ENDTAG(i32 %92)
  %94 = load i32, i32* @NEXT, align 4
  br label %95

95:                                               ; preds = %88, %83
  br label %96

96:                                               ; preds = %14, %54, %95, %77
  ret void
}

declare dso_local i64 @CMP5(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @IS_BLANK_CH(i8 signext) #1

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32* @xmlParseVersionInfo(%struct.TYPE_9__*) #1

declare dso_local i32* @xmlCharStrdup(i32) #1

declare dso_local i32* @xmlParseEncodingDecl(%struct.TYPE_9__*) #1

declare dso_local i32 @MOVETO_ENDTAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
