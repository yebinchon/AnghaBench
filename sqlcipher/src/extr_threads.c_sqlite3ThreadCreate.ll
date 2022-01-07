; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_threads.c_sqlite3ThreadCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_threads.c_sqlite3ThreadCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i8* (i8*)*, i32, i8*, i32, i8* }

@sqlite3GlobalConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ThreadCreate(%struct.TYPE_6__** %0, i8* (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8* (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8* (i8*)* %1, i8* (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %11 = icmp ne %struct.TYPE_6__** %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %15 = icmp ne i8* (i8*)* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sqlite3GlobalConfig, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %22, align 8
  %23 = call %struct.TYPE_6__* @sqlite3Malloc(i32 40)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %27, i32* %4, align 4
  br label %61

28:                                               ; preds = %3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = call i32 @memset(%struct.TYPE_6__* %29, i32 0, i32 40)
  %31 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* (i8*)* %31, i8* (i8*)** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = call i64 @sqlite3FaultSim(i32 200)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %46

40:                                               ; preds = %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @pthread_create(i32* %42, i32 0, i8* (i8*)* %43, i8* %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %40, %39
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  %52 = load i8* (i8*)*, i8* (i8*)** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i8* %52(i8* %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %49, %46
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %59, align 8
  %60 = load i32, i32* @SQLITE_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %26
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_6__* @sqlite3Malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @sqlite3FaultSim(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32, i8* (i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
