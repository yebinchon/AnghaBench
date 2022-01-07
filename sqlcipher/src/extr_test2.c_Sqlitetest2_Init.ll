; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test2.c_Sqlitetest2_Init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test2.c_Sqlitetest2_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32* }

@Sqlitetest2_Init.aCmd = internal global [20 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32* inttoptr (i64 137 to i32*) }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32* inttoptr (i64 139 to i32*) }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32* inttoptr (i64 138 to i32*) }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32* inttoptr (i64 135 to i32*) }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32* inttoptr (i64 133 to i32*) }, %struct.anon { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32* inttoptr (i64 132 to i32*) }, %struct.anon { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i32* inttoptr (i64 131 to i32*) }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32* inttoptr (i64 134 to i32*) }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32* inttoptr (i64 136 to i32*) }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32* inttoptr (i64 145 to i32*) }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32* inttoptr (i64 144 to i32*) }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32* inttoptr (i64 141 to i32*) }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32* inttoptr (i64 142 to i32*) }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32* inttoptr (i64 140 to i32*) }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32* inttoptr (i64 143 to i32*) }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32* inttoptr (i64 130 to i32*) }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32* inttoptr (i64 147 to i32*) }, %struct.anon { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i32* inttoptr (i64 129 to i32*) }, %struct.anon { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0), i32* inttoptr (i64 128 to i32*) }, %struct.anon { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0), i32* inttoptr (i64 146 to i32*) }], align 16
@.str = private unnamed_addr constant [11 x i8] c"pager_open\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pager_close\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pager_commit\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pager_rollback\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"pager_stmt_begin\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"pager_stmt_commit\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"pager_stmt_rollback\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pager_stats\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"pager_pagecount\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"page_get\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"page_lookup\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"page_unref\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"page_read\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"page_write\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"page_number\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"pager_truncate\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"fake_big_file\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"sqlite3BitvecBuiltinTest\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"sqlite3_test_control_pending_byte\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"sqlite3_test_control_fault_install\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"sqlite_io_error_pending\00", align 1
@sqlite3_io_error_pending = external dso_local global i32, align 4
@TCL_LINK_INT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"sqlite_io_error_persist\00", align 1
@sqlite3_io_error_persist = external dso_local global i32, align 4
@.str.22 = private unnamed_addr constant [20 x i8] c"sqlite_io_error_hit\00", align 1
@sqlite3_io_error_hit = external dso_local global i32, align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"sqlite_io_error_hardhit\00", align 1
@sqlite3_io_error_hardhit = external dso_local global i32, align 4
@.str.24 = private unnamed_addr constant [24 x i8] c"sqlite_diskfull_pending\00", align 1
@sqlite3_diskfull_pending = external dso_local global i32, align 4
@.str.25 = private unnamed_addr constant [16 x i8] c"sqlite_diskfull\00", align 1
@sqlite3_diskfull = external dso_local global i32, align 4
@.str.26 = private unnamed_addr constant [20 x i8] c"sqlite_pending_byte\00", align 1
@sqlite3PendingByte = common dso_local global i32 0, align 4
@TCL_LINK_READ_ONLY = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sqlitetest2_Init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 20
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @Sqlitetest2_Init.aCmd, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 16
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @Sqlitetest2_Init.aCmd, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @Tcl_CreateCommand(i32* %9, i8* %14, i32* %19, i32 0, i32 0)
  br label %21

21:                                               ; preds = %8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @TCL_LINK_INT, align 4
  %27 = call i32 @Tcl_LinkVar(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* bitcast (i32* @sqlite3_io_error_pending to i8*), i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @TCL_LINK_INT, align 4
  %30 = call i32 @Tcl_LinkVar(i32* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i8* bitcast (i32* @sqlite3_io_error_persist to i8*), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @TCL_LINK_INT, align 4
  %33 = call i32 @Tcl_LinkVar(i32* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* bitcast (i32* @sqlite3_io_error_hit to i8*), i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @TCL_LINK_INT, align 4
  %36 = call i32 @Tcl_LinkVar(i32* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* bitcast (i32* @sqlite3_io_error_hardhit to i8*), i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @TCL_LINK_INT, align 4
  %39 = call i32 @Tcl_LinkVar(i32* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8* bitcast (i32* @sqlite3_diskfull_pending to i8*), i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @TCL_LINK_INT, align 4
  %42 = call i32 @Tcl_LinkVar(i32* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* bitcast (i32* @sqlite3_diskfull to i8*), i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @TCL_LINK_INT, align 4
  %45 = load i32, i32* @TCL_LINK_READ_ONLY, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @Tcl_LinkVar(i32* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i8* bitcast (i32* @sqlite3PendingByte to i8*), i32 %46)
  %48 = load i32, i32* @TCL_OK, align 4
  ret i32 %48
}

declare dso_local i32 @Tcl_CreateCommand(i32*, i8*, i32*, i32, i32) #1

declare dso_local i32 @Tcl_LinkVar(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
