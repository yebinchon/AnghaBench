; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_render.c_get_detailed_scroll_button_width.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_render.c_get_detailed_scroll_button_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.swaynag*)* @get_detailed_scroll_button_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_detailed_scroll_button_width(i32* %0, %struct.swaynag* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.swaynag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.swaynag* %1, %struct.swaynag** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %13 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %18 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %21 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_text_size(i32* %11, i32 %16, i32* %5, i32* %7, i32* null, i32 %19, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %28 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %33 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %36 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @get_text_size(i32* %26, i32 %31, i32* %6, i32* %7, i32* null, i32 %34, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  br label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %8, align 4
  %50 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %51 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %56 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %60 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %65 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %69, 2
  %71 = add nsw i32 %68, %70
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %72, 2
  %74 = add nsw i32 %71, %73
  ret i32 %74
}

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
