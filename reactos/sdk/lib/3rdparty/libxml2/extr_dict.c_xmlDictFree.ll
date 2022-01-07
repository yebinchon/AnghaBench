; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictFree.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }

@xmlDictInitialized = common dso_local global i32 0, align 4
@xmlDictMutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlDictFree(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %120

12:                                               ; preds = %1
  %13 = load i32, i32* @xmlDictInitialized, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = call i32 (...) @__xmlInitializeDict()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %120

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i32, i32* @xmlDictMutex, align 4
  %22 = call i32 @xmlRMutexLock(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @xmlDictMutex, align 4
  %33 = call i32 @xmlRMutexUnlock(i32 %32)
  br label %120

34:                                               ; preds = %20
  %35 = load i32, i32* @xmlDictMutex, align 4
  %36 = call i32 @xmlRMutexUnlock(i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  call void @xmlDictFree(%struct.TYPE_6__* %44)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %103

50:                                               ; preds = %45
  store i64 0, i64* %3, align 8
  br label %51

51:                                               ; preds = %95, %50
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br label %62

62:                                               ; preds = %57, %51
  %63 = phi i1 [ false, %51 ], [ %61, %57 ]
  br i1 %63, label %64, label %98

64:                                               ; preds = %62
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %68
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %4, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %95

75:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  br label %76

76:                                               ; preds = %88, %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = icmp ne %struct.TYPE_6__* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = call i32 @xmlFree(%struct.TYPE_6__* %86)
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %90, align 8
  store i32 0, i32* %6, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %4, align 8
  br label %76

94:                                               ; preds = %76
  br label %95

95:                                               ; preds = %94, %74
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %3, align 8
  br label %51

98:                                               ; preds = %62
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = call i32 @xmlFree(%struct.TYPE_6__* %101)
  br label %103

103:                                              ; preds = %98, %45
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %7, align 8
  br label %107

107:                                              ; preds = %110, %103
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = icmp ne %struct.TYPE_6__* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %8, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = call i32 @xmlFree(%struct.TYPE_6__* %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %7, align 8
  br label %107

117:                                              ; preds = %107
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %119 = call i32 @xmlFree(%struct.TYPE_6__* %118)
  br label %120

120:                                              ; preds = %117, %31, %18, %11
  ret void
}

declare dso_local i32 @__xmlInitializeDict(...) #1

declare dso_local i32 @xmlRMutexLock(i32) #1

declare dso_local i32 @xmlRMutexUnlock(i32) #1

declare dso_local i32 @xmlFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
