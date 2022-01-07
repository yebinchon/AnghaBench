; ModuleID = '/home/carl/AnghaBench/redis/src/extr_debug.c__serverAssertPrintClientInfo.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_debug.c__serverAssertPrintClientInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__**, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@CONN_INFO_LEN = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"=== ASSERTION FAILED CLIENT CONTEXT ===\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"client->flags = %llu\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"client->conn = %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"client->argc = %d\00", align 1
@OBJ_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Object type: %u, encoding: %u\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"client->argv[%d] = \22%s\22 (refcount: %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_serverAssertPrintClientInfo(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* @CONN_INFO_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call i32 (...) @bugReportStart()
  %13 = load i32, i32* @LL_WARNING, align 4
  %14 = call i32 (i32, i8*, ...) @serverLog(i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @LL_WARNING, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i32, i8*, ...) @serverLog(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = trunc i64 %9 to i32
  %25 = call i32 @connGetInfo(i32 %23, i8* %11, i32 %24)
  %26 = call i32 (i32, i8*, ...) @serverLog(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @LL_WARNING, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @serverLog(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %107, %1
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %110

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @OBJ_STRING, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %38
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %53, i64 %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i64 @sdsEncodedObject(%struct.TYPE_5__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %63, i64 %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %7, align 8
  br label %93

71:                                               ; preds = %50, %38
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %75, i64 %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %84, i64 %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @snprintf(i8* %72, i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %90)
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  store i8* %92, i8** %7, align 8
  br label %93

93:                                               ; preds = %71, %60
  %94 = load i32, i32* @LL_WARNING, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %99, i64 %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, ...) @serverLog(i32 %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %95, i8* %96, i32 %105)
  br label %107

107:                                              ; preds = %93
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %32

110:                                              ; preds = %32
  %111 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %111)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bugReportStart(...) #2

declare dso_local i32 @serverLog(i32, i8*, ...) #2

declare dso_local i32 @connGetInfo(i32, i8*, i32) #2

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_5__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
