; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_session_speed_test.c_run_test.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_session_speed_test.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@xConflict = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(i32* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @sqlite3session_create(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %9)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @abort_due_to_error(i32 %21)
  br label %23

23:                                               ; preds = %20, %4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @sqlite3session_attach(i32* %24, i32 0)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @abort_due_to_error(i32 %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @sqlite3_prepare(i32* %33, i8* %34, i32 -1, i32** %10, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @abort_due_to_error(i32 %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @execsql(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %64, %42
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @sqlite3_bind_int(i32* %50, i32 1, i32 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @sqlite3_step(i32* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @sqlite3_reset(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @abort_due_to_error(i32 %61)
  br label %63

63:                                               ; preds = %60, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %45

67:                                               ; preds = %45
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @sqlite3_finalize(i32* %68)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @sqlite3session_changeset(i32* %70, i32* %13, i8** %14)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @SQLITE_OK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @abort_due_to_error(i32 %76)
  br label %78

78:                                               ; preds = %75, %67
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @execsql(i32* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i8*, i8** %14, align 8
  %84 = load i32, i32* @xConflict, align 4
  %85 = call i32 @sqlite3changeset_apply(i32* %81, i32 %82, i8* %83, i32 0, i32 %84, i32 0)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @SQLITE_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @abort_due_to_error(i32 %90)
  br label %92

92:                                               ; preds = %89, %78
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @sqlite3_free(i8* %93)
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @sqlite3session_delete(i32* %95)
  ret void
}

declare dso_local i32 @sqlite3session_create(i32*, i8*, i32**) #1

declare dso_local i32 @abort_due_to_error(i32) #1

declare dso_local i32 @sqlite3session_attach(i32*, i32) #1

declare dso_local i32 @sqlite3_prepare(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @execsql(i32*, i8*) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3session_changeset(i32*, i32*, i8**) #1

declare dso_local i32 @sqlite3changeset_apply(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3session_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
