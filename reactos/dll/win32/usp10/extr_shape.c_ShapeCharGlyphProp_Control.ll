; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeCharGlyphProp_Control.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeCharGlyphProp_Control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }

@SCRIPT_JUSTIFY_BLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, i32*, i32*, i32, i64*, i32, i64*, i32*, %struct.TYPE_10__*)* @ShapeCharGlyphProp_Control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShapeCharGlyphProp_Control(i32 %0, %struct.TYPE_9__* %1, i32* %2, i32* %3, i32 %4, i64* %5, i32 %6, i64* %7, i32* %8, %struct.TYPE_10__* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i64* %5, i64** %16, align 8
  store i32 %6, i32* %17, align 4
  store i64* %7, i64** %18, align 8
  store i32* %8, i32** %19, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %20, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %71, %10
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* %17, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %28 = load i32, i32* %21, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %34 = load i32, i32* %21, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @SCRIPT_JUSTIFY_BLANK, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %41 = load i32, i32* %21, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32 %39, i32* %45, align 8
  %46 = load i64*, i64** %16, align 8
  %47 = load i32, i32* %21, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %26
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %58 = load i32, i32* %21, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %70

63:                                               ; preds = %26
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %65 = load i32, i32* %21, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %56
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %21, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %21, align 4
  br label %22

74:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
