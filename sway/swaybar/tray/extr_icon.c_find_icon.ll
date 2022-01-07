; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_find_icon.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_find_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Hicolor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_icon(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = call i8* @find_icon_with_theme(i32* %19, i32* %20, i8* %21, i32 %22, i8* %23, i32* %24, i32* %25)
  store i8* %26, i8** %15, align 8
  br label %27

27:                                               ; preds = %18, %7
  %28 = load i8*, i8** %15, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = call i8* @find_icon_with_theme(i32* %31, i32* %32, i8* %33, i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %35, i32* %36)
  store i8* %37, i8** %15, align 8
  br label %38

38:                                               ; preds = %30, %27
  %39 = load i8*, i8** %15, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i8* @find_fallback_icon(i32* %42, i8* %43, i32* %44, i32* %45)
  store i8* %46, i8** %15, align 8
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i8*, i8** %15, align 8
  ret i8* %48
}

declare dso_local i8* @find_icon_with_theme(i32*, i32*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i8* @find_fallback_icon(i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
