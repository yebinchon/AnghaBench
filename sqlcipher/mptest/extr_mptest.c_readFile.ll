; ModuleID = '/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_readFile.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_readFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot open \22%s\22 for reading\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @readFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @fatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @SEEK_END, align 4
  %16 = call i32 @fseek(i32* %14, i32 0, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @ftell(i32* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @rewind(i32* %19)
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i8* @sqlite3_malloc(i64 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @fread(i8* %24, i32 1, i64 %25, i32* %26)
  store i64 %27, i64* %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = load i8*, i8** %5, align 8
  ret i8* %33
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fatalError(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @sqlite3_malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
