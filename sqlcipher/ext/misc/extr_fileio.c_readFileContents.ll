; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_readFileContents.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_readFileContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SQLITE_LIMIT_LENGTH = common dso_local global i32 0, align 4
@SQLITE_TOOBIG = common dso_local global i32 0, align 4
@SQLITE_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @readFileContents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readFileContents(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %76

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i32 @fseek(i32* %16, i32 0, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ftell(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @rewind(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32* @sqlite3_context_db_handle(i32* %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @SQLITE_LIMIT_LENGTH, align 4
  %27 = call i32 @sqlite3_limit(i32* %25, i32 %26, i32 -1)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %15
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @SQLITE_TOOBIG, align 4
  %34 = call i32 @sqlite3_result_error_code(i32* %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @fclose(i32* %35)
  br label %76

37:                                               ; preds = %15
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 1, %42 ]
  %45 = call i8* @sqlite3_malloc64(i32 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @sqlite3_result_error_nomem(i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @fclose(i32* %51)
  br label %76

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 @fread(i8* %55, i32 1, i64 %57, i32* %58)
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %54, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @sqlite3_result_blob64(i32* %63, i8* %64, i32 %65, i32 (i8*)* @sqlite3_free)
  br label %73

67:                                               ; preds = %53
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @SQLITE_IOERR, align 4
  %70 = call i32 @sqlite3_result_error_code(i32* %68, i32 %69)
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @sqlite3_free(i8* %71)
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @fclose(i32* %74)
  br label %76

76:                                               ; preds = %73, %48, %31, %14
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @sqlite3_limit(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @sqlite3_result_blob64(i32*, i8*, i32, i32 (i8*)*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
