; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_func.c_printfFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_func.c_printfFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32**, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32* }

@SQLITE_LIMIT_LENGTH = common dso_local global i64 0, align 8
@SQLITE_PRINTF_SQLFUNC = common dso_local global i32 0, align 4
@SQLITE_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @printfFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printfFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_10__* @sqlite3_context_db_handle(i32* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %11, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 1
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @sqlite3_value_text(i32* %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32** %29, i32*** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sqlite3StrAccumInit(%struct.TYPE_11__* %8, %struct.TYPE_10__* %31, i32 0, i32 0, i32 %37)
  %39 = load i32, i32* @SQLITE_PRINTF_SQLFUNC, align 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @sqlite3_str_appendf(%struct.TYPE_11__* %8, i8* %41, %struct.TYPE_12__* %7)
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @sqlite3StrAccumFinish(%struct.TYPE_11__* %8)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %49 = call i32 @sqlite3_result_text(i32* %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %23, %16, %3
  ret void
}

declare dso_local %struct.TYPE_10__* @sqlite3_context_db_handle(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3StrAccumInit(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_str_appendf(%struct.TYPE_11__*, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3StrAccumFinish(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
