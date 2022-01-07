; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_stmt.c_stmtColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_stmt.c_stmtColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_STMTSTATUS_MEMUSED = common dso_local global i32 0, align 4
@SQLITE_STMTSTATUS_FULLSCAN_STEP = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @stmtColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmtColumn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %56 [
    i32 128, label %11
    i32 135, label %19
    i32 130, label %26
    i32 138, label %33
    i32 137, label %40
    i32 134, label %45
    i32 133, label %45
    i32 136, label %45
    i32 132, label %45
    i32 131, label %45
    i32 129, label %45
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sqlite3_sql(i32 %15)
  %17 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %18 = call i32 @sqlite3_result_text(i32* %12, i32 %16, i32 -1, i32 %17)
  br label %56

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite3_column_count(i32 %23)
  %25 = call i32 @sqlite3_result_int(i32* %20, i32 %24)
  br label %56

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite3_stmt_readonly(i32 %30)
  %32 = call i32 @sqlite3_result_int(i32* %27, i32 %31)
  br label %56

33:                                               ; preds = %3
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sqlite3_stmt_busy(i32 %37)
  %39 = call i32 @sqlite3_result_int(i32* %34, i32 %38)
  br label %56

40:                                               ; preds = %3
  %41 = load i32, i32* @SQLITE_STMTSTATUS_MEMUSED, align 4
  %42 = add nsw i32 %41, 134
  %43 = load i32, i32* @SQLITE_STMTSTATUS_FULLSCAN_STEP, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %3, %3, %3, %3, %3, %3, %40
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 134
  %52 = load i32, i32* @SQLITE_STMTSTATUS_FULLSCAN_STEP, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @sqlite3_stmt_status(i32 %49, i32 %53, i32 0)
  %55 = call i32 @sqlite3_result_int(i32* %46, i32 %54)
  br label %56

56:                                               ; preds = %3, %45, %33, %26, %19, %11
  %57 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %57
}

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_sql(i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @sqlite3_column_count(i32) #1

declare dso_local i32 @sqlite3_stmt_readonly(i32) #1

declare dso_local i32 @sqlite3_stmt_busy(i32) #1

declare dso_local i32 @sqlite3_stmt_status(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
