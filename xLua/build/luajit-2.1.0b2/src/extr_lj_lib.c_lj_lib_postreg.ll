; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lib.c_lj_lib_postreg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lib.c_lj_lib_postreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_lib_postreg(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32* @lj_lib_pushcf(%struct.TYPE_12__* %11, i32 %12, i32 %13)
  store i32* %14, i32** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = call %struct.TYPE_13__* @curr_func(%struct.TYPE_12__* %15)
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @tabref(i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @lj_str_newz(%struct.TYPE_12__* %24, i8* %25)
  %27 = call i32 @lj_tab_setstr(%struct.TYPE_12__* %22, i32* %23, i32 %26)
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @setfuncV(%struct.TYPE_12__* %21, i32 %27, i32* %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @lj_gc_anybarriert(%struct.TYPE_12__* %30, i32* %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @setfuncV(%struct.TYPE_12__* %33, i32 %36, i32* %38)
  ret i32 1
}

declare dso_local i32* @lj_lib_pushcf(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32* @tabref(i32) #1

declare dso_local %struct.TYPE_13__* @curr_func(%struct.TYPE_12__*) #1

declare dso_local i32 @setfuncV(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @lj_tab_setstr(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @lj_str_newz(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @lj_gc_anybarriert(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
