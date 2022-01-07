; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_keyindex.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_keyindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32 }

@LJ_ERR_NEXTIDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_24__*, %struct.TYPE_22__*)* @keyindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @keyindex(i32* %0, %struct.TYPE_24__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %14 = call i64 @tvisint(%struct.TYPE_22__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %18 = call i64 @intV(%struct.TYPE_22__* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %4, align 8
  br label %101

26:                                               ; preds = %16
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @setnumV(%struct.TYPE_22__* %8, i64 %27)
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %7, align 8
  br label %51

29:                                               ; preds = %3
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = call i64 @tvisnum(%struct.TYPE_22__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %35 = call i64 @numV(%struct.TYPE_22__* %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @lj_num2int(i64 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  store i64 %48, i64* %4, align 8
  br label %101

49:                                               ; preds = %43, %33
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %26
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = call i32 @tvisnil(%struct.TYPE_22__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %58 = call %struct.TYPE_23__* @hashkey(%struct.TYPE_24__* %56, %struct.TYPE_22__* %57)
  store %struct.TYPE_23__* %58, %struct.TYPE_23__** %12, align 8
  br label %59

59:                                               ; preds = %80, %55
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %63 = call i64 @lj_obj_equal(i32* %61, %struct.TYPE_22__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_23__* @noderef(i32 %72)
  %74 = ptrtoint %struct.TYPE_23__* %69 to i64
  %75 = ptrtoint %struct.TYPE_23__* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = add nsw i64 %68, %77
  store i64 %78, i64* %4, align 8
  br label %101

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %82 = call %struct.TYPE_23__* @nextnode(%struct.TYPE_23__* %81)
  store %struct.TYPE_23__* %82, %struct.TYPE_23__** %12, align 8
  %83 = icmp ne %struct.TYPE_23__* %82, null
  br i1 %83, label %59, label %84

84:                                               ; preds = %80
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, -98305
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 1
  store i64 %95, i64* %4, align 8
  br label %101

96:                                               ; preds = %84
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @LJ_ERR_NEXTIDX, align 4
  %99 = call i32 @lj_err_msg(i32* %97, i32 %98)
  store i64 0, i64* %4, align 8
  br label %101

100:                                              ; preds = %51
  store i64 4294967295, i64* %4, align 8
  br label %101

101:                                              ; preds = %100, %96, %90, %65, %47, %24
  %102 = load i64, i64* %4, align 8
  ret i64 %102
}

declare dso_local i64 @tvisint(%struct.TYPE_22__*) #1

declare dso_local i64 @intV(%struct.TYPE_22__*) #1

declare dso_local i32 @setnumV(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @tvisnum(%struct.TYPE_22__*) #1

declare dso_local i64 @numV(%struct.TYPE_22__*) #1

declare dso_local i64 @lj_num2int(i64) #1

declare dso_local i32 @tvisnil(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @hashkey(%struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i64 @lj_obj_equal(i32*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @noderef(i32) #1

declare dso_local %struct.TYPE_23__* @nextnode(%struct.TYPE_23__*) #1

declare dso_local i32 @lj_err_msg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
