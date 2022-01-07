; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfsstat.c_vstattabColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfsstat.c_vstattabColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@azFile = common dso_local global i8** null, align 8
@VFSSTAT_nStat = common dso_local global i64 0, align 8
@SQLITE_STATIC = common dso_local global i32 0, align 4
@VFSSTAT_ANY = common dso_local global i64 0, align 8
@azStatAny = common dso_local global i8** null, align 8
@azStat = common dso_local global i8** null, align 8
@aVfsCnt = common dso_local global i32* null, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @vstattabColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vstattabColumn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i8**, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %58 [
    i32 129, label %12
    i32 128, label %24
    i32 130, label %49
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i8**, i8*** @azFile, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VFSSTAT_nStat, align 8
  %19 = udiv i64 %17, %18
  %20 = getelementptr inbounds i8*, i8** %14, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @SQLITE_STATIC, align 4
  %23 = call i32 @sqlite3_result_text(i32* %13, i8* %21, i32 -1, i32 %22)
  br label %58

24:                                               ; preds = %3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VFSSTAT_nStat, align 8
  %29 = udiv i64 %27, %28
  %30 = load i64, i64* @VFSSTAT_ANY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i8**, i8*** @azStatAny, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load i8**, i8*** @azStat, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i8** [ %33, %32 ], [ %35, %34 ]
  store i8** %37, i8*** %8, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i8**, i8*** %8, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VFSSTAT_nStat, align 8
  %44 = urem i64 %42, %43
  %45 = getelementptr inbounds i8*, i8** %39, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* @SQLITE_STATIC, align 4
  %48 = call i32 @sqlite3_result_text(i32* %38, i8* %46, i32 -1, i32 %47)
  br label %58

49:                                               ; preds = %3
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** @aVfsCnt, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sqlite3_result_int64(i32* %50, i32 %56)
  br label %58

58:                                               ; preds = %3, %49, %36, %12
  %59 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %59
}

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
