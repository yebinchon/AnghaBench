; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_gc_traverse_frames.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_gc_traverse_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@LJ_FR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @gc_traverse_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_traverse_frames(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 -1
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @tvref(i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 -1
  store i32* %21, i32** %5, align 8
  br label %22

22:                                               ; preds = %58, %2
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @LJ_FR2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = icmp ugt i32* %23, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @frame_func(i32* %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %5, align 8
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @isluafunc(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i32*, i32** %8, align 8
  %38 = call %struct.TYPE_5__* @funcproto(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %9, align 8
  br label %44

44:                                               ; preds = %36, %29
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ugt i32* %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32*, i32** %9, align 8
  store i32* %49, i32** %6, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* @LJ_FR2, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @gc_markobj(i32* %54, i32* %55)
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57
  %59 = load i32*, i32** %5, align 8
  %60 = call i32* @frame_prev(i32* %59)
  store i32* %60, i32** %5, align 8
  br label %22

61:                                               ; preds = %22
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @tvref(i32 %67)
  %69 = icmp ugt i32* %64, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32* @tvref(i32 %73)
  store i32* %74, i32** %6, align 8
  br label %75

75:                                               ; preds = %70, %61
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = trunc i64 %81 to i32
  ret i32 %82
}

declare dso_local i32* @tvref(i32) #1

declare dso_local i32* @frame_func(i32*) #1

declare dso_local i64 @isluafunc(i32*) #1

declare dso_local %struct.TYPE_5__* @funcproto(i32*) #1

declare dso_local i32 @gc_markobj(i32*, i32*) #1

declare dso_local i32* @frame_prev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
