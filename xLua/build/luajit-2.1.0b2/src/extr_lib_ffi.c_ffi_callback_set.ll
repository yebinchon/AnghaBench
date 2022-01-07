; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_ffi.c_ffi_callback_set.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_ffi.c_ffi_callback_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i64, i64*, i64 }
%struct.TYPE_13__ = type { i32, i32 }

@LJ_32 = common dso_local global i64 0, align 8
@LJ_ERR_FFI_BADCBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ffi_callback_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffi_callback_set(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_12__* @ffi_checkcdata(i32* %12, i32 1)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_14__* @ctype_cts(i32* %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_13__* @ctype_raw(%struct.TYPE_14__* %16, i32 %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %8, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ctype_isptr(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %104

26:                                               ; preds = %2
  %27 = load i64, i64* @LJ_32, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %104

34:                                               ; preds = %29, %26
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = call i64 @cdataptr(%struct.TYPE_12__* %36)
  %38 = inttoptr i64 %37 to i8**
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @lj_ccallback_ptr2slot(%struct.TYPE_14__* %35, i8* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %47, label %103

47:                                               ; preds = %34
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %47
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32* @lj_tab_setint(i32* %60, i32* %61, i32 %63)
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @setfuncV(i32* %68, i32* %69, i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @lj_gc_anybarriert(i32* %72, i32* %73)
  br label %102

75:                                               ; preds = %56
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @setnilV(i32* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 0, i64* %83, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %84, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %75
  %91 = load i64, i64* %9, align 8
  br label %97

92:                                               ; preds = %75
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  br label %97

97:                                               ; preds = %92, %90
  %98 = phi i64 [ %91, %90 ], [ %96, %92 ]
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %67
  store i32 0, i32* %3, align 4
  br label %108

103:                                              ; preds = %47, %34
  br label %104

104:                                              ; preds = %103, %29, %2
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* @LJ_ERR_FFI_BADCBACK, align 4
  %107 = call i32 @lj_err_caller(i32* %105, i32 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %102
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_12__* @ffi_checkcdata(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @ctype_cts(i32*) #1

declare dso_local %struct.TYPE_13__* @ctype_raw(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i64 @lj_ccallback_ptr2slot(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @cdataptr(%struct.TYPE_12__*) #1

declare dso_local i32* @lj_tab_setint(i32*, i32*, i32) #1

declare dso_local i32 @setfuncV(i32*, i32*, i32*) #1

declare dso_local i32 @lj_gc_anybarriert(i32*, i32*) #1

declare dso_local i32 @setnilV(i32*) #1

declare dso_local i32 @lj_err_caller(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
