; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/scripts/extr_hexdump.c_hexdump.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/scripts/extr_hexdump.c_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@string = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\22\0A\22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @hexdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexdump(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* @string, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  store i32 0, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @fgetc(i32* %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %39, %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* @string, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* %5, align 4
  %25 = call i64 (i32*, i8*, ...) @fprintf(i32* %19, i8* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 72
  br i1 %31, label %32, label %39

32:                                               ; preds = %18
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* @string, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %38 = call i64 (i32*, i8*, ...) @fprintf(i32* %33, i8* %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %32, %18
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fgetc(i32* %40)
  store i32 %41, i32* %5, align 4
  br label %15

42:                                               ; preds = %15
  %43 = load i64, i64* @string, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fgetc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
