; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_find.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64)* @rofi_theme_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rofi_theme_find(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %3
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %4, align 8
  br label %59

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @g_strdup(i8* %21)
  store i8* %22, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strtok_r(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %46, %20
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32* @rofi_theme_find_single(i32* %31, i8* %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32*, i32** %12, align 8
  store i32* %38, i32** %5, align 8
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %10, align 4
  br label %45

40:                                               ; preds = %29
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %48

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45
  %47 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i8* %47, i8** %11, align 8
  br label %26

48:                                               ; preds = %43, %26
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @g_free(i8* %49)
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %48
  %57 = load i32*, i32** %5, align 8
  store i32* %57, i32** %4, align 8
  br label %59

58:                                               ; preds = %53
  store i32* null, i32** %4, align 8
  br label %59

59:                                               ; preds = %58, %56, %18
  %60 = load i32*, i32** %4, align 8
  ret i32* %60
}

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32* @rofi_theme_find_single(i32*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
