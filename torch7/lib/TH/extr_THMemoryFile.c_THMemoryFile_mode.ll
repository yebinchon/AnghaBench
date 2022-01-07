; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THMemoryFile.c_THMemoryFile_mode.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THMemoryFile.c_THMemoryFile_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @THMemoryFile_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @THMemoryFile_mode(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 114
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  store i32 1, i32* %19, align 4
  store i32 1, i32* %4, align 4
  br label %51

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 119
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  store i32 1, i32* %26, align 4
  store i32 1, i32* %4, align 4
  br label %51

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  br label %50

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 114
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 119
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  store i32 1, i32* %46, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 1, i32* %47, align 4
  store i32 1, i32* %4, align 4
  br label %51

48:                                               ; preds = %39, %33
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49, %28
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %45, %25, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
