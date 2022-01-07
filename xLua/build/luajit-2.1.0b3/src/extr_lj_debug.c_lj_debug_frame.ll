; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_frame.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@LJ_FR2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_debug_frame(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @tvref(i32 %13)
  %15 = load i32, i32* @LJ_FR2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 -1
  store i32* %21, i32** %8, align 8
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %67, %3
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ugt i32* %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @frame_gc(i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = call i64 @obj2gco(%struct.TYPE_4__* %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %8, align 8
  store i32* %48, i32** %4, align 8
  br label %71

49:                                               ; preds = %35
  %50 = load i32*, i32** %8, align 8
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 @frame_islua(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32*, i32** %8, align 8
  %56 = call i32* @frame_prevl(i32* %55)
  store i32* %56, i32** %8, align 8
  br label %67

57:                                               ; preds = %49
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @frame_isvarg(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* @frame_prevd(i32* %65)
  store i32* %66, i32** %8, align 8
  br label %67

67:                                               ; preds = %64, %54
  br label %22

68:                                               ; preds = %22
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  store i32* null, i32** %4, align 8
  br label %71

71:                                               ; preds = %68, %39
  %72 = load i32*, i32** %4, align 8
  ret i32* %72
}

declare dso_local i32* @tvref(i32) #1

declare dso_local i64 @frame_gc(i32*) #1

declare dso_local i64 @obj2gco(%struct.TYPE_4__*) #1

declare dso_local i64 @frame_islua(i32*) #1

declare dso_local i32* @frame_prevl(i32*) #1

declare dso_local i64 @frame_isvarg(i32*) #1

declare dso_local i32* @frame_prevd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
