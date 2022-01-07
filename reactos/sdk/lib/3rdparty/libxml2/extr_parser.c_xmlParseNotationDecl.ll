; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseNotationDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseNotationDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 (i32, i32*, i32*, i32*)* }
%struct.TYPE_10__ = type { i32 }

@CUR_PTR = common dso_local global i32 0, align 4
@SHRINK = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i64 0, align 8
@XML_ERR_SPACE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Space required after '<!NOTATION'\0A\00", align 1
@XML_ERR_NOTATION_NOT_STARTED = common dso_local global i32 0, align 4
@XML_NS_ERR_COLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"colons are forbidden from notation names '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Space required after the NOTATION name'\0A\00", align 1
@RAW = common dso_local global i8 0, align 1
@XML_ERR_ENTITY_BOUNDARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Notation declaration doesn't start and stop in the same entity\0A\00", align 1
@NEXT = common dso_local global i32 0, align 4
@XML_ERR_NOTATION_NOT_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseNotationDecl(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load i32, i32* @CUR_PTR, align 4
  %8 = call i64 @CMP10(i32 %7, i8 signext 60, i8 signext 33, i8 signext 78, i8 signext 79, i8 signext 84, i8 signext 65, i8 signext 84, i8 signext 73, i8 signext 79, i8 signext 78)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %117

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @SHRINK, align 4
  %17 = call i32 @SKIP(i32 10)
  %18 = load i64, i64* @SKIP_BLANKS, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %23 = call i32 @xmlFatalErrMsg(%struct.TYPE_12__* %21, i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %117

24:                                               ; preds = %10
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = call i32* @xmlParseName(%struct.TYPE_12__* %25)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = load i32, i32* @XML_ERR_NOTATION_NOT_STARTED, align 4
  %32 = call i32 @xmlFatalErr(%struct.TYPE_12__* %30, i32 %31, i32* null)
  br label %117

33:                                               ; preds = %24
  %34 = load i32*, i32** %3, align 8
  %35 = call i32* @xmlStrchr(i32* %34, i8 signext 58)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = load i32, i32* @XML_NS_ERR_COLON, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @xmlNsErr(%struct.TYPE_12__* %38, i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32* %40, i32* null, i32* null)
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i64, i64* @SKIP_BLANKS, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %48 = call i32 @xmlFatalErrMsg(%struct.TYPE_12__* %46, i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %117

49:                                               ; preds = %42
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = call i32* @xmlParseExternalID(%struct.TYPE_12__* %50, i32** %4, i32 0)
  store i32* %51, i32** %5, align 8
  %52 = load i64, i64* @SKIP_BLANKS, align 8
  %53 = load i8, i8* @RAW, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 62
  br i1 %55, label %56, label %100

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %57, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %67 = call i32 @xmlFatalErrMsg(%struct.TYPE_12__* %65, i32 %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* @NEXT, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = icmp ne %struct.TYPE_11__* %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %68
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32 (i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32*, i32*)** %83, align 8
  %85 = icmp ne i32 (i32, i32*, i32*, i32*)* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %79
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32 (i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32*, i32*)** %90, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 %91(i32 %94, i32* %95, i32* %96, i32* %97)
  br label %99

99:                                               ; preds = %86, %79, %74, %68
  br label %104

100:                                              ; preds = %49
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %102 = load i32, i32* @XML_ERR_NOTATION_NOT_FINISHED, align 4
  %103 = call i32 @xmlFatalErr(%struct.TYPE_12__* %101, i32 %102, i32* null)
  br label %104

104:                                              ; preds = %100, %99
  %105 = load i32*, i32** %5, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @xmlFree(i32* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32*, i32** %4, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @xmlFree(i32* %114)
  br label %116

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %20, %29, %45, %116, %1
  ret void
}

declare dso_local i64 @CMP10(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32* @xmlParseName(%struct.TYPE_12__*) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32* @xmlStrchr(i32*, i8 signext) #1

declare dso_local i32 @xmlNsErr(%struct.TYPE_12__*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @xmlParseExternalID(%struct.TYPE_12__*, i32**, i32) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
