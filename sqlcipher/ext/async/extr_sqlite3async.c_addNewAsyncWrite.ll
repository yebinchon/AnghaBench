; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/async/extr_sqlite3async.c_addNewAsyncWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/async/extr_sqlite3async.c_addNewAsyncWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i64, i32*, i32 }

@ASYNC_CLOSE = common dso_local global i32 0, align 4
@async = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SQLITE_IOERR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i8*)* @addNewAsyncWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addNewAsyncWrite(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @ASYNC_CLOSE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @async, i32 0, i32 0), align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @async, i32 0, i32 0), align 4
  store i32 %20, i32* %6, align 4
  br label %73

21:                                               ; preds = %16, %5
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = sext i32 %28 to i64
  %30 = add i64 40, %29
  %31 = trunc i64 %30 to i32
  %32 = call %struct.TYPE_5__* @sqlite3_malloc(i32 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %12, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @SQLITE_IOERR, align 4
  store i32 %36, i32* %6, align 4
  br label %73

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %37
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 1
  %57 = bitcast %struct.TYPE_5__* %56 to i8*
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @memcpy(i8* %62, i8* %63, i32 %64)
  br label %69

66:                                               ; preds = %37
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %66, %54
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %71 = call i32 @addAsyncWrite(%struct.TYPE_5__* %70)
  %72 = load i32, i32* @SQLITE_OK, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %35, %19
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_5__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @addAsyncWrite(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
