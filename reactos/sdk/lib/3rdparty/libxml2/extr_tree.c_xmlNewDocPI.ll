; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNewDocPI.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNewDocPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"building PI\00", align 1
@XML_PI_NODE = common dso_local global i32 0, align 4
@__xmlRegisterCallbacks = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @xmlNewDocPI(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %65

12:                                               ; preds = %3
  %13 = call i64 @xmlMalloc(i32 4)
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %65

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = call i32 @memset(%struct.TYPE_7__* %20, i32 0, i32 4)
  %22 = load i32, i32* @XML_PI_NODE, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i8* @xmlDictLookup(i32* %35, i32* %36, i32 -1)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %45

40:                                               ; preds = %27, %19
  %41 = load i32*, i32** %6, align 8
  %42 = call i8* @xmlStrdup(i32* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %40, %32
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32*, i32** %7, align 8
  %50 = call i8* @xmlStrdup(i32* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %56, align 8
  %57 = load i64, i64* @__xmlRegisterCallbacks, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  br i1 true, label %60, label %63

60:                                               ; preds = %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = call i32 @xmlRegisterNodeDefaultValue(%struct.TYPE_7__* %61)
  br label %63

63:                                               ; preds = %60, %59, %53
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %4, align 8
  br label %65

65:                                               ; preds = %63, %17, %11
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %66
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlTreeErrMemory(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @xmlDictLookup(i32*, i32*, i32) #1

declare dso_local i8* @xmlStrdup(i32*) #1

declare dso_local i32 @xmlRegisterNodeDefaultValue(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
