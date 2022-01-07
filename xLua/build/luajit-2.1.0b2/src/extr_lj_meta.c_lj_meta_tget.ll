; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_meta.c_lj_meta_tget.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_meta.c_lj_meta_tget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@LJ_MAX_IDXCHAIN = common dso_local global i32 0, align 4
@MM_index = common dso_local global i32 0, align 4
@LJ_ERR_OPINDEX = common dso_local global i32 0, align 4
@lj_cont_ra = common dso_local global i32 0, align 4
@LJ_ERR_GETLOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_meta_tget(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %71, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @LJ_MAX_IDXCHAIN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %74

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @tvistab(i32* %17)
  %19 = call i64 @LJ_LIKELY(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_13__* @tabV(i32* %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @lj_tab_get(%struct.TYPE_12__* %24, %struct.TYPE_13__* %25, i32* %26)
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i64 @tvisnil(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tabref(i32 %35)
  %37 = load i32, i32* @MM_index, align 4
  %38 = call i32* @lj_meta_fast(%struct.TYPE_12__* %32, i32 %36, i32 %37)
  store i32* %38, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %31, %21
  %41 = load i32*, i32** %11, align 8
  store i32* %41, i32** %4, align 8
  br label %78

42:                                               ; preds = %31
  br label %56

43:                                               ; preds = %16
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @MM_index, align 4
  %47 = call i32* @lj_meta_lookup(%struct.TYPE_12__* %44, i32* %45, i32 %46)
  store i32* %47, i32** %9, align 8
  %48 = call i64 @tvisnil(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @LJ_ERR_OPINDEX, align 4
  %54 = call i32 @lj_err_optype(%struct.TYPE_12__* %51, i32* %52, i32 %53)
  store i32* null, i32** %4, align 8
  br label %78

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 @tvisfunc(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = load i32, i32* @lj_cont_ra, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @mmcall(%struct.TYPE_12__* %61, i32 %62, i32* %63, i32* %64, i32* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32* null, i32** %4, align 8
  br label %78

69:                                               ; preds = %56
  %70 = load i32*, i32** %9, align 8
  store i32* %70, i32** %6, align 8
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %12

74:                                               ; preds = %12
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = load i32, i32* @LJ_ERR_GETLOOP, align 4
  %77 = call i32 @lj_err_msg(%struct.TYPE_12__* %75, i32 %76)
  store i32* null, i32** %4, align 8
  br label %78

78:                                               ; preds = %74, %60, %50, %40
  %79 = load i32*, i32** %4, align 8
  ret i32* %79
}

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i32 @tvistab(i32*) #1

declare dso_local %struct.TYPE_13__* @tabV(i32*) #1

declare dso_local i32* @lj_tab_get(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i32* @lj_meta_fast(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @tabref(i32) #1

declare dso_local i32* @lj_meta_lookup(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @lj_err_optype(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local i32 @mmcall(%struct.TYPE_12__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @lj_err_msg(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
