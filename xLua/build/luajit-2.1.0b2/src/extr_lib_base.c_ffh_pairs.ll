; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_base.c_ffh_pairs.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_base.c_ffh_pairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }

@LJ_52 = common dso_local global i64 0, align 8
@LJ_FR2 = common dso_local global i32 0, align 4
@FFH_TAILCALL = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i32 0, align 4
@MM_pairs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @ffh_pairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffh_pairs(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i32* @lj_lib_checkany(%struct.TYPE_9__* %8, i32 1)
  store i32* %9, i32** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @lj_meta_lookup(%struct.TYPE_9__* %10, i32* %11, i32 %12)
  store i32* %13, i32** %7, align 8
  %14 = load i64, i64* @LJ_52, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @tviscdata(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16, %2
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @tvisnil(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @LJ_FR2, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @copyTV(%struct.TYPE_9__* %29, i32 %35, i32* %36)
  %38 = load i32, i32* @FFH_TAILCALL, align 4
  store i32 %38, i32* %3, align 4
  br label %80

39:                                               ; preds = %20, %16
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @tvistab(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = load i32, i32* @LUA_TTABLE, align 4
  %46 = call i32 @lj_err_argt(%struct.TYPE_9__* %44, i32 1, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @LJ_FR2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 -1
  %54 = ptrtoint i32* %53 to i32
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @copyTV(%struct.TYPE_9__* %51, i32 %54, i32* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 -1
  store i32* %58, i32** %6, align 8
  br label %59

59:                                               ; preds = %50, %47
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 -1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = call i32 @lj_lib_upvalue(%struct.TYPE_9__* %63, i32 1)
  %65 = call i32 @funcV(i32 %64)
  %66 = call i32 @setfuncV(%struct.TYPE_9__* %60, i32* %62, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MM_pairs, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = call i32 @setnilV(i32* %72)
  br label %78

74:                                               ; preds = %59
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = call i32 @setintV(i32* %76, i32 0)
  br label %78

78:                                               ; preds = %74, %70
  %79 = call i32 @FFH_RES(i32 3)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %24
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32* @lj_lib_checkany(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @lj_meta_lookup(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i64 @tviscdata(i32*) #1

declare dso_local i32 @tvisnil(i32*) #1

declare dso_local i32 @copyTV(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @tvistab(i32*) #1

declare dso_local i32 @lj_err_argt(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @setfuncV(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @funcV(i32) #1

declare dso_local i32 @lj_lib_upvalue(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @setnilV(i32*) #1

declare dso_local i32 @setintV(i32*, i32) #1

declare dso_local i32 @FFH_RES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
