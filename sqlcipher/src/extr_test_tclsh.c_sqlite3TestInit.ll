; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_tclsh.c_sqlite3TestInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_tclsh.c_sqlite3TestInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIMIT_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sqlite3\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"load_testfixture_extensions\00", align 1
@load_testfixture_extensions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3TestInit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rlimit, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @RLIMIT_CORE, align 4
  %6 = call i32 @getrlimit(i32 %5, %struct.rlimit* %4)
  %7 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @RLIMIT_CORE, align 4
  %11 = call i32 @setrlimit(i32 %10, %struct.rlimit* %4)
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @Tcl_GetCommandInfo(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %3)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @Sqlite3_Init(i32* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @Md5_Init(i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @Sqliteconfig_Init(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @Sqlitetest1_Init(i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @Sqlitetest2_Init(i32* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @Sqlitetest3_Init(i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @Sqlitetest4_Init(i32* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @Sqlitetest5_Init(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @Sqlitetest6_Init(i32* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @Sqlitetest7_Init(i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @Sqlitetest8_Init(i32* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @Sqlitetest9_Init(i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @Sqlitetestasync_Init(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @Sqlitetest_autoext_Init(i32* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @Sqlitetest_blob_Init(i32* %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @Sqlitetest_demovfs_Init(i32* %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @Sqlitetest_func_Init(i32* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @Sqlitetest_hexio_Init(i32* %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @Sqlitetest_init_Init(i32* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @Sqlitetest_malloc_Init(i32* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @Sqlitetest_mutex_Init(i32* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @Sqlitetestschema_Init(i32* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @Sqlitetesttclvar_Init(i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @Sqlitetestfs_Init(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @SqlitetestThread_Init(i32* %65)
  %67 = call i32 (...) @SqlitetestOnefile_Init()
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @SqlitetestOsinst_Init(i32* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @Sqlitetestbackup_Init(i32* %70)
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @Sqlitetestintarray_Init(i32* %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @Sqlitetestvfs_Init(i32* %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @Sqlitetestrtree_Init(i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @Sqlitequota_Init(i32* %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @Sqlitemultiplex_Init(i32* %80)
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @SqliteSuperlock_Init(i32* %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @SqlitetestSyscall_Init(i32* %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @Fts5tcl_Init(i32* %86)
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @SqliteRbu_Init(i32* %88)
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @Sqlitetesttcl_Init(i32* %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @TestExpert_Init(i32* %92)
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @Sqlitetest_window_Init(i32* %94)
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @Sqlitetestvdbecov_Init(i32* %96)
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* @load_testfixture_extensions, align 4
  %100 = call i32 @Tcl_CreateObjCommand(i32* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 0, i32 0)
  ret i8* null
}

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @Tcl_GetCommandInfo(i32*, i8*, i32*) #1

declare dso_local i32 @Sqlite3_Init(i32*) #1

declare dso_local i32 @Md5_Init(i32*) #1

declare dso_local i32 @Sqliteconfig_Init(i32*) #1

declare dso_local i32 @Sqlitetest1_Init(i32*) #1

declare dso_local i32 @Sqlitetest2_Init(i32*) #1

declare dso_local i32 @Sqlitetest3_Init(i32*) #1

declare dso_local i32 @Sqlitetest4_Init(i32*) #1

declare dso_local i32 @Sqlitetest5_Init(i32*) #1

declare dso_local i32 @Sqlitetest6_Init(i32*) #1

declare dso_local i32 @Sqlitetest7_Init(i32*) #1

declare dso_local i32 @Sqlitetest8_Init(i32*) #1

declare dso_local i32 @Sqlitetest9_Init(i32*) #1

declare dso_local i32 @Sqlitetestasync_Init(i32*) #1

declare dso_local i32 @Sqlitetest_autoext_Init(i32*) #1

declare dso_local i32 @Sqlitetest_blob_Init(i32*) #1

declare dso_local i32 @Sqlitetest_demovfs_Init(i32*) #1

declare dso_local i32 @Sqlitetest_func_Init(i32*) #1

declare dso_local i32 @Sqlitetest_hexio_Init(i32*) #1

declare dso_local i32 @Sqlitetest_init_Init(i32*) #1

declare dso_local i32 @Sqlitetest_malloc_Init(i32*) #1

declare dso_local i32 @Sqlitetest_mutex_Init(i32*) #1

declare dso_local i32 @Sqlitetestschema_Init(i32*) #1

declare dso_local i32 @Sqlitetesttclvar_Init(i32*) #1

declare dso_local i32 @Sqlitetestfs_Init(i32*) #1

declare dso_local i32 @SqlitetestThread_Init(i32*) #1

declare dso_local i32 @SqlitetestOnefile_Init(...) #1

declare dso_local i32 @SqlitetestOsinst_Init(i32*) #1

declare dso_local i32 @Sqlitetestbackup_Init(i32*) #1

declare dso_local i32 @Sqlitetestintarray_Init(i32*) #1

declare dso_local i32 @Sqlitetestvfs_Init(i32*) #1

declare dso_local i32 @Sqlitetestrtree_Init(i32*) #1

declare dso_local i32 @Sqlitequota_Init(i32*) #1

declare dso_local i32 @Sqlitemultiplex_Init(i32*) #1

declare dso_local i32 @SqliteSuperlock_Init(i32*) #1

declare dso_local i32 @SqlitetestSyscall_Init(i32*) #1

declare dso_local i32 @Fts5tcl_Init(i32*) #1

declare dso_local i32 @SqliteRbu_Init(i32*) #1

declare dso_local i32 @Sqlitetesttcl_Init(i32*) #1

declare dso_local i32 @TestExpert_Init(i32*) #1

declare dso_local i32 @Sqlitetest_window_Init(i32*) #1

declare dso_local i32 @Sqlitetestvdbecov_Init(i32*) #1

declare dso_local i32 @Tcl_CreateObjCommand(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
