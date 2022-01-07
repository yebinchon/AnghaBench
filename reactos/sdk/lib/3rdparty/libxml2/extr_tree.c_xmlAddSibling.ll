; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlAddSibling.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlAddSibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, i32* }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_ATTRIBUTE_NODE = common dso_local global i64 0, align 8
@XML_TEXT_NODE = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @xmlAddSibling(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = icmp eq %struct.TYPE_13__* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %162

16:                                               ; preds = %9
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = icmp eq %struct.TYPE_13__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %16
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %162

26:                                               ; preds = %19
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = icmp eq %struct.TYPE_13__* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %162

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = icmp ne %struct.TYPE_13__* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %42
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = icmp eq %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %4, align 8
  br label %82

71:                                               ; preds = %56, %49, %42, %37, %31
  br label %72

72:                                               ; preds = %77, %71
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = icmp ne %struct.TYPE_13__* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %4, align 8
  br label %72

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %65
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = call i32 @xmlUnlinkNode(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @XML_TEXT_NODE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %82
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @XML_TEXT_NODE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %90
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @xmlNodeAddContent(%struct.TYPE_13__* %105, i32 %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = call i32 @xmlFreeNode(%struct.TYPE_13__* %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %3, align 8
  br label %162

113:                                              ; preds = %96, %90, %82
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = call %struct.TYPE_13__* @xmlAddPropSibling(%struct.TYPE_13__* %120, %struct.TYPE_13__* %121, %struct.TYPE_13__* %122)
  store %struct.TYPE_13__* %123, %struct.TYPE_13__** %3, align 8
  br label %162

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @xmlSetTreeDoc(%struct.TYPE_13__* %134, i32 %137)
  br label %139

139:                                              ; preds = %133, %125
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  store %struct.TYPE_13__* %142, %struct.TYPE_13__** %6, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 5
  store %struct.TYPE_13__* %143, %struct.TYPE_13__** %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %147, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 4
  store %struct.TYPE_13__* %148, %struct.TYPE_13__** %150, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 3
  store %struct.TYPE_13__* %151, %struct.TYPE_13__** %153, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %155 = icmp ne %struct.TYPE_13__* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %139
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  store %struct.TYPE_13__* %157, %struct.TYPE_13__** %159, align 8
  br label %160

160:                                              ; preds = %156, %139
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %3, align 8
  br label %162

162:                                              ; preds = %160, %119, %104, %30, %25, %15
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %163
}

declare dso_local i32 @xmlUnlinkNode(%struct.TYPE_13__*) #1

declare dso_local i32 @xmlNodeAddContent(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xmlFreeNode(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @xmlAddPropSibling(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @xmlSetTreeDoc(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
