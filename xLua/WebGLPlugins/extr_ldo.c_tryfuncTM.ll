; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ldo.c_tryfuncTM.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ldo.c_tryfuncTM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@TM_CALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"call\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64)* @tryfuncTM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tryfuncTM(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* @TM_CALL, align 4
  %10 = call i32* @luaT_gettmbyobj(%struct.TYPE_7__* %7, i64 %8, i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @ttisfunction(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @luaG_typeerror(%struct.TYPE_7__* %15, i64 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %32, %18
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i32 @setobjs2s(%struct.TYPE_7__* %27, i64 %28, i64 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %6, align 8
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @setobj2s(%struct.TYPE_7__* %40, i64 %41, i32* %42)
  ret void
}

declare dso_local i32* @luaT_gettmbyobj(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @ttisfunction(i32*) #1

declare dso_local i32 @luaG_typeerror(%struct.TYPE_7__*, i64, i8*) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i32 @setobj2s(%struct.TYPE_7__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
