; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashRemoveEntry3.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashRemoveEntry3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlHashRemoveEntry3(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3, i32 (i32*, %struct.TYPE_12__*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i32*, %struct.TYPE_12__*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 (i32*, %struct.TYPE_12__*)* %4, i32 (i32*, %struct.TYPE_12__*)** %11, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %5
  store i32 -1, i32* %6, align 4
  br label %166

21:                                               ; preds = %17
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @xmlHashComputeKey(%struct.TYPE_11__* %22, i32* %23, i32* %24, i32* %25)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %166

36:                                               ; preds = %21
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %40
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %13, align 8
  br label %42

42:                                               ; preds = %161, %36
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %165

45:                                               ; preds = %42
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @xmlStrEqual(%struct.TYPE_12__* %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %159

52:                                               ; preds = %45
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @xmlStrEqual(%struct.TYPE_12__* %55, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %159

59:                                               ; preds = %52
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @xmlStrEqual(%struct.TYPE_12__* %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %159

66:                                               ; preds = %59
  %67 = load i32 (i32*, %struct.TYPE_12__*)*, i32 (i32*, %struct.TYPE_12__*)** %11, align 8
  %68 = icmp ne i32 (i32*, %struct.TYPE_12__*)* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32 (i32*, %struct.TYPE_12__*)*, i32 (i32*, %struct.TYPE_12__*)** %11, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = call i32 %75(i32* %78, %struct.TYPE_12__* %81)
  br label %83

83:                                               ; preds = %74, %69, %66
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 5
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %121

90:                                               ; preds = %83
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = icmp ne %struct.TYPE_12__* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = call i32 @xmlFree(%struct.TYPE_12__* %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = icmp ne %struct.TYPE_12__* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = call i32 @xmlFree(%struct.TYPE_12__* %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = icmp ne %struct.TYPE_12__* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = call i32 @xmlFree(%struct.TYPE_12__* %118)
  br label %120

120:                                              ; preds = %115, %110
  br label %121

121:                                              ; preds = %120, %83
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %123 = icmp ne %struct.TYPE_12__* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %131 = call i32 @xmlFree(%struct.TYPE_12__* %130)
  br label %154

132:                                              ; preds = %121
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = icmp eq %struct.TYPE_12__* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  br label %153

140:                                              ; preds = %132
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  store %struct.TYPE_12__* %143, %struct.TYPE_12__** %13, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = load i64, i64* %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %147
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %150 = call i32 @memcpy(%struct.TYPE_12__* %148, %struct.TYPE_12__* %149, i32 4)
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %152 = call i32 @xmlFree(%struct.TYPE_12__* %151)
  br label %153

153:                                              ; preds = %140, %137
  br label %154

154:                                              ; preds = %153, %124
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %156, align 8
  store i32 0, i32* %6, align 4
  br label %166

159:                                              ; preds = %59, %52, %45
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %160, %struct.TYPE_12__** %14, align 8
  br label %161

161:                                              ; preds = %159
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  store %struct.TYPE_12__* %164, %struct.TYPE_12__** %13, align 8
  br label %42

165:                                              ; preds = %42
  store i32 -1, i32* %6, align 4
  br label %166

166:                                              ; preds = %165, %154, %35, %20
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i64 @xmlHashComputeKey(%struct.TYPE_11__*, i32*, i32*, i32*) #1

declare dso_local i64 @xmlStrEqual(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @xmlFree(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
