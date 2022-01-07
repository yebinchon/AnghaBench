; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlNewInputFromFile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlNewInputFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i8* }

@xmlParserDebugEntities = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"new input from file: %s\0A\00", align 1
@XML_CHAR_ENCODING_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to load external entity: NULL filename \0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to load external entity \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @xmlNewInputFromFile(%struct.TYPE_16__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i64, i64* @xmlParserDebugEntities, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @xmlGenericErrorContext, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @xmlGenericError(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = icmp eq %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %120

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %23 = call %struct.TYPE_15__* @xmlParserInputBufferCreateFilename(i8* %21, i32 %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %6, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = icmp eq %struct.TYPE_15__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = call i32 @__xmlLoaderErr(%struct.TYPE_16__* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* null)
  br label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @__xmlLoaderErr(%struct.TYPE_16__* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %29
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %120

37:                                               ; preds = %20
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = call %struct.TYPE_14__* @xmlNewInputStream(%struct.TYPE_16__* %38)
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = icmp eq %struct.TYPE_14__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %120

43:                                               ; preds = %37
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = call %struct.TYPE_14__* @xmlCheckHTTPInput(%struct.TYPE_16__* %47, %struct.TYPE_14__* %48)
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %7, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = icmp eq %struct.TYPE_14__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %120

53:                                               ; preds = %43
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** %5, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = call i32* @xmlStrdup(i32* %60)
  store i32* %61, i32** %9, align 8
  br label %68

62:                                               ; preds = %53
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = call i32* @xmlStrdup(i32* %66)
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i32*, i32** %9, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = call i8* @xmlParserGetDirectory(i8* %70)
  store i8* %71, i8** %8, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @xmlFree(i8* %79)
  br label %81

81:                                               ; preds = %76, %68
  %82 = load i32*, i32** %9, align 8
  %83 = call i64 @xmlCanonicPath(i32* %82)
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32*, i32** %9, align 8
  %91 = bitcast i32* %90 to i8*
  %92 = call i32 @xmlFree(i8* %91)
  br label %93

93:                                               ; preds = %89, %81
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = call i32 @xmlBufResetInput(i32 %101, %struct.TYPE_14__* %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %93
  %109 = load i8*, i8** %8, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i8*, i8** %8, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = call i32* @xmlStrdup(i32* %113)
  %115 = bitcast i32* %114 to i8*
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %111, %108, %93
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %3, align 8
  br label %120

120:                                              ; preds = %118, %52, %42, %36, %19
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %121
}

declare dso_local i32 @xmlGenericError(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @xmlParserInputBufferCreateFilename(i8*, i32) #1

declare dso_local i32 @__xmlLoaderErr(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local %struct.TYPE_14__* @xmlNewInputStream(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_14__* @xmlCheckHTTPInput(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32* @xmlStrdup(i32*) #1

declare dso_local i8* @xmlParserGetDirectory(i8*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i64 @xmlCanonicPath(i32*) #1

declare dso_local i32 @xmlBufResetInput(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
