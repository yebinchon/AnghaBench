; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3TriggerList.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3TriggerList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_14__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @sqlite3TriggerList(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 1
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %92

23:                                               ; preds = %2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = icmp ne %struct.TYPE_14__* %24, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_16__* %32, i32 0, %struct.TYPE_14__* %33)
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = call i32* @sqliteHashFirst(i32* %37)
  store i32* %38, i32** %8, align 8
  br label %39

39:                                               ; preds = %77, %29
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @sqliteHashData(i32* %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %9, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = icmp eq %struct.TYPE_14__* %48, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %42
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @sqlite3StrICmp(i32 %56, i32 %59)
  %61 = icmp eq i64 0, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %53
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  br label %71

67:                                               ; preds = %62
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  br label %71

71:                                               ; preds = %67, %65
  %72 = phi %struct.TYPE_12__* [ %66, %65 ], [ %70, %67 ]
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %7, align 8
  br label %76

76:                                               ; preds = %71, %53, %42
  br label %77

77:                                               ; preds = %76
  %78 = load i32*, i32** %8, align 8
  %79 = call i32* @sqliteHashNext(i32* %78)
  store i32* %79, i32** %8, align 8
  br label %39

80:                                               ; preds = %39
  br label %81

81:                                               ; preds = %80, %23
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = icmp ne %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  br label %90

86:                                               ; preds = %81
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  br label %90

90:                                               ; preds = %86, %84
  %91 = phi %struct.TYPE_12__* [ %85, %84 ], [ %89, %86 ]
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %3, align 8
  br label %92

92:                                               ; preds = %90, %22
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_16__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32* @sqliteHashFirst(i32*) #1

declare dso_local i64 @sqliteHashData(i32*) #1

declare dso_local i64 @sqlite3StrICmp(i32, i32) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
