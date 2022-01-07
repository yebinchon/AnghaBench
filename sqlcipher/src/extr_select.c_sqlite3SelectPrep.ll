; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqlite3SelectPrep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqlite3SelectPrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@SF_HasTypeInfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3SelectPrep(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %8 = icmp ne %struct.TYPE_13__* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i1 [ true, %3 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %72

27:                                               ; preds = %16
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SF_HasTypeInfo, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %72

35:                                               ; preds = %27
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = call i32 @sqlite3SelectExpand(%struct.TYPE_14__* %36, %struct.TYPE_13__* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43, %35
  br label %72

51:                                               ; preds = %43
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @sqlite3ResolveSelectNames(%struct.TYPE_14__* %52, %struct.TYPE_13__* %53, i32* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60, %51
  br label %72

68:                                               ; preds = %60
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = call i32 @sqlite3SelectAddTypeInfo(%struct.TYPE_14__* %69, %struct.TYPE_13__* %70)
  br label %72

72:                                               ; preds = %68, %67, %50, %34, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SelectExpand(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3ResolveSelectNames(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @sqlite3SelectAddTypeInfo(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
