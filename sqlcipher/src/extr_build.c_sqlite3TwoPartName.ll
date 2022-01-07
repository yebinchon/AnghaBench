; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3TwoPartName.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3TwoPartName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"corrupt database\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown database %T\00", align 1
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@DBFLAG_Vacuum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3TwoPartName(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %9, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %11, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = call i32 (%struct.TYPE_15__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_15__* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %79

32:                                               ; preds = %23
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = call i32 @sqlite3FindDb(%struct.TYPE_13__* %35, %struct.TYPE_14__* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = call i32 (%struct.TYPE_15__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_15__* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %42)
  store i32 -1, i32* %5, align 4
  br label %79

44:                                               ; preds = %32
  br label %77

45:                                               ; preds = %4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DBFLAG_Vacuum, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %60, %57, %51, %45
  %68 = phi i1 [ true, %57 ], [ true, %51 ], [ true, %45 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %10, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %76, align 8
  br label %77

77:                                               ; preds = %67, %44
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %40, %29
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @sqlite3FindDb(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
