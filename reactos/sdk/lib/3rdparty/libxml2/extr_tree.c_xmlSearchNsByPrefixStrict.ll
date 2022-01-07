; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlSearchNsByPrefixStrict.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlSearchNsByPrefixStrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32*, i32* }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32*, %struct.TYPE_6__**)* @xmlSearchNsByPrefixStrict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlSearchNsByPrefixStrict(i32* %0, %struct.TYPE_7__* %1, i32* %2, %struct.TYPE_6__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %14, %4
  store i32 -1, i32* %5, align 4
  br label %129

24:                                               ; preds = %17
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %26 = icmp ne %struct.TYPE_6__** %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %28, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @IS_STR_XML(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %35 = icmp ne %struct.TYPE_6__** %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = call %struct.TYPE_6__* @xmlTreeEnsureXMLDecl(i32* %37)
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %129

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %33
  store i32 1, i32* %5, align 4
  br label %129

46:                                               ; preds = %29
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %10, align 8
  br label %48

48:                                               ; preds = %126, %46
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %97

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %11, align 8
  br label %63

63:                                               ; preds = %93, %59
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %64, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %63
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @xmlStrEqual(i32* %70, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %69, %63
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %129

82:                                               ; preds = %76
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %84 = icmp ne %struct.TYPE_6__** %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  store i32 1, i32* %5, align 4
  br label %129

89:                                               ; preds = %69
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %11, align 8
  br label %93

93:                                               ; preds = %89
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %95 = icmp ne %struct.TYPE_6__* %94, null
  br i1 %95, label %63, label %96

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %96, %54
  br label %112

98:                                               ; preds = %48
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @XML_ENTITY_NODE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @XML_ENTITY_DECL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104, %98
  store i32 0, i32* %5, align 4
  br label %129

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %97
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %10, align 8
  br label %116

116:                                              ; preds = %112
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %118 = icmp ne %struct.TYPE_7__* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %124 = bitcast %struct.TYPE_7__* %123 to i32*
  %125 = icmp ne i32* %122, %124
  br label %126

126:                                              ; preds = %119, %116
  %127 = phi i1 [ false, %116 ], [ %125, %119 ]
  br i1 %127, label %48, label %128

128:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %110, %88, %81, %45, %43, %23
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i64 @IS_STR_XML(i32*) #1

declare dso_local %struct.TYPE_6__* @xmlTreeEnsureXMLDecl(i32*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
