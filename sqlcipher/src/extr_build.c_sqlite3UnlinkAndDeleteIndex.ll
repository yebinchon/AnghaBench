; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3UnlinkAndDeleteIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3UnlinkAndDeleteIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }

@DBFLAG_SchemaChange = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3UnlinkAndDeleteIndex(%struct.TYPE_15__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_15__* %10, i32 %11, i32 0)
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call %struct.TYPE_16__* @sqlite3HashInsert(i32* %23, i8* %24, i32 0)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %7, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = call i64 @ALWAYS(%struct.TYPE_16__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %94

29:                                               ; preds = %3
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = icmp eq %struct.TYPE_16__* %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %44, align 8
  br label %90

45:                                               ; preds = %29
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %9, align 8
  br label %51

51:                                               ; preds = %63, %45
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = call i64 @ALWAYS(%struct.TYPE_16__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = icmp ne %struct.TYPE_16__* %58, %59
  br label %61

61:                                               ; preds = %55, %51
  %62 = phi i1 [ false, %51 ], [ %60, %55 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %9, align 8
  br label %51

67:                                               ; preds = %61
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = icmp ne %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = icmp eq %struct.TYPE_16__* %73, %74
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i1 [ false, %67 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.TYPE_16__*
  %81 = call i64 @ALWAYS(%struct.TYPE_16__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %88, align 8
  br label %89

89:                                               ; preds = %83, %76
  br label %90

90:                                               ; preds = %89, %37
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = call i32 @sqlite3FreeIndex(%struct.TYPE_15__* %91, %struct.TYPE_16__* %92)
  br label %94

94:                                               ; preds = %90, %3
  %95 = load i32, i32* @DBFLAG_SchemaChange, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @sqlite3HashInsert(i32*, i8*, i32) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3FreeIndex(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
