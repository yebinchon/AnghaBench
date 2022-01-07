; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_ffi.c_ffi_finalizer.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_ffi.c_ffi_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@MM_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__*)* @ffi_finalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @ffi_finalizer(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %5 = call %struct.TYPE_15__* @lj_tab_new(%struct.TYPE_14__* %4, i32 0, i32 1)
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %3, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = call i32 @settabV(%struct.TYPE_14__* %6, i32 %9, %struct.TYPE_15__* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = call i32 @obj2gco(%struct.TYPE_15__* %16)
  %18 = call i32 @setgcref(i32 %15, i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = call i32 @lj_str_newlit(%struct.TYPE_14__* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @lj_tab_setstr(%struct.TYPE_14__* %20, %struct.TYPE_15__* %21, i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = call i32 @lj_str_newlit(%struct.TYPE_14__* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @setstrV(%struct.TYPE_14__* %19, i32 %24, i32 %26)
  %28 = load i32, i32* @MM_mode, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = zext i32 %30 to i64
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %34
}

declare dso_local %struct.TYPE_15__* @lj_tab_new(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @settabV(%struct.TYPE_14__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_15__*) #1

declare dso_local i32 @setstrV(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @lj_tab_setstr(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @lj_str_newlit(%struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
