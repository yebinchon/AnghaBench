; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_flush_space.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_flush_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.genstate = type { i64, i32, i32* }

@flush_space.space = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@WS_ALLOW_BREAK_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, %struct.genstate*)* @flush_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_space(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i32 %3, %struct.genstate* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.genstate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.genstate* %4, %struct.genstate** %10, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WS_ALLOW_BREAK_SPACE, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.genstate*, %struct.genstate** %10, align 8
  %21 = getelementptr inbounds %struct.genstate, %struct.genstate* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load %struct.genstate*, %struct.genstate** %10, align 8
  %24 = getelementptr inbounds %struct.genstate, %struct.genstate* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %5
  %28 = load %struct.genstate*, %struct.genstate** %10, align 8
  %29 = getelementptr inbounds %struct.genstate, %struct.genstate* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = call i32 @add_flow_space(i32* %36, i32* %37, %struct.TYPE_10__* %38, %struct.TYPE_10__* %39)
  br label %51

41:                                               ; preds = %32
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = load i8*, i8** @flush_space.space, align 8
  %47 = load i8*, i8** @flush_space.space, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @add_flow_word(i32* %42, i32* %43, %struct.TYPE_10__* %44, %struct.TYPE_10__* %45, i8* %46, i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %41, %35
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.genstate*, %struct.genstate** %10, align 8
  %54 = getelementptr inbounds %struct.genstate, %struct.genstate* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %5
  ret void
}

declare dso_local i32 @add_flow_space(i32*, i32*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @add_flow_word(i32*, i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
