; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_sqllog.c_sqllogOpenlog.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_sqllog.c_sqllogOpenlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i8*, i32 }
%struct.SLConn = type { i64, i32 }

@sqllogglobal = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENVIRONMENT_VARIABLE1_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s/sqllog_%05d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.idx\00", align 1
@ENVIRONMENT_VARIABLE2_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s_%05d.sql\00", align 1
@SQLITE_IOERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"sqllogOpenlog(): Failed to open log file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SLConn*)* @sqllogOpenlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqllogOpenlog(%struct.SLConn* %0) #0 {
  %2 = alloca %struct.SLConn*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.SLConn* %0, %struct.SLConn** %2, align 8
  %6 = load %struct.SLConn*, %struct.SLConn** %2, align 8
  %7 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %73

10:                                               ; preds = %1
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 0), align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %10
  %16 = load i32, i32* @ENVIRONMENT_VARIABLE1_NAME, align 4
  %17 = call i8* @getenv(i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = add nsw i32 %22, 10
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %15
  br label %73

27:                                               ; preds = %20
  %28 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 0), align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (...) @getProcessId()
  %31 = call i32 (i32, ...) @sqlite3_snprintf(i32 8, i64* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %33 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 0), align 8
  %34 = call i32 (i32, ...) @sqlite3_snprintf(i32 8, i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %33)
  %35 = load i32, i32* @ENVIRONMENT_VARIABLE2_NAME, align 4
  %36 = call i8* @getenv(i32 %35)
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @ENVIRONMENT_VARIABLE2_NAME, align 4
  %40 = call i8* @getenv(i32 %39)
  %41 = call i32 @atoi(i8* %40)
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 2), align 8
  br label %42

42:                                               ; preds = %38, %27
  %43 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 8
  %44 = call i8* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %4, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fclose(i32* %49)
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %10
  %53 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 0), align 8
  %54 = load %struct.SLConn*, %struct.SLConn** %2, align 8
  %55 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64* %53, i32 %56)
  store i8* %57, i8** %3, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call i8* @fopen(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.SLConn*, %struct.SLConn** %2, align 8
  %62 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @sqlite3_free(i8* %63)
  %65 = load %struct.SLConn*, %struct.SLConn** %2, align 8
  %66 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %52
  %70 = load i32, i32* @SQLITE_IOERR, align 4
  %71 = call i32 @sqlite3_log(i32 %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %52
  br label %73

73:                                               ; preds = %26, %72, %1
  ret void
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sqlite3_snprintf(i32, ...) #1

declare dso_local i32 @getProcessId(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i64*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
