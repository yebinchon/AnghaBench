; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_demux.c_demux_FilterChainNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_demux.c_demux_FilterChainNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @demux_FilterChainNew(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %2
  store i32* null, i32** %3, align 8
  br label %48

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %48

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @config_ChainCreate(i8** %8, i32** %7, i8* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i8*, i8** %9, align 8
  store i8* %33, i8** %6, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32* @demux_FilterNew(i32* %34, i8* %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32*, i32** %10, align 8
  store i32* %40, i32** %4, align 8
  br label %41

41:                                               ; preds = %39, %28
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @config_ChainDestroy(i32* %44)
  br label %25

46:                                               ; preds = %25
  %47 = load i32*, i32** %4, align 8
  store i32* %47, i32** %3, align 8
  br label %48

48:                                               ; preds = %46, %23, %17
  %49 = load i32*, i32** %3, align 8
  ret i32* %49
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @config_ChainCreate(i8**, i32**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @demux_FilterNew(i32*, i8*) #1

declare dso_local i32 @config_ChainDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
