; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_main.c_sqlite3_wal_checkpoint_v2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_main.c_sqlite3_wal_checkpoint_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@SQLITE_MAX_ATTACHED = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_PASSIVE = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_FULL = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_RESTART = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_TRUNCATE = common dso_local global i32 0, align 4
@SQLITE_MISUSE = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown database: %s\00", align 1
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_wal_checkpoint_v2(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @SQLITE_MAX_ATTACHED, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32*, i32** %10, align 8
  store i32 -1, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %5
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32*, i32** %11, align 8
  store i32 -1, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* @SQLITE_CHECKPOINT_FULL, align 4
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* @SQLITE_CHECKPOINT_RESTART, align 4
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* @SQLITE_CHECKPOINT_TRUNCATE, align 4
  %38 = icmp eq i32 %37, 3
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SQLITE_CHECKPOINT_TRUNCATE, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %24
  %49 = load i32, i32* @SQLITE_MISUSE, align 4
  store i32 %49, i32* %6, align 4
  br label %107

50:                                               ; preds = %44
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @sqlite3_mutex_enter(i32 %53)
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @sqlite3FindDbName(%struct.TYPE_13__* %64, i8* %65)
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %63, %57, %50
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %71, i32* %12, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = load i32, i32* @SQLITE_ERROR, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @sqlite3ErrorWithMsg(%struct.TYPE_13__* %72, i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %74)
  br label %89

76:                                               ; preds = %67
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @sqlite3Checkpoint(%struct.TYPE_13__* %80, i32 %81, i32 %82, i32* %83, i32* %84)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @sqlite3Error(%struct.TYPE_13__* %86, i32 %87)
  br label %89

89:                                               ; preds = %76, %70
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @sqlite3ApiExit(%struct.TYPE_13__* %90, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %89
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @sqlite3_mutex_leave(i32 %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %101, %48
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3FindDbName(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @sqlite3ErrorWithMsg(%struct.TYPE_13__*, i32, i8*, i8*) #1

declare dso_local i32 @sqlite3Checkpoint(%struct.TYPE_13__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
