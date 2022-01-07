; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstate.c_js_loadstringx.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstate.c_js_loadstringx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, i8*, i32)* @js_loadstringx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @js_loadstringx(%struct.TYPE_10__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = call i64 @js_try(%struct.TYPE_10__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = call i32 @jsP_freeparse(%struct.TYPE_10__* %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call i32 @js_throw(%struct.TYPE_10__* %17)
  br label %19

19:                                               ; preds = %14, %4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32* @jsP_parse(%struct.TYPE_10__* %20, i8* %21, i8* %22)
  store i32* %23, i32** %9, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  br label %36

32:                                               ; preds = %19
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i64 [ %31, %28 ], [ %35, %32 ]
  %38 = call i32* @jsC_compilescript(%struct.TYPE_10__* %24, i32* %25, i64 %37)
  store i32* %38, i32** %10, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = call i32 @jsP_freeparse(%struct.TYPE_10__* %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32* [ %53, %50 ], [ null, %54 ]
  br label %61

57:                                               ; preds = %36
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  br label %61

61:                                               ; preds = %57, %55
  %62 = phi i32* [ %56, %55 ], [ %60, %57 ]
  %63 = call i32 @js_newscript(%struct.TYPE_10__* %41, i32* %42, i32* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = call i32 @js_endtry(%struct.TYPE_10__* %64)
  ret void
}

declare dso_local i64 @js_try(%struct.TYPE_10__*) #1

declare dso_local i32 @jsP_freeparse(%struct.TYPE_10__*) #1

declare dso_local i32 @js_throw(%struct.TYPE_10__*) #1

declare dso_local i32* @jsP_parse(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32* @jsC_compilescript(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @js_newscript(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @js_endtry(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
