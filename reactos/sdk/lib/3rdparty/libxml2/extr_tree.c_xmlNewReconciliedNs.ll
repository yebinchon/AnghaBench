; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNewReconciliedNs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlNewReconciliedNs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i32* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.20s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"default%d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%.20s%d\00", align 1
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32, %struct.TYPE_13__*, %struct.TYPE_12__*)* @xmlNewReconciliedNs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @xmlNewReconciliedNs(i32 %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca [50 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = icmp eq %struct.TYPE_13__* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %104

20:                                               ; preds = %13
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = icmp eq %struct.TYPE_12__* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %20
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %104

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_12__* @xmlSearchNsByHref(i32 %31, %struct.TYPE_13__* %32, i32 %35)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %8, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %4, align 8
  br label %104

41:                                               ; preds = %30
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 0
  %48 = bitcast i32* %47 to i8*
  %49 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %58

50:                                               ; preds = %41
  %51 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 0
  %52 = bitcast i32* %51 to i8*
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %52, i32 200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %50, %46
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 0
  %62 = call %struct.TYPE_12__* @xmlSearchNs(i32 %59, %struct.TYPE_13__* %60, i32* %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %8, align 8
  br label %63

63:                                               ; preds = %91, %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = icmp ne %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %67, 1000
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %104

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 0
  %77 = bitcast i32* %76 to i8*
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  %80 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %77, i32 200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %91

81:                                               ; preds = %70
  %82 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 0
  %83 = bitcast i32* %82 to i8*
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = bitcast i32* %86 to i8*
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  %90 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %83, i32 200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %87, i32 %88)
  br label %91

91:                                               ; preds = %81, %75
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 0
  %95 = call %struct.TYPE_12__* @xmlSearchNs(i32 %92, %struct.TYPE_13__* %93, i32* %94)
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %8, align 8
  br label %63

96:                                               ; preds = %63
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds [50 x i32], [50 x i32]* %9, i64 0, i64 0
  %102 = call %struct.TYPE_12__* @xmlNewNs(%struct.TYPE_13__* %97, i32 %100, i32* %101)
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %8, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %4, align 8
  br label %104

104:                                              ; preds = %96, %69, %39, %29, %19
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %105
}

declare dso_local %struct.TYPE_12__* @xmlSearchNsByHref(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_12__* @xmlSearchNs(i32, %struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_12__* @xmlNewNs(%struct.TYPE_13__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
