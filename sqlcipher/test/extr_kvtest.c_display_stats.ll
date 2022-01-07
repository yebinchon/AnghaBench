; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_display_stats.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_display_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SQLITE_STATUS_MEMORY_USED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Memory Used:                         %d (max %d) bytes\0A\00", align 1
@SQLITE_STATUS_MALLOC_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Number of Outstanding Allocations:   %d (max %d)\0A\00", align 1
@SQLITE_STATUS_PAGECACHE_USED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Number of Pcache Pages Used:         %d (max %d) pages\0A\00", align 1
@SQLITE_STATUS_PAGECACHE_OVERFLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Number of Pcache Overflow Bytes:     %d (max %d) bytes\0A\00", align 1
@SQLITE_STATUS_MALLOC_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Largest Allocation:                  %d bytes\0A\00", align 1
@SQLITE_STATUS_PAGECACHE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Largest Pcache Allocation:           %d bytes\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_USED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"Pager Heap Usage:                    %d bytes\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_HIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Page cache hits:                     %d\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_MISS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Page cache misses:                   %d\0A\00", align 1
@SQLITE_DBSTATUS_CACHE_WRITE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"Page cache writes:                   %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @display_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_stats(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** @stdout, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %11 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @sqlite3_status(i32 %11, i32* %5, i32* %6, i32 %12)
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %18 = load i32, i32* @SQLITE_STATUS_MALLOC_COUNT, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sqlite3_status(i32 %18, i32* %5, i32* %6, i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %23)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %25 = load i32, i32* @SQLITE_STATUS_PAGECACHE_USED, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @sqlite3_status(i32 %25, i32* %5, i32* %6, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 %30)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %32 = load i32, i32* @SQLITE_STATUS_PAGECACHE_OVERFLOW, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @sqlite3_status(i32 %32, i32* %5, i32* %6, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32 %37)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %39 = load i32, i32* @SQLITE_STATUS_MALLOC_SIZE, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @sqlite3_status(i32 %39, i32* %5, i32* %6, i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %45 = load i32, i32* @SQLITE_STATUS_PAGECACHE_SIZE, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @sqlite3_status(i32 %45, i32* %5, i32* %6, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @SQLITE_DBSTATUS_CACHE_USED, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @sqlite3_db_status(i32* %51, i32 %52, i32* %5, i32* %6, i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %56)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @SQLITE_DBSTATUS_CACHE_HIT, align 4
  %60 = call i32 @sqlite3_db_status(i32* %58, i32 %59, i32* %5, i32* %6, i32 1)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %62)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @SQLITE_DBSTATUS_CACHE_MISS, align 4
  %66 = call i32 @sqlite3_db_status(i32* %64, i32 %65, i32* %5, i32* %6, i32 1)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %68)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @SQLITE_DBSTATUS_CACHE_WRITE, align 4
  %72 = call i32 @sqlite3_db_status(i32* %70, i32 %71, i32* %5, i32* %6, i32 1)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %74)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @displayLinuxIoStats(i32* %76)
  ret i32 0
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @sqlite3_status(i32, i32*, i32*, i32) #1

declare dso_local i32 @sqlite3_db_status(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @displayLinuxIoStats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
