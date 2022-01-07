; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_utf8_to_wchar.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_utf8_to_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @utf8_to_wchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @utf8_to_wchar(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %41

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32* @calloc(i32 1, i32 4)
  store i32* %16, i32** %2, align 8
  br label %41

17:                                               ; preds = %9
  %18 = load i32, i32* @CP_UTF8, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @MultiByteToWideChar(i32 %18, i32 0, i8* %19, i32 -1, i32* null, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %41

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = call i32* @calloc(i32 %25, i32 4)
  store i32* %26, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32* null, i32** %2, align 8
  br label %41

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @utf8_to_wchar_no_alloc(i8* %30, i32* %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @sfree(i32* %37)
  store i32* null, i32** %2, align 8
  br label %41

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  store i32* %40, i32** %2, align 8
  br label %41

41:                                               ; preds = %39, %36, %28, %23, %15, %8
  %42 = load i32*, i32** %2, align 8
  ret i32* %42
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @utf8_to_wchar_no_alloc(i8*, i32*, i32) #1

declare dso_local i32 @sfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
