; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_ffi.c_ffi_clib_index.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_ffi.c_ffi_clib_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i64 }

@UDTYPE_FFI_CLIB = common dso_local global i64 0, align 8
@LUA_TUSERDATA = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*)* @ffi_clib_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ffi_clib_index(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ult i32* %8, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @tvisudata(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_8__* @udataV(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UDTYPE_FFI_CLIB, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %17, %13, %1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = load i32, i32* @LUA_TUSERDATA, align 4
  %27 = call i32 @lj_err_argt(%struct.TYPE_7__* %25, i32 1, i32 %26)
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i32*, i32** %3, align 8
  %30 = call %struct.TYPE_8__* @udataV(i32* %29)
  %31 = call i64 @uddata(%struct.TYPE_8__* %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ult i32* %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = call i64 @tvisstr(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39, %28
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = load i32, i32* @LUA_TSTRING, align 4
  %47 = call i32 @lj_err_argt(%struct.TYPE_7__* %45, i32 2, i32 %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = call i32 @strV(i32* %52)
  %54 = call i32* @lj_clib_index(%struct.TYPE_7__* %49, i32* %50, i32 %53)
  ret i32* %54
}

declare dso_local i64 @tvisudata(i32*) #1

declare dso_local %struct.TYPE_8__* @udataV(i32*) #1

declare dso_local i32 @lj_err_argt(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @uddata(%struct.TYPE_8__*) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i32* @lj_clib_index(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @strV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
