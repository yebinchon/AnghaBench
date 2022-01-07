; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_sqlite3TestErrCode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_sqlite3TestErrCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_MISUSE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"error code %s (%d) does not match sqlite3_errcode %s (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3TestErrCode(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [200 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i64 (...) @sqlite3_threadsafe()
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SQLITE_MISUSE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @sqlite3_errcode(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @sqlite3_errcode(i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @t1ErrorName(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @t1ErrorName(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @sqlite3_snprintf(i32 200, i8* %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %33, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @Tcl_ResetResult(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 0
  %40 = call i32 @Tcl_AppendResult(i32* %38, i8* %39, i32 0)
  store i32 1, i32* %4, align 4
  br label %42

41:                                               ; preds = %20, %16, %12, %3
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @sqlite3_threadsafe(...) #1

declare dso_local i32 @sqlite3_errcode(i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @t1ErrorName(i32) #1

declare dso_local i32 @Tcl_ResetResult(i32*) #1

declare dso_local i32 @Tcl_AppendResult(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
