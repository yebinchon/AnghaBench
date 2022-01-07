; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_uvnamev.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_uvnamev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lj_debug_uvnamev(i32* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @tvisfunc(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_14__* @funcV(i32* %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = call i64 @isluafunc(%struct.TYPE_14__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = call %struct.TYPE_13__* @funcproto(%struct.TYPE_14__* %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_15__* @gcref(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = call i32* @uvval(i32* %36)
  %38 = load i32**, i32*** %7, align 8
  store i32* %37, i32** %38, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i8* @lj_debug_uvname(%struct.TYPE_13__* %39, i64 %40)
  store i8* %41, i8** %4, align 8
  br label %61

42:                                               ; preds = %19
  br label %59

43:                                               ; preds = %13
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %44, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32**, i32*** %7, align 8
  store i32* %56, i32** %57, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %61

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %3
  store i8* null, i8** %4, align 8
  br label %61

61:                                               ; preds = %60, %50, %27
  %62 = load i8*, i8** %4, align 8
  ret i8* %62
}

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local %struct.TYPE_14__* @funcV(i32*) #1

declare dso_local i64 @isluafunc(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @funcproto(%struct.TYPE_14__*) #1

declare dso_local i32* @uvval(i32*) #1

declare dso_local %struct.TYPE_15__* @gcref(i32) #1

declare dso_local i8* @lj_debug_uvname(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
