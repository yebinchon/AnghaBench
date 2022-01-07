; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_pager_truncate.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_pager_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i8*, i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_ERROR = common dso_local global i64 0, align 8
@PAGER_READER = common dso_local global i64 0, align 8
@PAGER_WRITER_DBMOD = common dso_local global i64 0, align 8
@PAGER_OPEN = common dso_local global i64 0, align 8
@EXCLUSIVE_LOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @pager_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_truncate(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGER_ERROR, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PAGER_READER, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @isOpen(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %125

30:                                               ; preds = %2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PAGER_WRITER_DBMOD, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PAGER_OPEN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %125

42:                                               ; preds = %36, %30
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EXCLUSIVE_LOCK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @sqlite3OsFileSize(i32 %55, i32* %6)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i64, i64* %4, align 8
  %59 = trunc i64 %58 to i32
  %60 = mul nsw i32 %57, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SQLITE_OK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %124

64:                                               ; preds = %42
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %124

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @sqlite3OsTruncate(i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %115

78:                                               ; preds = %68
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %7, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %78
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %9, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @memset(i8* %88, i32 0, i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @testcase(i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %6, align 4
  %102 = icmp sgt i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @testcase(i32 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %110, %111
  %113 = call i32 @sqlite3OsWrite(i32 %107, i8* %108, i32 %109, i32 %112)
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %84, %78
  br label %115

115:                                              ; preds = %114, %72
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @SQLITE_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i64, i64* %4, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %64, %42
  br label %125

125:                                              ; preds = %124, %36, %2
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i32 @sqlite3OsFileSize(i32, i32*) #1

declare dso_local i32 @sqlite3OsTruncate(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3OsWrite(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
