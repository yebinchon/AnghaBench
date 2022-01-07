; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_atrc.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_atrc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Usage: %s DATABASE\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"sqlite3_open() returns %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"BEGIN;\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c".schema --indent\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"PRAGMA integrity_check;\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ROLLBACK;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @sqlite3_open(i8* %25, i32** %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 1, i32* %3, align 4
  br label %61

33:                                               ; preds = %21
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @sqlite3_str_new(i32* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @sqlite3_str_new(i32* %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @rename_all_tables(i32* %38, i32* %39, i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i8* @sqlite3_str_finish(i32* %42)
  store i8* %43, i8** %11, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i8* @sqlite3_str_finish(i32* %44)
  store i8* %45, i8** %12, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @sqlite3_close(i32* %46)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @sqlite3_free(i8* %51)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @sqlite3_free(i8* %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %33, %29
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sqlite3_open(i8*, i32**) #1

declare dso_local i32* @sqlite3_str_new(i32*) #1

declare dso_local i32 @rename_all_tables(i32*, i32*, i32*) #1

declare dso_local i8* @sqlite3_str_finish(i32*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
