; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3UniqueConstraint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3UniqueConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i64*, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@SQLITE_LIMIT_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"index '%q'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@SQLITE_CONSTRAINT_PRIMARYKEY = common dso_local global i32 0, align 4
@SQLITE_CONSTRAINT_UNIQUE = common dso_local global i32 0, align 4
@P4_DYNAMIC = common dso_local global i32 0, align 4
@P5_ConstraintUnique = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3UniqueConstraint(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sqlite3StrAccumInit(i32* %9, %struct.TYPE_14__* %17, i32 0, i32 0, i32 %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sqlite3_str_appendf(i32* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %83

36:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %79, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %37
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %11, align 8
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %43
  %70 = call i32 @sqlite3_str_append(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %71

71:                                               ; preds = %69, %43
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @sqlite3_str_appendall(i32* %9, i8* %74)
  %76 = call i32 @sqlite3_str_append(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @sqlite3_str_appendall(i32* %9, i8* %77)
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %37

82:                                               ; preds = %37
  br label %83

83:                                               ; preds = %82, %31
  %84 = call i8* @sqlite3StrAccumFinish(i32* %9)
  store i8* %84, i8** %7, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_13__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @SQLITE_CONSTRAINT_PRIMARYKEY, align 4
  br label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @SQLITE_CONSTRAINT_UNIQUE, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load i32, i32* %5, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* @P4_DYNAMIC, align 4
  %98 = load i32, i32* @P5_ConstraintUnique, align 4
  %99 = call i32 @sqlite3HaltConstraint(%struct.TYPE_12__* %85, i32 %94, i32 %95, i8* %96, i32 %97, i32 %98)
  ret void
}

declare dso_local i32 @sqlite3StrAccumInit(i32*, %struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_str_appendf(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_str_append(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_str_appendall(i32*, i8*) #1

declare dso_local i8* @sqlite3StrAccumFinish(i32*) #1

declare dso_local i32 @sqlite3HaltConstraint(%struct.TYPE_12__*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
