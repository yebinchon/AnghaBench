; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlDOMWrapNsMapAddItem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlDOMWrapNsMapAddItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [25 x i8] c"allocating namespace map\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"allocating namespace map item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__**, i32, i8*, i8*, i32)* @xmlDOMWrapNsMapAddItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @xmlDOMWrapNsMapAddItem(%struct.TYPE_6__** %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %15 = icmp eq %struct.TYPE_6__** %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %128

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %128

24:                                               ; preds = %20, %17
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %13, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = icmp eq %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = call i64 @xmlMalloc(i32 4)
  %31 = inttoptr i64 %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %13, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %128

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %38 = call i32 @memset(%struct.TYPE_6__* %37, i32 0, i32 4)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %40, align 8
  br label %41

41:                                               ; preds = %36, %24
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %12, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = call i32 @memset(%struct.TYPE_6__* %55, i32 0, i32 4)
  br label %67

57:                                               ; preds = %41
  %58 = call i64 @xmlMalloc(i32 4)
  %59 = inttoptr i64 %58 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %12, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %61 = icmp eq %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %128

64:                                               ; preds = %57
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %66 = call i32 @memset(%struct.TYPE_6__* %65, i32 0, i32 4)
  br label %67

67:                                               ; preds = %64, %46
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = icmp eq %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 7
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %78, align 8
  br label %115

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 6
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 7
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 5
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 7
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %95, align 8
  br label %114

96:                                               ; preds = %79
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 6
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 5
  store %struct.TYPE_6__* %107, %struct.TYPE_6__** %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %112, align 8
  br label %113

113:                                              ; preds = %99, %96
  br label %114

114:                                              ; preds = %113, %82
  br label %115

115:                                              ; preds = %114, %72
  %116 = load i8*, i8** %9, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 -1, i32* %123, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %127, %struct.TYPE_6__** %6, align 8
  br label %128

128:                                              ; preds = %115, %62, %34, %23, %16
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %129
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlTreeErrMemory(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
