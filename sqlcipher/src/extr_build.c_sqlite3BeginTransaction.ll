; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3BeginTransaction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3BeginTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SQLITE_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@TK_DEFERRED = common dso_local global i32 0, align 4
@OP_Transaction = common dso_local global i32 0, align 4
@TK_EXCLUSIVE = common dso_local global i32 0, align 4
@OP_AutoCommit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3BeginTransaction(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load i32, i32* @SQLITE_TRANSACTION, align 4
  %21 = call i64 @sqlite3AuthCheck(%struct.TYPE_7__* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %62

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = call i32* @sqlite3GetVdbe(%struct.TYPE_7__* %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %62

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TK_DEFERRED, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @OP_Transaction, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @TK_EXCLUSIVE, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = add nsw i32 %48, 1
  %50 = call i32 @sqlite3VdbeAddOp2(i32* %42, i32 %43, i32 %44, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @sqlite3VdbeUsesBtree(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %35

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @OP_AutoCommit, align 4
  %61 = call i32 @sqlite3VdbeAddOp0(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %29, %23
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_7__*, i32, i8*, i32, i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeUsesBtree(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
