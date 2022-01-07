; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3EndTransaction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3EndTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@TK_COMMIT = common dso_local global i32 0, align 4
@TK_END = common dso_local global i32 0, align 4
@TK_ROLLBACK = common dso_local global i32 0, align 4
@SQLITE_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@OP_AutoCommit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3EndTransaction(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TK_COMMIT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TK_END, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TK_ROLLBACK, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %20, %2
  %29 = phi i1 [ true, %20 ], [ true, %2 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TK_ROLLBACK, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = load i32, i32* @SQLITE_TRANSACTION, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %42 = call i64 @sqlite3AuthCheck(%struct.TYPE_5__* %36, i32 %37, i8* %41, i32 0, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %55

45:                                               ; preds = %28
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = call i32* @sqlite3GetVdbe(%struct.TYPE_5__* %46)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @OP_AutoCommit, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @sqlite3VdbeAddOp2(i32* %51, i32 %52, i32 1, i32 %53)
  br label %55

55:                                               ; preds = %44, %50, %45
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_5__*, i32, i8*, i32, i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
