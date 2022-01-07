; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_sqlite3_quota_remove.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_sqlite3_quota_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i8*, i64, i8*)*, i32 (%struct.TYPE_13__*, i8*, i32)* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i32, i64, %struct.TYPE_12__* }

@gQuota = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_quota_remove(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 1, i32 0), align 8
  %13 = add nsw i64 %12, 1
  %14 = call i64 @sqlite3_malloc(i64 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %19, i32* %2, align 4
  br label %142

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_13__*, i8*, i64, i8*)*, i32 (%struct.TYPE_13__*, i8*, i64, i8*)** %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 0), align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 1, i32 0), align 8
  %27 = add nsw i64 %26, 1
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 %23(%struct.TYPE_13__* %24, i8* %25, i64 %27, i8* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @sqlite3_free(i8* %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %142

36:                                               ; preds = %20
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 92
  br i1 %56, label %57, label %63

57:                                               ; preds = %49, %41
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %5, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %57, %49, %36
  %64 = call i32 (...) @quotaEnter()
  %65 = load i8*, i8** %4, align 8
  %66 = call %struct.TYPE_11__* @quotaGroupFind(i8* %65)
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %7, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %137

69:                                               ; preds = %63
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %8, align 8
  br label %73

73:                                               ; preds = %134, %69
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = icmp eq i32 %77, %78
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i1 [ false, %73 ], [ %79, %76 ]
  br i1 %81, label %82, label %136

82:                                               ; preds = %80
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %9, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @strncmp(i8* %86, i8* %89, i64 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %133

94:                                               ; preds = %82
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  store i8 %100, i8* %11, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %94
  %104 = load i8, i8* %11, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 47
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i8, i8* %11, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 92
  br i1 %110, label %111, label %133

111:                                              ; preds = %107, %103, %94
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 8
  br label %132

119:                                              ; preds = %111
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 0), align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32 (%struct.TYPE_13__*, i8*, i32)*, i32 (%struct.TYPE_13__*, i8*, i32)** %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gQuota, i32 0, i32 0), align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 %122(%struct.TYPE_13__* %123, i8* %126, i32 0)
  store i32 %127, i32* %6, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = call i32 @quotaRemoveFile(%struct.TYPE_12__* %128)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = call i32 @quotaGroupDeref(%struct.TYPE_11__* %130)
  br label %132

132:                                              ; preds = %119, %116
  br label %133

133:                                              ; preds = %132, %107, %82
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %135, %struct.TYPE_12__** %8, align 8
  br label %73

136:                                              ; preds = %80
  br label %137

137:                                              ; preds = %136, %63
  %138 = call i32 (...) @quotaLeave()
  %139 = load i8*, i8** %4, align 8
  %140 = call i32 @sqlite3_free(i8* %139)
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %137, %32, %18
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i64 @sqlite3_malloc(i64) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @quotaEnter(...) #1

declare dso_local %struct.TYPE_11__* @quotaGroupFind(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @quotaRemoveFile(%struct.TYPE_12__*) #1

declare dso_local i32 @quotaGroupDeref(%struct.TYPE_11__*) #1

declare dso_local i32 @quotaLeave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
