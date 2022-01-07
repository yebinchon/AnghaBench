; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlHasProp.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlHasProp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_10__ = type { i32* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@xmlCheckDTD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @xmlHasProp(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %11, %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %95

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %6, align 8
  br label %25

25:                                               ; preds = %37, %21
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @xmlStrEqual(i32 %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %3, align 8
  br label %95

37:                                               ; preds = %28
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %6, align 8
  br label %25

41:                                               ; preds = %25
  %42 = load i32, i32* @xmlCheckDTD, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %95

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %7, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %94

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %93

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call %struct.TYPE_10__* @xmlGetDtdAttrDesc(i32* %59, i32 %62, i32* %63)
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %8, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = icmp eq %struct.TYPE_10__* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %56
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call %struct.TYPE_10__* @xmlGetDtdAttrDesc(i32* %75, i32 %78, i32* %79)
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %8, align 8
  br label %81

81:                                               ; preds = %72, %67, %56
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = icmp ne %struct.TYPE_10__* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = bitcast %struct.TYPE_10__* %90 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %3, align 8
  br label %95

92:                                               ; preds = %84, %81
  br label %93

93:                                               ; preds = %92, %51
  br label %94

94:                                               ; preds = %93, %45
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %95

95:                                               ; preds = %94, %89, %44, %35, %20
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %96
}

declare dso_local i64 @xmlStrEqual(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @xmlGetDtdAttrDesc(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
