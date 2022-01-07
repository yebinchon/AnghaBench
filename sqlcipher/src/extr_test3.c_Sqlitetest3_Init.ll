; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test3.c_Sqlitetest3_Init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test3.c_Sqlitetest3_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32* }

@Sqlitetest3_Init.aCmd = internal global [14 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32* inttoptr (i64 132 to i32*) }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32* inttoptr (i64 140 to i32*) }, %struct.anon { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32* inttoptr (i64 141 to i32*) }, %struct.anon { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32* inttoptr (i64 131 to i32*) }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32* inttoptr (i64 138 to i32*) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32* inttoptr (i64 139 to i32*) }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32* inttoptr (i64 133 to i32*) }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32* inttoptr (i64 137 to i32*) }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32* inttoptr (i64 130 to i32*) }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32* inttoptr (i64 136 to i32*) }, %struct.anon { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32* inttoptr (i64 128 to i32*) }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32* inttoptr (i64 135 to i32*) }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32* inttoptr (i64 134 to i32*) }, %struct.anon { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32* inttoptr (i64 129 to i32*) }], align 16
@.str = private unnamed_addr constant [11 x i8] c"btree_open\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"btree_close\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"btree_begin_transaction\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"btree_pager_stats\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"btree_cursor\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"btree_close_cursor\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"btree_next\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"btree_eof\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"btree_payload_size\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"btree_first\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"btree_varint_test\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"btree_from_db\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"btree_ismemdb\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"btree_set_cache_size\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"btree_insert\00", align 1
@btree_insert = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sqlitetest3_Init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 14
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* @Sqlitetest3_Init.aCmd, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 16
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* @Sqlitetest3_Init.aCmd, i64 0, i64 %16
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
  %26 = load i32, i32* @btree_insert, align 4
  %27 = call i32 @Tcl_CreateObjCommand(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %26, i32 0, i32 0)
  %28 = load i32, i32* @TCL_OK, align 4
  ret i32 %28
}

declare dso_local i32 @Tcl_CreateCommand(i32*, i8*, i32*, i32, i32) #1

declare dso_local i32 @Tcl_CreateObjCommand(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
