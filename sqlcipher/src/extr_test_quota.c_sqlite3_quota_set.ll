; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_sqlite3_quota_set.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_sqlite3_quota_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, void (i8*, i64*, i64, i8*)*, void (i8*)*, i8*, i64, %struct.TYPE_5__**, %struct.TYPE_5__* }

@gQuota = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_quota_set(i8* %0, i64 %1, void (i8*, i64*, i64, i8*)* %2, i8* %3, void (i8*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca void (i8*, i64*, i64, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca void (i8*)*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store void (i8*, i64*, i64, i8*)* %2, void (i8*, i64*, i64, i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store void (i8*)* %4, void (i8*)** %11, align 8
  %14 = call i32 (...) @quotaEnter()
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gQuota, i32 0, i32 0), align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %12, align 8
  br label %16

16:                                               ; preds = %28, %5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strcmp(i8* %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %19, %16
  %27 = phi i1 [ false, %16 ], [ %25, %19 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %12, align 8
  br label %16

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %34 = icmp eq %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %86

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = and i32 %37, 1073741823
  store i32 %38, i32* %13, align 4
  %39 = load i64, i64* %8, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 (...) @quotaLeave()
  %43 = load i32, i32* @SQLITE_OK, align 4
  store i32 %43, i32* %6, align 4
  br label %121

44:                                               ; preds = %35
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 56, %46
  %48 = add i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = call i64 @sqlite3_malloc(i32 %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %12, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = icmp eq %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = call i32 (...) @quotaLeave()
  %56 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %56, i32* %6, align 4
  br label %121

57:                                               ; preds = %44
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %59 = call i32 @memset(%struct.TYPE_5__* %58, i32 0, i32 56)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 1
  %62 = bitcast %struct.TYPE_5__* %61 to i8*
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @memcpy(i8* %67, i8* %68, i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gQuota, i32 0, i32 0), align 8
  %73 = icmp ne %struct.TYPE_5__* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %57
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 6
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gQuota, i32 0, i32 0), align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  store %struct.TYPE_5__** %76, %struct.TYPE_5__*** %78, align 8
  br label %79

79:                                               ; preds = %74, %57
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gQuota, i32 0, i32 0), align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 6
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  store %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gQuota, i32 0, i32 0), %struct.TYPE_5__*** %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gQuota, i32 0, i32 0), align 8
  br label %86

86:                                               ; preds = %79, %32
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  %90 = load void (i8*, i64*, i64, i8*)*, void (i8*, i64*, i64, i8*)** %9, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store void (i8*, i64*, i64, i8*)* %90, void (i8*, i64*, i64, i8*)** %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load void (i8*)*, void (i8*)** %94, align 8
  %96 = icmp ne void (i8*)* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %86
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = icmp ne i8* %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load void (i8*)*, void (i8*)** %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  call void %106(i8* %109)
  br label %110

110:                                              ; preds = %103, %97, %86
  %111 = load i8*, i8** %10, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load void (i8*)*, void (i8*)** %11, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store void (i8*)* %114, void (i8*)** %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %118 = call i32 @quotaGroupDeref(%struct.TYPE_5__* %117)
  %119 = call i32 (...) @quotaLeave()
  %120 = load i32, i32* @SQLITE_OK, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %110, %54, %41
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @quotaEnter(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @quotaLeave(...) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @quotaGroupDeref(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
