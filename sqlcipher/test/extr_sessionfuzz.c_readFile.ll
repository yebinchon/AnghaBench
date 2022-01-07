; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_sessionfuzz.c_readFile.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_sessionfuzz.c_readFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot open \22%s\22 for reading\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to malloc %lld bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Read only %d of %d bytes from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i32*)* @readFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readFile(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %7, align 8
  %13 = load i8**, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @SEEK_END, align 4
  %25 = call i32 @fseek(i32* %23, i32 0, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @ftell(i32* %26)
  store i64 %27, i64* %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @rewind(i32* %28)
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i8* @sqlite3_malloc64(i64 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load i32, i32* @stderr, align 4
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %22
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @fread(i8* %43, i32 1, i64 %44, i32* %45)
  store i64 %46, i64* %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load i32, i32* @stderr, align 4
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %57, i8* %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %42
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = load i8**, i8*** %5, align 8
  store i8* %68, i8** %69, align 8
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
