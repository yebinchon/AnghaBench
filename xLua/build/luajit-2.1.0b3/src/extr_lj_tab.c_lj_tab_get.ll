; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_lj_tab_get.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_lj_tab_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_tab_get(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @tvisstr(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @strV(i32* %19)
  %21 = call i32* @lj_tab_getstr(i32* %18, i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32*, i32** %8, align 8
  store i32* %25, i32** %4, align 8
  br label %94

26:                                               ; preds = %17
  br label %91

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @tvisint(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @intV(i32* %33)
  %35 = call i32* @lj_tab_getint(i32* %32, i64 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  store i32* %39, i32** %4, align 8
  br label %94

40:                                               ; preds = %31
  br label %90

41:                                               ; preds = %27
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @tvisnum(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @numV(i32* %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @lj_num2int(i64 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32* @lj_tab_getint(i32* %54, i64 %55)
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32*, i32** %12, align 8
  store i32* %60, i32** %4, align 8
  br label %94

61:                                               ; preds = %53
  br label %63

62:                                               ; preds = %45
  br label %69

63:                                               ; preds = %61
  br label %89

64:                                               ; preds = %41
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @tvisnil(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call %struct.TYPE_5__* @hashkey(i32* %70, i32* %71)
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %13, align 8
  br label %73

73:                                               ; preds = %83, %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 @lj_obj_equal(i32* %75, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32* %81, i32** %4, align 8
  br label %94

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %85 = call %struct.TYPE_5__* @nextnode(%struct.TYPE_5__* %84)
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %13, align 8
  %86 = icmp ne %struct.TYPE_5__* %85, null
  br i1 %86, label %73, label %87

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88, %63
  br label %90

90:                                               ; preds = %89, %40
  br label %91

91:                                               ; preds = %90, %26
  %92 = load i32*, i32** %5, align 8
  %93 = call i32* @niltv(i32* %92)
  store i32* %93, i32** %4, align 8
  br label %94

94:                                               ; preds = %91, %79, %59, %38, %24
  %95 = load i32*, i32** %4, align 8
  ret i32* %95
}

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i32* @lj_tab_getstr(i32*, i32) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i32* @lj_tab_getint(i32*, i64) #1

declare dso_local i64 @intV(i32*) #1

declare dso_local i64 @tvisnum(i32*) #1

declare dso_local i64 @numV(i32*) #1

declare dso_local i64 @lj_num2int(i64) #1

declare dso_local i32 @tvisnil(i32*) #1

declare dso_local %struct.TYPE_5__* @hashkey(i32*, i32*) #1

declare dso_local i64 @lj_obj_equal(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @nextnode(%struct.TYPE_5__*) #1

declare dso_local i32* @niltv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
