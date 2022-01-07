; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_lj_tab_set.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_lj_tab_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }

@LJ_ERR_NANIDX = common dso_local global i32 0, align 4
@LJ_ERR_NILIDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_tab_set(i32* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @tvisstr(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @strV(i32* %19)
  %21 = call i32* @lj_tab_setstr(i32* %17, %struct.TYPE_12__* %18, i32 %20)
  store i32* %21, i32** %4, align 8
  br label %92

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @tvisint(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @intV(i32* %29)
  %31 = call i32* @lj_tab_setint(i32* %27, %struct.TYPE_12__* %28, i64 %30)
  store i32* %31, i32** %4, align 8
  br label %92

32:                                               ; preds = %22
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @tvisnum(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @numV(i32* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @lj_num2int(i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32* @lj_tab_setint(i32* %45, %struct.TYPE_12__* %46, i64 %47)
  store i32* %48, i32** %4, align 8
  br label %92

49:                                               ; preds = %36
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @tvisnan(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @LJ_ERR_NANIDX, align 4
  %56 = call i32 @lj_err_msg(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %67

58:                                               ; preds = %32
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @tvisnil(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @LJ_ERR_NILIDX, align 4
  %65 = call i32 @lj_err_msg(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call %struct.TYPE_11__* @hashkey(%struct.TYPE_12__* %70, i32* %71)
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %8, align 8
  br label %73

73:                                               ; preds = %83, %69
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 @lj_obj_equal(i32* %75, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32* %81, i32** %4, align 8
  br label %92

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = call %struct.TYPE_11__* @nextnode(%struct.TYPE_11__* %84)
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %8, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %73, label %87

87:                                               ; preds = %83
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32* @lj_tab_newkey(i32* %88, %struct.TYPE_12__* %89, i32* %90)
  store i32* %91, i32** %4, align 8
  br label %92

92:                                               ; preds = %87, %79, %44, %26, %16
  %93 = load i32*, i32** %4, align 8
  ret i32* %93
}

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i32* @lj_tab_setstr(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i32* @lj_tab_setint(i32*, %struct.TYPE_12__*, i64) #1

declare dso_local i64 @intV(i32*) #1

declare dso_local i64 @tvisnum(i32*) #1

declare dso_local i64 @numV(i32*) #1

declare dso_local i64 @lj_num2int(i64) #1

declare dso_local i64 @tvisnan(i32*) #1

declare dso_local i32 @lj_err_msg(i32*, i32) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local %struct.TYPE_11__* @hashkey(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @lj_obj_equal(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @nextnode(%struct.TYPE_11__*) #1

declare dso_local i32* @lj_tab_newkey(i32*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
