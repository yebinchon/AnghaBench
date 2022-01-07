; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_print_db_header.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_print_db_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Decoded:\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Database page size\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"File format write version\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"File format read version\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Reserved space at end of page\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"File change counter\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Size of database in pages\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Page number of first freelist page\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Number of freelist pages\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Schema cookie\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Schema format version\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Default page cache size\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Largest auto-vac root page\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Text encoding\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"User version\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Incremental-vacuum mode\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Application ID\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"meta[8]\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"meta[9]\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"meta[10]\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"meta[11]\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"meta[12]\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Change counter for version number\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"SQLite version number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_db_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_db_header() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @print_byte_range(i32 0, i32 100, i32 0)
  store i8* %2, i8** %1, align 8
  %3 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @print_decode_line(i8* %4, i32 16, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @print_decode_line(i8* %6, i32 18, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 @print_decode_line(i8* %8, i32 19, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @print_decode_line(i8* %10, i32 20, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @print_decode_line(i8* %12, i32 24, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @print_decode_line(i8* %14, i32 28, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @print_decode_line(i8* %16, i32 32, i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 @print_decode_line(i8* %18, i32 36, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @print_decode_line(i8* %20, i32 40, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %22 = load i8*, i8** %1, align 8
  %23 = call i32 @print_decode_line(i8* %22, i32 44, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @print_decode_line(i8* %24, i32 48, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %26 = load i8*, i8** %1, align 8
  %27 = call i32 @print_decode_line(i8* %26, i32 52, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %28 = load i8*, i8** %1, align 8
  %29 = call i32 @print_decode_line(i8* %28, i32 56, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @print_decode_line(i8* %30, i32 60, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 @print_decode_line(i8* %32, i32 64, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 @print_decode_line(i8* %34, i32 68, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %36 = load i8*, i8** %1, align 8
  %37 = call i32 @print_decode_line(i8* %36, i32 72, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %38 = load i8*, i8** %1, align 8
  %39 = call i32 @print_decode_line(i8* %38, i32 76, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %40 = load i8*, i8** %1, align 8
  %41 = call i32 @print_decode_line(i8* %40, i32 80, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %42 = load i8*, i8** %1, align 8
  %43 = call i32 @print_decode_line(i8* %42, i32 84, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %44 = load i8*, i8** %1, align 8
  %45 = call i32 @print_decode_line(i8* %44, i32 88, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %46 = load i8*, i8** %1, align 8
  %47 = call i32 @print_decode_line(i8* %46, i32 92, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %48 = load i8*, i8** %1, align 8
  %49 = call i32 @print_decode_line(i8* %48, i32 96, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  ret void
}

declare dso_local i8* @print_byte_range(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_decode_line(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
