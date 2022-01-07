; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_callscript.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_callscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@BOT = common dso_local global i64 0, align 8
@TOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_4__*, i32*)* @jsR_callscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsR_callscript(i32* %0, i32 %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @jsR_savescope(i32* %14, i32* %15)
  br label %17

17:                                               ; preds = %13, %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @js_pop(i32* %18, i32 %19)
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %41, %17
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @js_pushundefined(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @js_initvar(i32* %30, i32 %37, i32 -1)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @js_pop(i32* %39, i32 1)
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %21

44:                                               ; preds = %21
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = call i32 @jsR_run(i32* %45, %struct.TYPE_4__* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @stackidx(i32* %48, i32 -1)
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i64, i64* @BOT, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* @BOT, align 8
  store i64 %52, i64* @TOP, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @js_pushvalue(i32* %53, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @jsR_restorescope(i32* %59)
  br label %61

61:                                               ; preds = %58, %44
  ret void
}

declare dso_local i32 @jsR_savescope(i32*, i32*) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i32 @js_pushundefined(i32*) #1

declare dso_local i32 @js_initvar(i32*, i32, i32) #1

declare dso_local i32 @jsR_run(i32*, %struct.TYPE_4__*) #1

declare dso_local i32* @stackidx(i32*, i32) #1

declare dso_local i32 @js_pushvalue(i32*, i32) #1

declare dso_local i32 @jsR_restorescope(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
