; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_do_refresh.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_do_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRING_LENGTH_WRAPPED = common dso_local global i32 0, align 4
@HISTORY = common dso_local global i32 0, align 4
@flag = common dso_local global i64* null, align 8
@lines = common dso_local global i32* null, align 8
@x = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c">> \00", align 1
@input_line = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_refresh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @STRING_LENGTH_WRAPPED, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %54, %0
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @HISTORY, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %10
  %15 = load i64*, i64** @flag, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load i32*, i32** @lines, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @x, align 4
  %28 = call i32 @wrap_bars(i8* %9, i32 %26, i32 %27)
  br label %37

29:                                               ; preds = %14
  %30 = load i32*, i32** @lines, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @x, align 4
  %36 = call i32 @wrap(i8* %9, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %21
  %38 = call i32 @count_lines(i8* %9)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @y, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load i32, i32* @y, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %1, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @move(i32 %49, i32 0)
  %51 = call i32 (i8*, ...) @printw(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %9)
  %52 = call i32 (...) @clrtoeol()
  br label %53

53:                                               ; preds = %45, %37
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %10

57:                                               ; preds = %10
  %58 = load i32, i32* @y, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @move(i32 %59, i32 0)
  %61 = call i32 (...) @clrtoeol()
  %62 = call i32 (i8*, ...) @printw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i8*, i8** @input_line, align 8
  %64 = call i32 (i8*, ...) @printw(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = call i32 (...) @clrtoeol()
  %66 = call i32 (...) @refresh()
  %67 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %67)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wrap_bars(i8*, i32, i32) #2

declare dso_local i32 @wrap(i8*, i32, i32) #2

declare dso_local i32 @count_lines(i8*) #2

declare dso_local i32 @move(i32, i32) #2

declare dso_local i32 @printw(i8*, ...) #2

declare dso_local i32 @clrtoeol(...) #2

declare dso_local i32 @refresh(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
