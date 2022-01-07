; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpFindNextMatchLine.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpFindNextMatchLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32, i32* }

@INF_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@INF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@INF_STATUS_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfpFindNextMatchLine(%struct.TYPE_8__* %0, i64* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i64*, i64** %6, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %15, %12, %3
  %23 = load i32, i32* @INF_STATUS_INVALID_PARAMETER, align 4
  store i32 %23, i32* %4, align 4
  br label %77

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call i32* @InfpGetSectionForContext(%struct.TYPE_8__* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @INF_STATUS_INVALID_PARAMETER, align 4
  store i32 %30, i32* %4, align 4
  br label %77

31:                                               ; preds = %24
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = call %struct.TYPE_9__* @InfpGetLineForContext(%struct.TYPE_8__* %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %9, align 8
  br label %34

34:                                               ; preds = %71, %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %75

37:                                               ; preds = %34
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = call i64 @strcmpiW(i32* %45, i64* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = icmp ne %struct.TYPE_8__* %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %53, %49
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @INF_STATUS_SUCCESS, align 4
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %42, %37
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %9, align 8
  br label %34

75:                                               ; preds = %34
  %76 = load i32, i32* @INF_STATUS_NOT_FOUND, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %64, %29, %22
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32* @InfpGetSectionForContext(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @InfpGetLineForContext(%struct.TYPE_8__*) #1

declare dso_local i64 @strcmpiW(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
