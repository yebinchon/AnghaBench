; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlAddNextSibling.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlAddNextSibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_TEXT_NODE = common dso_local global i64 0, align 8
@XML_ATTRIBUTE_NODE = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @xmlAddNextSibling(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %8 = icmp eq %struct.TYPE_16__* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %176

16:                                               ; preds = %9
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = icmp eq %struct.TYPE_16__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %16
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %176

26:                                               ; preds = %19
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = icmp eq %struct.TYPE_16__* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %176

31:                                               ; preds = %26
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = call i32 @xmlUnlinkNode(%struct.TYPE_16__* %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XML_TEXT_NODE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %102

39:                                               ; preds = %31
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @XML_TEXT_NODE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @xmlNodeAddContent(%struct.TYPE_16__* %46, i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = call i32 @xmlFreeNode(%struct.TYPE_16__* %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %3, align 8
  br label %176

54:                                               ; preds = %39
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = icmp ne %struct.TYPE_16__* %57, null
  br i1 %58, label %59, label %101

59:                                               ; preds = %54
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XML_TEXT_NODE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %59
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %70, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %67
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i32* @xmlStrdup(i32 %80)
  store i32* %81, i32** %6, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32* @xmlStrcat(i32* %82, i32 %87)
  store i32* %88, i32** %6, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @xmlNodeSetContent(%struct.TYPE_16__* %91, i32* %92)
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @xmlFree(i32* %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = call i32 @xmlFreeNode(%struct.TYPE_16__* %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  store %struct.TYPE_16__* %100, %struct.TYPE_16__** %3, align 8
  br label %176

101:                                              ; preds = %67, %59, %54
  br label %114

102:                                              ; preds = %31
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = call %struct.TYPE_16__* @xmlAddPropSibling(%struct.TYPE_16__* %109, %struct.TYPE_16__* %110, %struct.TYPE_16__* %111)
  store %struct.TYPE_16__* %112, %struct.TYPE_16__** %3, align 8
  br label %176

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %101
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @xmlSetTreeDoc(%struct.TYPE_16__* %123, i32 %126)
  br label %128

128:                                              ; preds = %122, %114
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  store %struct.TYPE_15__* %131, %struct.TYPE_15__** %133, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 3
  store %struct.TYPE_16__* %134, %struct.TYPE_16__** %136, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 4
  store %struct.TYPE_16__* %139, %struct.TYPE_16__** %141, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  store %struct.TYPE_16__* %142, %struct.TYPE_16__** %144, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  %148 = icmp ne %struct.TYPE_16__* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %128
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  store %struct.TYPE_16__* %150, %struct.TYPE_16__** %154, align 8
  br label %155

155:                                              ; preds = %149, %128
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = icmp ne %struct.TYPE_15__* %158, null
  br i1 %159, label %160, label %174

160:                                              ; preds = %155
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %167 = icmp eq %struct.TYPE_16__* %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %160
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  store %struct.TYPE_16__* %169, %struct.TYPE_16__** %173, align 8
  br label %174

174:                                              ; preds = %168, %160, %155
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %175, %struct.TYPE_16__** %3, align 8
  br label %176

176:                                              ; preds = %174, %108, %77, %45, %30, %25, %15
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %177
}

declare dso_local i32 @xmlUnlinkNode(%struct.TYPE_16__*) #1

declare dso_local i32 @xmlNodeAddContent(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @xmlFreeNode(%struct.TYPE_16__*) #1

declare dso_local i32* @xmlStrdup(i32) #1

declare dso_local i32* @xmlStrcat(i32*, i32) #1

declare dso_local i32 @xmlNodeSetContent(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local %struct.TYPE_16__* @xmlAddPropSibling(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @xmlSetTreeDoc(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
