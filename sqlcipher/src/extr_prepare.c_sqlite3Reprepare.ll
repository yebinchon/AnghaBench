; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_prepare.c_sqlite3Reprepare.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_prepare.c_sqlite3Reprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Reprepare(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_5__* @sqlite3VdbeDb(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sqlite3_mutex_held(i32 %12)
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @sqlite3_sql(i32* %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call %struct.TYPE_5__* @sqlite3VdbeDb(i32* %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %7, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sqlite3_mutex_held(i32 %25)
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @sqlite3VdbePrepareFlags(i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @sqlite3LockAndPrepare(%struct.TYPE_5__* %30, i8* %31, i32 -1, i32 %32, i32* %33, i32** %5, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SQLITE_NOMEM, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = call i32 @sqlite3OomFault(%struct.TYPE_5__* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %67

50:                                               ; preds = %1
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @sqlite3VdbeSwap(i32* %56, i32* %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @sqlite3TransferBindings(i32* %59, i32* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @sqlite3VdbeResetStepResult(i32* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @sqlite3VdbeFinalize(i32* %64)
  %66 = load i32, i32* @SQLITE_OK, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %55, %44
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local %struct.TYPE_5__* @sqlite3VdbeDb(i32*) #1

declare dso_local i8* @sqlite3_sql(i32*) #1

declare dso_local i32 @sqlite3VdbePrepareFlags(i32*) #1

declare dso_local i32 @sqlite3LockAndPrepare(%struct.TYPE_5__*, i8*, i32, i32, i32*, i32**, i32) #1

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3VdbeSwap(i32*, i32*) #1

declare dso_local i32 @sqlite3TransferBindings(i32*, i32*) #1

declare dso_local i32 @sqlite3VdbeResetStepResult(i32*) #1

declare dso_local i32 @sqlite3VdbeFinalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
