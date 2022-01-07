; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_readfileFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_readfileFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @readfileFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readfileFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @sqlite3_value_text(i32* %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %54

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %54

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @SEEK_END, align 4
  %28 = call i32 @fseek(i32* %26, i32 0, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @ftell(i32* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @rewind(i32* %31)
  %33 = load i64, i64* %9, align 8
  %34 = call i8* @sqlite3_malloc64(i64 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %25
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @fread(i8* %38, i64 %39, i32 1, i32* %40)
  %42 = icmp eq i32 1, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @sqlite3_result_blob(i32* %44, i8* %45, i64 %46, i32 (i8*)* @sqlite3_free)
  br label %51

48:                                               ; preds = %37, %25
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @sqlite3_free(i8* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @fclose(i32* %52)
  br label %54

54:                                               ; preds = %51, %24, %18
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i64) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i64, i32 (i8*)*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
