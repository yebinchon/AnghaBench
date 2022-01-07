; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_superlock.c_sqlite3demo_superlock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_superlock.c_sqlite3demo_superlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i8*, i32)*, i8*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@superlockBusyHandler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"BEGIN EXCLUSIVE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3demo_superlock(i8* %0, i8* %1, i32 (i8*, i32)* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*, i32)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 (i8*, i32)* %2, i32 (i8*, i32)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = bitcast %struct.TYPE_8__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = call %struct.TYPE_9__* @sqlite3_malloc(i32 16)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %14, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %20, i32* %6, align 4
  br label %93

21:                                               ; preds = %5
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %23 = call i32 @memset(%struct.TYPE_9__* %22, i32 0, i32 16)
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %28 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %29 = or i32 %27, %28
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @sqlite3_open_v2(i8* %24, i32* %26, i32 %29, i8* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %21
  %36 = load i32 (i8*, i32)*, i32 (i8*, i32)** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 (i8*, i32)* %36, i32 (i8*, i32)** %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @superlockBusyHandler, align 4
  %44 = bitcast %struct.TYPE_8__* %12 to i8*
  %45 = call i32 @sqlite3_busy_handler(i32 %42, i32 %43, i8* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sqlite3_exec(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %35, %21
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %50
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %57 = call i32 @superlockIsWal(%struct.TYPE_9__* %56)
  store i32 %57, i32* %13, align 4
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sqlite3_exec(i32 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 0)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @SQLITE_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @superlockWalLock(i32 %75, %struct.TYPE_8__* %12)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %72, %64
  br label %78

78:                                               ; preds = %77, %59, %54
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @SQLITE_OK, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %85 = call i32 @sqlite3demo_superunlock(%struct.TYPE_9__* %84)
  %86 = load i8**, i8*** %11, align 8
  store i8* null, i8** %86, align 8
  br label %91

87:                                               ; preds = %79
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %89 = bitcast %struct.TYPE_9__* %88 to i8*
  %90 = load i8**, i8*** %11, align 8
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %19
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_9__* @sqlite3_malloc(i32) #2

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @sqlite3_open_v2(i8*, i32*, i32, i8*) #2

declare dso_local i32 @sqlite3_busy_handler(i32, i32, i8*) #2

declare dso_local i32 @sqlite3_exec(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @superlockIsWal(%struct.TYPE_9__*) #2

declare dso_local i32 @superlockWalLock(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @sqlite3demo_superunlock(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
