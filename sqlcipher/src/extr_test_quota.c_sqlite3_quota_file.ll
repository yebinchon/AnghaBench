; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_sqlite3_quota_file.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_sqlite3_quota_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i8*, i32, i8*)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, i32*)* }

@gQuota = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_DB = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_quota_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 0, i32 1), align 4
  %13 = add nsw i32 %11, %12
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @sqlite3_malloc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %21, i32* %5, align 4
  br label %37

22:                                               ; preds = %1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = bitcast %struct.TYPE_11__* %23 to i8*
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 0, i32 0), align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8* %27, i8** %3, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 1), align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_12__*, i8*, i32, i8*)*, i32 (%struct.TYPE_12__*, i8*, i32, i8*)** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 1), align 8
  %32 = load i8*, i8** %2, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 0, i32 1), align 4
  %34 = add nsw i32 %33, 1
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 %30(%struct.TYPE_12__* %31, i8* %32, i32 %34, i8* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %22, %20
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %3, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %51 = load i32, i32* @SQLITE_OPEN_MAIN_DB, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @quotaOpen(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 0), i8* %48, %struct.TYPE_11__* %49, i32 %52, i32* %6)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %41
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_11__*, i32*)** %61, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = call i32 %62(%struct.TYPE_11__* %63, i32* %7)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = call i32 %69(%struct.TYPE_11__* %70)
  br label %95

72:                                               ; preds = %41
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SQLITE_CANTOPEN, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = call i32 (...) @quotaEnter()
  %78 = load i8*, i8** %3, align 8
  %79 = call i32* @quotaGroupFind(i8* %78)
  store i32* %79, i32** %9, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load i32*, i32** %9, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = call i32* @quotaFindFile(i32* %83, i8* %84, i32 0)
  store i32* %85, i32** %10, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @quotaRemoveFile(i32* %89)
  br label %91

91:                                               ; preds = %88, %82
  br label %92

92:                                               ; preds = %91, %76
  %93 = call i32 (...) @quotaLeave()
  br label %94

94:                                               ; preds = %92, %72
  br label %95

95:                                               ; preds = %94, %57
  br label %96

96:                                               ; preds = %95, %37
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = call i32 @sqlite3_free(%struct.TYPE_11__* %97)
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @quotaOpen(%struct.TYPE_13__*, i8*, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @quotaEnter(...) #1

declare dso_local i32* @quotaGroupFind(i8*) #1

declare dso_local i32* @quotaFindFile(i32*, i8*, i32) #1

declare dso_local i32 @quotaRemoveFile(i32*) #1

declare dso_local i32 @quotaLeave(...) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
