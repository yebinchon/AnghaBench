; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3DoIncrmerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3DoIncrmerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@FTS3_MERGE_COUNT = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @fts3DoIncrmerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3DoIncrmerge(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @FTS3_MERGE_COUNT, align 4
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %8, align 8
  %12 = call i32 @fts3Getint(i8** %8)
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 44
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  %27 = call i32 @fts3Getint(i8** %8)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %18, %2
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %28
  %38 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %38, i32* %5, align 4
  br label %66

39:                                               ; preds = %34
  %40 = load i32, i32* @SQLITE_OK, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = call i32 @sqlite3Fts3CreateStatTable(i32* %5, %struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %45, %39
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @sqlite3Fts3Incrmerge(%struct.TYPE_6__* %59, i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = call i32 @sqlite3Fts3SegmentsClose(%struct.TYPE_6__* %64)
  br label %66

66:                                               ; preds = %63, %37
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @fts3Getint(i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts3CreateStatTable(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3Fts3Incrmerge(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sqlite3Fts3SegmentsClose(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
