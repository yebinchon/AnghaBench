; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ccall.c_lj_ccall_func.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ccall.c_lj_ccall_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_25__ = type { void (...)*, i64 }

@CTSIZE_PTR = common dso_local global i32 0, align 4
@CCONV = common dso_local global i32 0, align 4
@CTCC_CDECL = common dso_local global i64 0, align 8
@CTCC_STDCALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_ccall_func(i32* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_24__* @ctype_cts(i32* %13)
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %6, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_23__* @ctype_raw(%struct.TYPE_24__* %15, i32 %18)
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %7, align 8
  %20 = load i32, i32* @CTSIZE_PTR, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ctype_isptr(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %32 = call %struct.TYPE_23__* @ctype_rawchild(%struct.TYPE_24__* %30, %struct.TYPE_23__* %31)
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %7, align 8
  br label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ctype_isfunc(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %103

39:                                               ; preds = %33
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = call i32 @cdataptr(%struct.TYPE_22__* %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @cdata_getptr(i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to void ()*
  %45 = bitcast void ()* %44 to void (...)*
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  store void (...)* %45, void (...)** %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %50 = call i32 @ccall_set_args(i32* %47, %struct.TYPE_24__* %48, %struct.TYPE_23__* %49, %struct.TYPE_25__* %9)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %52 = ptrtoint %struct.TYPE_23__* %51 to i64
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = inttoptr i64 %56 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %57, %struct.TYPE_23__** %7, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 4
  %61 = call i32 @lj_vm_ffi_call(%struct.TYPE_25__* %9)
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %78

67:                                               ; preds = %39
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %69 = load void (...)*, void (...)** %68, align 8
  %70 = bitcast void (...)* %69 to i8*
  %71 = call i32 @setlightudV(i32* %12, i8* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @lj_tab_set(i32* %72, i32 %75, i32* %12)
  %77 = call i32 @setboolV(i32 %76, i32 1)
  br label %78

78:                                               ; preds = %67, %39
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %80 = ptrtoint %struct.TYPE_23__* %79 to i64
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = inttoptr i64 %84 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %85, %struct.TYPE_23__** %7, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %89 = call i64 @ccall_get_results(i32* %86, %struct.TYPE_24__* %87, %struct.TYPE_23__* %88, %struct.TYPE_25__* %9, i32* %11)
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %98, %78
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %10, align 4
  %97 = icmp sgt i32 %95, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @lj_gc_check(i32* %99)
  br label %94

101:                                              ; preds = %94
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %101
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_24__* @ctype_cts(i32*) #1

declare dso_local %struct.TYPE_23__* @ctype_raw(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local %struct.TYPE_23__* @ctype_rawchild(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i64 @ctype_isfunc(i32) #1

declare dso_local i64 @cdata_getptr(i32, i32) #1

declare dso_local i32 @cdataptr(%struct.TYPE_22__*) #1

declare dso_local i32 @ccall_set_args(i32*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @lj_vm_ffi_call(%struct.TYPE_25__*) #1

declare dso_local i32 @setlightudV(i32*, i8*) #1

declare dso_local i32 @setboolV(i32, i32) #1

declare dso_local i32 @lj_tab_set(i32*, i32, i32*) #1

declare dso_local i64 @ccall_get_results(i32*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @lj_gc_check(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
