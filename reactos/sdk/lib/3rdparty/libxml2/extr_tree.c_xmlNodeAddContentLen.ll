; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNodeAddContentLen.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNodeAddContentLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32*, i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32* }

@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNodeAddContentLen(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = icmp eq %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %113

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %113

17:                                               ; preds = %13
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %113 [
    i32 143, label %21
    i32 138, label %21
    i32 147, label %53
    i32 130, label %54
    i32 146, label %54
    i32 135, label %54
    i32 136, label %54
    i32 131, label %54
    i32 145, label %54
    i32 132, label %54
    i32 142, label %111
    i32 140, label %111
    i32 134, label %111
    i32 141, label %111
    i32 133, label %111
    i32 128, label %111
    i32 129, label %111
    i32 139, label %112
    i32 148, label %112
    i32 137, label %112
  ]

21:                                               ; preds = %17, %17
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %7, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_11__* @xmlNewTextLen(i32* %25, i32 %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %8, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = icmp ne %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %21
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = call %struct.TYPE_11__* @xmlAddChild(%struct.TYPE_11__* %31, %struct.TYPE_11__* %32)
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %9, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = icmp ne %struct.TYPE_11__* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %113

38:                                               ; preds = %30
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = icmp eq %struct.TYPE_11__* %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = call i32 @xmlTextMerge(%struct.TYPE_11__* %48, %struct.TYPE_11__* %49)
  br label %51

51:                                               ; preds = %47, %41, %38
  br label %52

52:                                               ; preds = %51, %21
  br label %113

53:                                               ; preds = %17
  br label %113

54:                                               ; preds = %17, %17, %17, %17, %17, %17, %17
  %55 = load i32*, i32** %5, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %110

57:                                               ; preds = %54
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = bitcast i32** %62 to i32*
  %64 = icmp eq i32* %60, %63
  br i1 %64, label %88, label %65

65:                                               ; preds = %57
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %69, label %70, label %101

70:                                               ; preds = %65
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %101

77:                                               ; preds = %70
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @xmlDictOwns(i32* %82, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %77, %57
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32* @xmlStrncatNew(i32* %91, i32* %92, i32 %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  store i32* null, i32** %98, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  store i32* null, i32** %100, align 8
  br label %113

101:                                              ; preds = %77, %70, %65
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32* @xmlStrncat(i32* %104, i32* %105, i32 %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store i32* %107, i32** %109, align 8
  br label %110

110:                                              ; preds = %101, %54
  br label %111

111:                                              ; preds = %17, %17, %17, %17, %17, %17, %17, %110
  br label %113

112:                                              ; preds = %17, %17, %17
  br label %113

113:                                              ; preds = %12, %16, %37, %17, %112, %111, %88, %53, %52
  ret void
}

declare dso_local %struct.TYPE_11__* @xmlNewTextLen(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @xmlAddChild(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @xmlTextMerge(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @xmlDictOwns(i32*, i32*) #1

declare dso_local i32* @xmlStrncatNew(i32*, i32*, i32) #1

declare dso_local i32* @xmlStrncat(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
