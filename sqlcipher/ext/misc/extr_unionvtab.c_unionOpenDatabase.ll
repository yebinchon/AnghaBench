; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionOpenDatabase.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionOpenDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i32, %struct.TYPE_12__*, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_12__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"source table schema mismatch\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i8**)* @unionOpenDatabase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionOpenDatabase(%struct.TYPE_11__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i64 %15
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i1 [ false, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %110

35:                                               ; preds = %27
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @unionCloseSources(%struct.TYPE_11__* %36, i64 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = call i32 @unionOpenDatabaseInner(%struct.TYPE_11__* %42, %struct.TYPE_12__* %43, i8** %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %35
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = load i8**, i8*** %6, align 8
  %53 = call i8* @unionSourceToStr(i32* %7, %struct.TYPE_11__* %50, %struct.TYPE_12__* %51, i8** %52)
  store i8* %53, i8** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %49
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %80

66:                                               ; preds = %57
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @sqlite3_stricmp(i8* %67, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %75 = load i8**, i8*** %6, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @sqlite3_free(i8* %78)
  br label %80

80:                                               ; preds = %77, %62
  br label %81

81:                                               ; preds = %80, %49
  br label %82

82:                                               ; preds = %81, %35
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @SQLITE_OK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %91, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %109

99:                                               ; preds = %82
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @sqlite3_close(i64 %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = call i32 @unionInvokeOpenClose(%struct.TYPE_11__* %106, %struct.TYPE_12__* %107, i32 1, i32 0)
  br label %109

109:                                              ; preds = %99, %86
  br label %110

110:                                              ; preds = %109, %27
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unionCloseSources(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @unionOpenDatabaseInner(%struct.TYPE_11__*, %struct.TYPE_12__*, i8**) #1

declare dso_local i8* @unionSourceToStr(i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, i8**) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_close(i64) #1

declare dso_local i32 @unionInvokeOpenClose(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
