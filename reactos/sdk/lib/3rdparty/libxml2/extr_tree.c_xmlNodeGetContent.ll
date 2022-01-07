; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNodeGetContent.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNodeGetContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlNodeGetContent(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %110

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %109 [
    i32 143, label %19
    i32 138, label %19
    i32 147, label %33
    i32 145, label %37
    i32 131, label %37
    i32 135, label %48
    i32 136, label %73
    i32 141, label %73
    i32 132, label %73
    i32 140, label %73
    i32 128, label %73
    i32 129, label %73
    i32 142, label %74
    i32 134, label %74
    i32 133, label %88
    i32 139, label %95
    i32 148, label %96
    i32 137, label %97
    i32 146, label %98
    i32 130, label %98
  ]

19:                                               ; preds = %15, %15
  %20 = call i32* @xmlBufCreateSize(i32 64)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %110

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @xmlBufGetNodeContent(i32* %25, %struct.TYPE_7__* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @xmlBufDetach(i32* %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @xmlBufFree(i32* %30)
  %32 = load i32*, i32** %5, align 8
  store i32* %32, i32** %2, align 8
  br label %110

33:                                               ; preds = %15
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = ptrtoint %struct.TYPE_7__* %34 to i32
  %36 = call i32* @xmlGetPropNodeValueInternal(i32 %35)
  store i32* %36, i32** %2, align 8
  br label %110

37:                                               ; preds = %15, %15
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32* @xmlStrdup(i32* %45)
  store i32* %46, i32** %2, align 8
  br label %110

47:                                               ; preds = %37
  store i32* null, i32** %2, align 8
  br label %110

48:                                               ; preds = %15
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @xmlGetDocEntity(i32 %51, i32 %54)
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32* null, i32** %2, align 8
  br label %110

59:                                               ; preds = %48
  %60 = call i32* (...) @xmlBufCreate()
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32* null, i32** %2, align 8
  br label %110

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = call i32 @xmlBufGetNodeContent(i32* %65, %struct.TYPE_7__* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = call i32* @xmlBufDetach(i32* %68)
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @xmlBufFree(i32* %70)
  %72 = load i32*, i32** %8, align 8
  store i32* %72, i32** %2, align 8
  br label %110

73:                                               ; preds = %15, %15, %15, %15, %15, %15
  store i32* null, i32** %2, align 8
  br label %110

74:                                               ; preds = %15, %15
  %75 = call i32* (...) @xmlBufCreate()
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32* null, i32** %2, align 8
  br label %110

79:                                               ; preds = %74
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = call i32 @xmlBufGetNodeContent(i32* %80, %struct.TYPE_7__* %81)
  %83 = load i32*, i32** %9, align 8
  %84 = call i32* @xmlBufDetach(i32* %83)
  store i32* %84, i32** %10, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @xmlBufFree(i32* %85)
  %87 = load i32*, i32** %10, align 8
  store i32* %87, i32** %2, align 8
  br label %110

88:                                               ; preds = %15
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = bitcast %struct.TYPE_7__* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32* @xmlStrdup(i32* %92)
  store i32* %93, i32** %11, align 8
  %94 = load i32*, i32** %11, align 8
  store i32* %94, i32** %2, align 8
  br label %110

95:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %110

96:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %110

97:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %110

98:                                               ; preds = %15, %15
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32* @xmlStrdup(i32* %106)
  store i32* %107, i32** %2, align 8
  br label %110

108:                                              ; preds = %98
  store i32* null, i32** %2, align 8
  br label %110

109:                                              ; preds = %15
  store i32* null, i32** %2, align 8
  br label %110

110:                                              ; preds = %109, %108, %103, %97, %96, %95, %88, %79, %78, %73, %64, %63, %58, %47, %42, %33, %24, %23, %14
  %111 = load i32*, i32** %2, align 8
  ret i32* %111
}

declare dso_local i32* @xmlBufCreateSize(i32) #1

declare dso_local i32 @xmlBufGetNodeContent(i32*, %struct.TYPE_7__*) #1

declare dso_local i32* @xmlBufDetach(i32*) #1

declare dso_local i32 @xmlBufFree(i32*) #1

declare dso_local i32* @xmlGetPropNodeValueInternal(i32) #1

declare dso_local i32* @xmlStrdup(i32*) #1

declare dso_local i32* @xmlGetDocEntity(i32, i32) #1

declare dso_local i32* @xmlBufCreate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
