; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3FindTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3FindTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@OMIT_TEMPDB = common dso_local global i32 0, align 4
@MASTER_NAME = common dso_local global i32 0, align 4
@TEMP_MASTER_NAME = common dso_local global i8* null, align 8
@UAUTH_Admin = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sqlite3FindTable(%struct.TYPE_11__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = call i64 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_11__* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ true, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  br label %21

21:                                               ; preds = %17, %95
  %22 = load i32, i32* @OMIT_TEMPDB, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %75, %21
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = xor i32 %33, 1
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  store i32 %38, i32* %10, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @sqlite3StrICmp(i8* %42, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %41, %37
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_11__* %54, i32 %55, i32 0)
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i8*, i8** %6, align 8
  %68 = call i32* @sqlite3HashFind(i32* %66, i8* %67)
  store i32* %68, i32** %8, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = load i32*, i32** %8, align 8
  store i32* %72, i32** %4, align 8
  br label %98

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %41
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %23

78:                                               ; preds = %23
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* @MASTER_NAME, align 4
  %81 = call i64 @sqlite3StrICmp(i8* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %97

84:                                               ; preds = %78
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @sqlite3_stricmp(i8* %85, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %97

95:                                               ; preds = %84
  %96 = load i8*, i8** @TEMP_MASTER_NAME, align 8
  store i8* %96, i8** %6, align 8
  br label %21

97:                                               ; preds = %94, %83
  store i32* null, i32** %4, align 8
  br label %98

98:                                               ; preds = %97, %71
  %99 = load i32*, i32** %4, align 8
  ret i32* %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_11__*) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i32) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32* @sqlite3HashFind(i32*, i8*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
