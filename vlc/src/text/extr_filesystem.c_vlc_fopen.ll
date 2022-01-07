; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_filesystem.c_vlc_fopen.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_filesystem.c_vlc_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_TEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_fopen(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %42 [
    i32 114, label %20
    i32 97, label %22
    i32 119, label %29
    i32 120, label %36
    i32 43, label %40
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @O_RDONLY, align 4
  store i32 %21, i32* %6, align 4
  br label %42

22:                                               ; preds = %16
  %23 = load i32, i32* @O_WRONLY, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @O_CREAT, align 4
  %25 = load i32, i32* @O_APPEND, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %42

29:                                               ; preds = %16
  %30 = load i32, i32* @O_WRONLY, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @O_CREAT, align 4
  %32 = load i32, i32* @O_TRUNC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %16
  %37 = load i32, i32* @O_EXCL, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %42

40:                                               ; preds = %16
  %41 = load i32, i32* @O_RDWR, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %16, %40, %36, %29, %22, %20
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  br label %12

46:                                               ; preds = %12
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @vlc_open(i8* %47, i32 %50, i32 438)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32* null, i32** %3, align 8
  br label %66

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i32* @fdopen(i32 %56, i8* %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @vlc_close(i32 %62)
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i32*, i32** %10, align 8
  store i32* %65, i32** %3, align 8
  br label %66

66:                                               ; preds = %64, %54
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i32 @vlc_open(i8*, i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
