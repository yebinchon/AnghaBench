; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lib.c_lib_read_lfunc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lib.c_lib_read_lfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i8*, i32, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32 }

@BCDUMP_F_STRIP = common dso_local global i32 0, align 4
@LJ_BE = common dso_local global i32 0, align 4
@BCDUMP_F_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i32*, i32*)* @lib_read_lfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lib_read_lfunc(%struct.TYPE_13__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %5, align 8
  %14 = load i32, i32* %12, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @lj_str_new(%struct.TYPE_13__* %15, i8* %17, i32 %18)
  store i32* %19, i32** %8, align 8
  %20 = call i32 @memset(%struct.TYPE_14__* %9, i32 0, i32 40)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 5
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %22, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = bitcast i32* %26 to i8*
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  store i32 -1, i32* %30, align 8
  %31 = load i32, i32* @BCDUMP_F_STRIP, align 4
  %32 = load i32, i32* @LJ_BE, align 4
  %33 = load i32, i32* @BCDUMP_F_BE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = or i32 %31, %34
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  store i32* %37, i32** %38, align 8
  %39 = call %struct.TYPE_15__* @lj_bcread_proto(%struct.TYPE_14__* %9)
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %10, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @tabref(i32 %46)
  %48 = call i32* @lj_func_newL_empty(%struct.TYPE_13__* %42, %struct.TYPE_15__* %43, i32 %47)
  store i32* %48, i32** %11, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @lj_tab_setstr(%struct.TYPE_13__* %50, i32* %51, i32* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @setfuncV(%struct.TYPE_13__* %49, i32 %53, i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast i8* %57 to i32*
  ret i32* %58
}

declare dso_local i32* @lj_str_new(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @lj_bcread_proto(%struct.TYPE_14__*) #1

declare dso_local i32* @lj_func_newL_empty(%struct.TYPE_13__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @tabref(i32) #1

declare dso_local i32 @setfuncV(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @lj_tab_setstr(%struct.TYPE_13__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
