; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_where_not_in_selected.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_where_not_in_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"failed to create db\0A\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"CREATE TABLE `IESTable` (`Action` CHAR(64), `Condition` CHAR(64), `Sequence` LONG PRIMARY KEY `Sequence`)\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot create IESTable table: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"CREATE TABLE `CATable` (`Action` CHAR(64), `Type` LONG PRIMARY KEY `Type`)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Cannot create CATable table: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"INSERT INTO `IESTable` ( `Action`, `Condition`, `Sequence`) VALUES ( 'clean', 'cond4', 4)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"cannot add entry to IESTable table:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [92 x i8] c"INSERT INTO `IESTable` ( `Action`, `Condition`, `Sequence`) VALUES ( 'depends', 'cond1', 1)\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"INSERT INTO `IESTable` ( `Action`, `Condition`, `Sequence`) VALUES ( 'build', 'cond2', 2)\00", align 1
@.str.9 = private unnamed_addr constant [91 x i8] c"INSERT INTO `IESTable` ( `Action`, `Condition`, `Sequence`) VALUES ( 'build2', 'cond6', 6)\00", align 1
@.str.10 = private unnamed_addr constant [90 x i8] c"INSERT INTO `IESTable` ( `Action`, `Condition`, `Sequence`) VALUES ( 'build', 'cond3', 3)\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"INSERT INTO `CATable` ( `Action`, `Type` ) VALUES ( 'build', 32)\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"cannot add entry to CATable table:%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"INSERT INTO `CATable` ( `Action`, `Type` ) VALUES ( 'depends', 64)\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"INSERT INTO `CATable` ( `Action`, `Type` ) VALUES ( 'clean', 63)\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"INSERT INTO `CATable` ( `Action`, `Type` ) VALUES ( 'build2', 34)\00", align 1
@.str.16 = private unnamed_addr constant [110 x i8] c"Select IESTable.Condition from CATable, IESTable where CATable.Action = IESTable.Action and CATable.Type = 32\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [25 x i8] c"failed to open view: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"failed to execute view: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"failed to fetch view: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"cond2\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"wrong condition\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"cond3\00", align 1
@msifile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_where_not_in_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_where_not_in_selected() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 (...) @create_db()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @run_query(i32 %9, i32 0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0))
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %5, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* %1, align 4
  %18 = call i64 @run_query(i32 %17, i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %5, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* %1, align 4
  %26 = call i64 @run_query(i32 %25, i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0))
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %5, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @run_query(i32 %33, i32 0, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.7, i64 0, i64 0))
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %5, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* %1, align 4
  %42 = call i64 @run_query(i32 %41, i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.8, i64 0, i64 0))
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %5, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* %1, align 4
  %50 = call i64 @run_query(i32 %49, i32 0, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9, i64 0, i64 0))
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %5, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* %1, align 4
  %58 = call i64 @run_query(i32 %57, i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.10, i64 0, i64 0))
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %5, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* %1, align 4
  %66 = call i64 @run_query(i32 %65, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0))
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %5, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* %1, align 4
  %74 = call i64 @run_query(i32 %73, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0))
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %5, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* %1, align 4
  %82 = call i64 @run_query(i32 %81, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i64 0, i64 0))
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @S_OK, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %5, align 8
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* %1, align 4
  %90 = call i64 @run_query(i32 %89, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.15, i64 0, i64 0))
  store i64 %90, i64* %5, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %5, align 8
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i64 %95)
  store i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  %97 = load i32, i32* %1, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = call i64 @MsiDatabaseOpenViewA(i32 %97, i8* %98, i32* %3)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @ERROR_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %5, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i64 %104)
  %106 = load i32, i32* %3, align 4
  %107 = call i64 @MsiViewExecute(i32 %106, i32 0)
  store i64 %107, i64* %5, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @ERROR_SUCCESS, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %5, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* %3, align 4
  %115 = call i64 @MsiViewFetch(i32 %114, i32* %2)
  store i64 %115, i64* %5, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @ERROR_SUCCESS, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %5, align 8
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* %2, align 4
  %123 = call i32 @check_record(i32 %122, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @MsiCloseHandle(i32 %125)
  %127 = load i32, i32* %3, align 4
  %128 = call i64 @MsiViewFetch(i32 %127, i32* %2)
  store i64 %128, i64* %5, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @ERROR_SUCCESS, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i64, i64* %5, align 8
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i64 %133)
  %135 = load i32, i32* %2, align 4
  %136 = call i32 @check_record(i32 %135, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @MsiCloseHandle(i32 %138)
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @MsiViewClose(i32 %140)
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @MsiCloseHandle(i32 %142)
  %144 = load i32, i32* %1, align 4
  %145 = call i32 @MsiCloseHandle(i32 %144)
  %146 = load i32, i32* @msifile, align 4
  %147 = call i32 @DeleteFileA(i32 %146)
  ret void
}

declare dso_local i32 @create_db(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @run_query(i32, i32, i8*) #1

declare dso_local i64 @MsiDatabaseOpenViewA(i32, i8*, i32*) #1

declare dso_local i64 @MsiViewExecute(i32, i32) #1

declare dso_local i64 @MsiViewFetch(i32, i32*) #1

declare dso_local i32 @check_record(i32, i32, i8*) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @MsiViewClose(i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
