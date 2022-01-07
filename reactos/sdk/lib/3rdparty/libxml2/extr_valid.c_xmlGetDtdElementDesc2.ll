; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_valid.c_xmlGetDtdElementDesc2.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_valid.c_xmlGetDtdElementDesc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"element table allocation failed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@XML_ELEMENT_DECL = common dso_local global i32 0, align 4
@XML_ELEMENT_TYPE_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, i32*, i32)* @xmlGetDtdElementDesc2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @xmlGetDtdElementDesc2(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %119

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %16
  store i32* null, i32** %12, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %12, align 8
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %119

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32*, i32** %12, align 8
  %44 = call i32* @xmlHashCreateDict(i32 0, i32* %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  br label %50

50:                                               ; preds = %42, %36
  %51 = load i32*, i32** %8, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @xmlVErrMemory(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %119

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %16
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32* @xmlSplitQName2(i32* %60, i32** %11)
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32*, i32** %10, align 8
  store i32* %65, i32** %6, align 8
  br label %66

66:                                               ; preds = %64, %56
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call %struct.TYPE_10__* @xmlHashLookup2(i32* %67, i32* %68, i32* %69)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %9, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = icmp eq %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %105

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %73
  %77 = call i64 @xmlMalloc(i32 4)
  %78 = inttoptr i64 %77 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %9, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %80 = icmp eq %struct.TYPE_10__* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @xmlVErrMemory(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %119

83:                                               ; preds = %76
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = call i32 @memset(%struct.TYPE_10__* %84, i32 0, i32 4)
  %86 = load i32, i32* @XML_ELEMENT_DECL, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i8* @xmlStrdup(i32* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i8* @xmlStrdup(i32* %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @XML_ELEMENT_TYPE_UNDEFINED, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = call i32 @xmlHashAddEntry2(i32* %100, i32* %101, i32* %102, %struct.TYPE_10__* %103)
  br label %105

105:                                              ; preds = %83, %73, %66
  %106 = load i32*, i32** %11, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @xmlFree(i32* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32*, i32** %10, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @xmlFree(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %4, align 8
  br label %119

119:                                              ; preds = %117, %81, %53, %35, %15
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %120
}

declare dso_local i32* @xmlHashCreateDict(i32, i32*) #1

declare dso_local i32 @xmlVErrMemory(i32*, i8*) #1

declare dso_local i32* @xmlSplitQName2(i32*, i32**) #1

declare dso_local %struct.TYPE_10__* @xmlHashLookup2(i32*, i32*, i32*) #1

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @xmlStrdup(i32*) #1

declare dso_local i32 @xmlHashAddEntry2(i32*, i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
