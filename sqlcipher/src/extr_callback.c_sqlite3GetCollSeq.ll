; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_callback.c_sqlite3GetCollSeq.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_callback.c_sqlite3GetCollSeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"no such collation sequence: %s\00", align 1
@SQLITE_ERROR_MISSING_COLLSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @sqlite3GetCollSeq(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_10__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call %struct.TYPE_10__* @sqlite3FindCollSeq(i32* %18, i32 %19, i8* %20, i32 0)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %9, align 8
  br label %22

22:                                               ; preds = %17, %4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25, %22
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @callCollNeeded(i32* %31, i32 %32, i8* %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call %struct.TYPE_10__* @sqlite3FindCollSeq(i32* %35, i32 %36, i8* %37, i32 0)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %9, align 8
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = call i64 @synthCollSeq(i32* %48, %struct.TYPE_10__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  br label %53

53:                                               ; preds = %52, %47, %42, %39
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ true, %53 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = icmp eq %struct.TYPE_10__* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @sqlite3ErrorMsg(%struct.TYPE_9__* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @SQLITE_ERROR_MISSING_COLLSEQ, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %67, %61
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  ret %struct.TYPE_10__* %75
}

declare dso_local %struct.TYPE_10__* @sqlite3FindCollSeq(i32*, i32, i8*, i32) #1

declare dso_local i32 @callCollNeeded(i32*, i32, i8*) #1

declare dso_local i64 @synthCollSeq(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_9__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
