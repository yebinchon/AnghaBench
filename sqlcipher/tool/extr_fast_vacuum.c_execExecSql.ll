; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_fast_vacuum.c_execExecSql.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_fast_vacuum.c_execExecSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @execExecSql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execExecSql(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @sqlite3_prepare(i32* %9, i8* %10, i32 -1, i32** %5, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SQLITE_OK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @sqlite3_errmsg(i32* %17)
  %19 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %27, %21
  %23 = load i64, i64* @SQLITE_ROW, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @sqlite3_step(i32* %24)
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @sqlite3_column_text(i32* %29, i32 0)
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @execSql(i32* %28, i8* %31)
  br label %22

33:                                               ; preds = %22
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @vacuumFinalize(i32* %34)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @execSql(i32*, i8*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @vacuumFinalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
