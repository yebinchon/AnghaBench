; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_meta.c_lj_meta_equal.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_meta.c_lj_meta_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@MM_eq = common dso_local global i32 0, align 4
@lj_cont_condf = common dso_local global i32 0, align 4
@lj_cont_condt = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_meta_equal(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @tabref(i32 %18)
  %20 = load i32, i32* @MM_eq, align 4
  %21 = call i32* @lj_meta_fast(i32* %14, i64 %19, i32 %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %112

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @tabref(i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @tabref(i32 %33)
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %24
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @tabref(i32 %41)
  %43 = load i32, i32* @MM_eq, align 4
  %44 = call i32* @lj_meta_fast(i32* %37, i64 %42, i32 %43)
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %36
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @lj_obj_equal(i32* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47, %36
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %5, align 8
  br label %116

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @curr_top(i32* %58)
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %11, align 8
  %62 = ptrtoint i32* %60 to i32
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @lj_cont_condf, align 4
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @lj_cont_condt, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = call i32 @setcont(i32 %62, i32 %70)
  %72 = load i64, i64* @LJ_FR2, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %11, align 8
  %77 = ptrtoint i32* %75 to i32
  %78 = call i32 @setnilV(i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %11, align 8
  %83 = ptrtoint i32* %81 to i32
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @copyTV(i32* %80, i32 %83, i32* %84)
  %86 = load i64, i64* @LJ_FR2, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %11, align 8
  %91 = ptrtoint i32* %89 to i32
  %92 = call i32 @setnilV(i32 %91)
  br label %93

93:                                               ; preds = %88, %79
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = xor i32 %98, -1
  store i32 %99, i32* %12, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @setgcV(i32* %100, i32* %101, %struct.TYPE_7__* %102, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @setgcV(i32* %105, i32* %107, %struct.TYPE_7__* %108, i32 %109)
  %111 = load i32*, i32** %11, align 8
  store i32* %111, i32** %5, align 8
  br label %116

112:                                              ; preds = %4
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %5, align 8
  br label %116

116:                                              ; preds = %112, %93, %52
  %117 = load i32*, i32** %5, align 8
  ret i32* %117
}

declare dso_local i32* @lj_meta_fast(i32*, i64, i32) #1

declare dso_local i64 @tabref(i32) #1

declare dso_local i32 @lj_obj_equal(i32*, i32*) #1

declare dso_local i32* @curr_top(i32*) #1

declare dso_local i32 @setcont(i32, i32) #1

declare dso_local i32 @setnilV(i32) #1

declare dso_local i32 @copyTV(i32*, i32, i32*) #1

declare dso_local i32 @setgcV(i32*, i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
