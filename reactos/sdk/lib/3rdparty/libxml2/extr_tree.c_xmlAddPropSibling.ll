; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlAddPropSibling.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlAddPropSibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32* }

@XML_ATTRIBUTE_NODE = common dso_local global i64 0, align 8
@XML_ATTRIBUTE_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*)* @xmlAddPropSibling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @xmlAddPropSibling(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %10 = icmp eq %struct.TYPE_13__* %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %11
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %20, %17, %11, %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %145

36:                                               ; preds = %29, %26
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = icmp eq %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_14__* @xmlHasNsProp(%struct.TYPE_15__* %44, i32 %47, i32* null)
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %8, align 8
  br label %62

49:                                               ; preds = %36
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call %struct.TYPE_14__* @xmlHasNsProp(%struct.TYPE_15__* %52, i32 %55, i32* %60)
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %8, align 8
  br label %62

62:                                               ; preds = %49, %41
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @xmlSetTreeDoc(%struct.TYPE_13__* %71, i64 %74)
  br label %76

76:                                               ; preds = %70, %62
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  store %struct.TYPE_15__* %79, %struct.TYPE_15__** %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = icmp ne %struct.TYPE_13__* %85, null
  br i1 %86, label %87, label %107

87:                                               ; preds = %76
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 4
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = icmp ne %struct.TYPE_13__* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %87
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %105, align 8
  br label %106

106:                                              ; preds = %100, %87
  br label %114

107:                                              ; preds = %76
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %110, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %113, align 8
  br label %114

114:                                              ; preds = %107, %106
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = icmp eq %struct.TYPE_13__* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = icmp ne %struct.TYPE_15__* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %126 = bitcast %struct.TYPE_13__* %125 to %struct.TYPE_14__*
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store %struct.TYPE_14__* %126, %struct.TYPE_14__** %130, align 8
  br label %131

131:                                              ; preds = %124, %119, %114
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %133 = icmp ne %struct.TYPE_14__* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @XML_ATTRIBUTE_DECL, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %142 = call i32 @xmlRemoveProp(%struct.TYPE_14__* %141)
  br label %143

143:                                              ; preds = %140, %134, %131
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %144, %struct.TYPE_13__** %4, align 8
  br label %145

145:                                              ; preds = %143, %35
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %146
}

declare dso_local %struct.TYPE_14__* @xmlHasNsProp(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @xmlSetTreeDoc(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @xmlRemoveProp(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
