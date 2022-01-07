; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_CharUpperBuffU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_CharUpperBuffU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @CharUpperBuffU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CharUpperBuffU(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32* @calloc(i32 %8, i32 4)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @utf8_to_wchar_no_alloc(i8* %14, i32* %15, i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @CharUpperBuffW(i32* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @wchar_to_utf8_no_alloc(i32* %21, i8* %22, i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @free(i32* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @utf8_to_wchar_no_alloc(i8*, i32*, i32) #1

declare dso_local i32 @CharUpperBuffW(i32*, i32) #1

declare dso_local i32 @wchar_to_utf8_no_alloc(i32*, i8*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
