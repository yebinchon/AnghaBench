; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseDocTypeDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseDocTypeDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_8__*, i32, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i32 (i32, i32*, i32*, i32*)* }

@SKIP_BLANKS = common dso_local global i32 0, align 4
@XML_ERR_NAME_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"xmlParseDocTypeDecl : no DOCTYPE name !\0A\00", align 1
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@RAW = common dso_local global i8 0, align 1
@XML_ERR_DOCTYPE_NOT_FINISHED = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseDocTypeDecl(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = call i32 @SKIP(i32 9)
  %7 = load i32, i32* @SKIP_BLANKS, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = call i32* @xmlParseName(%struct.TYPE_9__* %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = load i32, i32* @XML_ERR_NAME_REQUIRED, align 4
  %15 = call i32 @xmlFatalErrMsg(%struct.TYPE_9__* %13, i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 7
  store i32* %17, i32** %19, align 8
  %20 = load i32, i32* @SKIP_BLANKS, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i32* @xmlParseExternalID(%struct.TYPE_9__* %21, i32** %4, i32 1)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %16
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 6
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* @SKIP_BLANKS, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %31
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32 (i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32*, i32*)** %47, align 8
  %49 = icmp ne i32 (i32, i32*, i32*, i32*)* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %43
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32 (i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32*, i32*)** %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 %60(i32 %63, i32* %64, i32* %65, i32* %66)
  br label %68

68:                                               ; preds = %55, %50, %43, %31
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @XML_PARSER_EOF, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %90

75:                                               ; preds = %68
  %76 = load i8, i8* @RAW, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 91
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %90

80:                                               ; preds = %75
  %81 = load i8, i8* @RAW, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 62
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = load i32, i32* @XML_ERR_DOCTYPE_NOT_FINISHED, align 4
  %87 = call i32 @xmlFatalErr(%struct.TYPE_9__* %85, i32 %86, i32* null)
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* @NEXT, align 4
  br label %90

90:                                               ; preds = %88, %79, %74
  ret void
}

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32* @xmlParseName(%struct.TYPE_9__*) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32* @xmlParseExternalID(%struct.TYPE_9__*, i32**, i32) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
