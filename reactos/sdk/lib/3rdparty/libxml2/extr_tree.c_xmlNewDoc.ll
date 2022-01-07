; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNewDoc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNewDoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, %struct.TYPE_5__*, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"building doc\00", align 1
@XML_DOCUMENT_NODE = common dso_local global i32 0, align 4
@XML_DOC_USERBUILT = common dso_local global i32 0, align 4
@XML_CHAR_ENCODING_UTF8 = common dso_local global i32 0, align 4
@__xmlRegisterCallbacks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @xmlNewDoc(i32* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* bitcast ([4 x i8]* @.str to i32*), i32** %3, align 8
  br label %8

8:                                                ; preds = %7, %1
  %9 = call i64 @xmlMalloc(i32 4)
  %10 = inttoptr i64 %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %58

15:                                               ; preds = %8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = call i32 @memset(%struct.TYPE_5__* %16, i32 0, i32 4)
  %18 = load i32, i32* @XML_DOCUMENT_NODE, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @xmlStrdup(i32* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 6
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = call i32 @xmlFree(%struct.TYPE_5__* %31)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %58

33:                                               ; preds = %15
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @XML_DOC_USERBUILT, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @XML_CHAR_ENCODING_UTF8, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* @__xmlRegisterCallbacks, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %33
  br i1 true, label %52, label %56

52:                                               ; preds = %51
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = ptrtoint %struct.TYPE_5__* %53 to i32
  %55 = call i32 @xmlRegisterNodeDefaultValue(i32 %54)
  br label %56

56:                                               ; preds = %52, %51, %33
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %2, align 8
  br label %58

58:                                               ; preds = %56, %29, %13
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %59
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlTreeErrMemory(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32* @xmlStrdup(i32*) #1

declare dso_local i32 @xmlFree(%struct.TYPE_5__*) #1

declare dso_local i32 @xmlRegisterNodeDefaultValue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
