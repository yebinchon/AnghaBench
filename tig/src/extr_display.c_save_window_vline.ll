; ModuleID = '/home/carl/AnghaBench/tig/src/extr_display.c_save_window_vline.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_display.c_save_window_vline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i8*, i64)* @save_window_vline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_window_vline(i32* %0, i32* %1, i32* %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i8*, i8** %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = call i32 @mvwinnstr(i32* %16, i32 %17, i32 0, i8* %18, i64 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @ERR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @ERR, align 4
  br label %40

26:                                               ; preds = %6
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i64, i64* %13, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %34, %36
  %38 = sub i64 %37, 1
  %39 = call i32 @mvwinnstr(i32* %27, i32 %28, i32 0, i8* %33, i64 %38)
  br label %40

40:                                               ; preds = %26, %24
  %41 = phi i32 [ %25, %24 ], [ %39, %26 ]
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @ERR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %62

46:                                               ; preds = %40
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 124, i8* %50, align 1
  %51 = load i8*, i8** %12, align 8
  %52 = call i8* @string_trim_end(i8* %51)
  store i8* %52, i8** %12, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i8* @string_trim_end(i8* %54)
  %56 = call i64 @fprintf(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %12, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = add nsw i64 %58, 1
  %60 = icmp eq i64 %56, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %46, %45
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @mvwinnstr(i32*, i32, i32, i8*, i64) #1

declare dso_local i8* @string_trim_end(i8*) #1

declare dso_local i64 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
