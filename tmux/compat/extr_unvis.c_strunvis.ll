; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_unvis.c_strunvis.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_unvis.c_strunvis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNVIS_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strunvis(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %5, align 8
  %13 = load i8, i8* %11, align 1
  store i8 %13, i8* %6, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %23, %15
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %6, align 1
  %19 = call i32 @unvis(i8* %17, i8 signext %18, i32* %8, i32 0)
  switch i32 %19, label %27 [
    i32 129, label %20
    i32 128, label %23
    i32 0, label %26
    i32 130, label %26
  ]

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  br label %29

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %16

26:                                               ; preds = %16, %16
  br label %29

27:                                               ; preds = %16
  %28 = load i8*, i8** %4, align 8
  store i8 0, i8* %28, align 1
  store i32 -1, i32* %3, align 4
  br label %47

29:                                               ; preds = %26, %20
  br label %10

30:                                               ; preds = %10
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %6, align 1
  %33 = load i32, i32* @UNVIS_END, align 4
  %34 = call i32 @unvis(i8* %31, i8 signext %32, i32* %8, i32 %33)
  %35 = icmp eq i32 %34, 129
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i8*, i8** %4, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %27
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @unvis(i8*, i8 signext, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
