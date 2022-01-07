; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseInternalSubset.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseInternalSubset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@RAW = common dso_local global i8 0, align 1
@XML_PARSER_DTD = common dso_local global i64 0, align 8
@NEXT = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@CUR_PTR = common dso_local global i32* null, align 8
@SKIP_BLANKS = common dso_local global i32 0, align 4
@XML_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"xmlParseInternalSubset: error detected in Markup declaration\0A\00", align 1
@XML_ERR_DOCTYPE_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @xmlParseInternalSubset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlParseInternalSubset(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load i8, i8* @RAW, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 91
  br i1 %8, label %9, label %81

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  %13 = load i64, i64* @XML_PARSER_DTD, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* @NEXT, align 4
  br label %17

17:                                               ; preds = %72, %9
  %18 = load i8, i8* @RAW, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 93
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21, %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XML_PARSER_EOF, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ false, %21 ], [ %32, %27 ]
  br i1 %34, label %35, label %73

35:                                               ; preds = %33
  %36 = load i32*, i32** @CUR_PTR, align 8
  store i32* %36, i32** %4, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @SKIP_BLANKS, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = call i32 @xmlParseMarkupDecl(%struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = call i32 @xmlParsePEReference(%struct.TYPE_9__* %45)
  %47 = load i32*, i32** @CUR_PTR, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = icmp eq i32* %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %35
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = load i32, i32* @XML_ERR_INTERNAL_ERROR, align 4
  %61 = call i32 @xmlFatalErr(%struct.TYPE_9__* %59, i32 %60, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = call i32 @xmlPopInput(%struct.TYPE_9__* %68)
  br label %71

70:                                               ; preds = %58
  br label %73

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %50, %35
  br label %17

73:                                               ; preds = %70, %33
  %74 = load i8, i8* @RAW, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 93
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @NEXT, align 4
  %79 = load i32, i32* @SKIP_BLANKS, align 4
  br label %80

80:                                               ; preds = %77, %73
  br label %81

81:                                               ; preds = %80, %1
  %82 = load i8, i8* @RAW, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 62
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = load i32, i32* @XML_ERR_DOCTYPE_NOT_FINISHED, align 4
  %88 = call i32 @xmlFatalErr(%struct.TYPE_9__* %86, i32 %87, i8* null)
  br label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @NEXT, align 4
  br label %91

91:                                               ; preds = %89, %85
  ret void
}

declare dso_local i32 @xmlParseMarkupDecl(%struct.TYPE_9__*) #1

declare dso_local i32 @xmlParsePEReference(%struct.TYPE_9__*) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @xmlPopInput(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
