; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCreateIOParserCtxt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCreateIOParserCtxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@XML_SAX2_MAGIC = common dso_local global i64 0, align 8
@xmlDefaultSAXHandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @xmlCreateIOParserCtxt(%struct.TYPE_14__* %0, i8* %1, i32* %2, i32 (i8*)* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 (i8*)* %3, i32 (i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %109

20:                                               ; preds = %6
  %21 = load i32*, i32** %10, align 8
  %22 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32* @xmlParserInputBufferCreateIO(i32* %21, i32 (i8*)* %22, i8* %23, i32 %24)
  store i32* %25, i32** %16, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %30 = icmp ne i32 (i8*)* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 %32(i8* %33)
  br label %35

35:                                               ; preds = %31, %28
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %109

36:                                               ; preds = %20
  %37 = call %struct.TYPE_15__* (...) @xmlNewParserCtxt()
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %14, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %39 = icmp eq %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32*, i32** %16, align 8
  %42 = call i32 @xmlFreeParserInputBuffer(i32* %41)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %109

43:                                               ; preds = %36
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %94

46:                                               ; preds = %43
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = call i32 @xmlFree(%struct.TYPE_14__* %49)
  %51 = call i64 @xmlMalloc(i32 4)
  %52 = inttoptr i64 %51 to %struct.TYPE_14__*
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = icmp eq %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %61 = call i32 @xmlErrMemory(%struct.TYPE_15__* %60, i32* null)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %63 = call i32 @xmlFreeParserCtxt(%struct.TYPE_15__* %62)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %109

64:                                               ; preds = %46
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = call i32 @memset(%struct.TYPE_14__* %67, i32 0, i32 4)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @XML_SAX2_MAGIC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = call i32 @memcpy(%struct.TYPE_14__* %77, %struct.TYPE_14__* %78, i32 4)
  br label %86

80:                                               ; preds = %64
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = call i32 @memcpy(%struct.TYPE_14__* %83, %struct.TYPE_14__* %84, i32 4)
  br label %86

86:                                               ; preds = %80, %74
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %89, %86
  br label %94

94:                                               ; preds = %93, %43
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32* @xmlNewIOInputStream(%struct.TYPE_15__* %95, i32* %96, i32 %97)
  store i32* %98, i32** %15, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %103 = call i32 @xmlFreeParserCtxt(%struct.TYPE_15__* %102)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %109

104:                                              ; preds = %94
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @inputPush(%struct.TYPE_15__* %105, i32* %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %7, align 8
  br label %109

109:                                              ; preds = %104, %101, %59, %40, %35, %19
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %110
}

declare dso_local i32* @xmlParserInputBufferCreateIO(i32*, i32 (i8*)*, i8*, i32) #1

declare dso_local %struct.TYPE_15__* @xmlNewParserCtxt(...) #1

declare dso_local i32 @xmlFreeParserInputBuffer(i32*) #1

declare dso_local i32 @xmlFree(%struct.TYPE_14__*) #1

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @xmlFreeParserCtxt(%struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32* @xmlNewIOInputStream(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @inputPush(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
