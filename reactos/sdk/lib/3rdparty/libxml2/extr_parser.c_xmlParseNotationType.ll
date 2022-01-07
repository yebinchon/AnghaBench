; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseNotationType.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseNotationType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32 }

@RAW = common dso_local global i8 0, align 1
@XML_ERR_NOTATION_NOT_STARTED = common dso_local global i32 0, align 4
@SHRINK = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i32 0, align 4
@XML_ERR_NAME_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Name expected in NOTATION declaration\0A\00", align 1
@XML_DTD_DUP_TOKEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"standalone: attribute notation value token %s duplicated\0A\00", align 1
@XML_ERR_NOTATION_NOT_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @xmlParseNotationType(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %9 = load i8, i8* @RAW, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 40
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = load i32, i32* @XML_ERR_NOTATION_NOT_STARTED, align 4
  %15 = call i32 @xmlFatalErr(%struct.TYPE_11__* %13, i32 %14, i32* null)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %103

16:                                               ; preds = %1
  %17 = load i32, i32* @SHRINK, align 4
  br label %18

18:                                               ; preds = %86, %16
  %19 = load i32, i32* @NEXT, align 4
  %20 = load i32, i32* @SKIP_BLANKS, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call i32* @xmlParseName(%struct.TYPE_11__* %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = load i32, i32* @XML_ERR_NAME_REQUIRED, align 4
  %28 = call i32 @xmlFatalErrMsg(%struct.TYPE_11__* %26, i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = call i32 @xmlFreeEnumeration(%struct.TYPE_12__* %29)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %103

31:                                               ; preds = %18
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %8, align 8
  br label %33

33:                                               ; preds = %58, %31
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @xmlStrEqual(i32* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = load i32, i32* @XML_DTD_DUP_TOKEN, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @xmlValidityError(%struct.TYPE_11__* %44, i32 %45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32* %46, i32* null)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @xmlDictOwns(i32 %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @xmlFree(i32* %55)
  br label %57

57:                                               ; preds = %54, %43
  br label %62

58:                                               ; preds = %36
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %8, align 8
  br label %33

62:                                               ; preds = %57, %33
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = icmp eq %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load i32*, i32** %4, align 8
  %67 = call %struct.TYPE_12__* @xmlCreateEnumeration(i32* %66)
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %7, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = icmp eq %struct.TYPE_12__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = call i32 @xmlFreeEnumeration(%struct.TYPE_12__* %71)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %103

73:                                               ; preds = %65
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = icmp eq %struct.TYPE_12__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %5, align 8
  br label %83

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %81, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %6, align 8
  br label %83

83:                                               ; preds = %78, %76
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i32, i32* @SKIP_BLANKS, align 4
  br label %86

86:                                               ; preds = %84
  %87 = load i8, i8* @RAW, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 124
  br i1 %89, label %18, label %90

90:                                               ; preds = %86
  %91 = load i8, i8* @RAW, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 41
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = load i32, i32* @XML_ERR_NOTATION_NOT_FINISHED, align 4
  %97 = call i32 @xmlFatalErr(%struct.TYPE_11__* %95, i32 %96, i32* null)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = call i32 @xmlFreeEnumeration(%struct.TYPE_12__* %98)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %103

100:                                              ; preds = %90
  %101 = load i32, i32* @NEXT, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %2, align 8
  br label %103

103:                                              ; preds = %100, %94, %70, %25, %12
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %104
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32* @xmlParseName(%struct.TYPE_11__*) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @xmlFreeEnumeration(%struct.TYPE_12__*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32) #1

declare dso_local i32 @xmlValidityError(%struct.TYPE_11__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @xmlDictOwns(i32, i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local %struct.TYPE_12__* @xmlCreateEnumeration(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
