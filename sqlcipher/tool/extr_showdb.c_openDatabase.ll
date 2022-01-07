; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_openDatabase.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_openDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_URI = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: can't open %s (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @openDatabase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @openDatabase(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %10 = load i32, i32* @SQLITE_OPEN_URI, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @sqlite3_open_v2(i8* %12, i32** %5, i32 %13, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SQLITE_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @sqlite3_errmsg(i32* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23, i8* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @sqlite3_close(i32* %26)
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %2
  %30 = load i32*, i32** %5, align 8
  ret i32* %30
}

declare dso_local i32 @sqlite3_open_v2(i8*, i32**, i32, i32) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
