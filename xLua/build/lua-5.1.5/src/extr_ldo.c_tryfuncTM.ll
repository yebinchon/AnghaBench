; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ldo.c_tryfuncTM.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ldo.c_tryfuncTM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@TM_CALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"call\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i64)* @tryfuncTM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tryfuncTM(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @TM_CALL, align 4
  %11 = call i32* @luaT_gettmbyobj(%struct.TYPE_10__* %8, i64 %9, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @savestack(%struct.TYPE_10__* %12, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ttisfunction(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @luaG_typeerror(%struct.TYPE_10__* %19, i64 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %36, %22
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @setobjs2s(%struct.TYPE_10__* %31, i64 %32, i64 %34)
  br label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %6, align 8
  br label %26

39:                                               ; preds = %26
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = call i32 @incr_top(%struct.TYPE_10__* %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @restorestack(%struct.TYPE_10__* %42, i32 %43)
  store i64 %44, i64* %4, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @setobj2s(%struct.TYPE_10__* %45, i64 %46, i32* %47)
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i32* @luaT_gettmbyobj(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @savestack(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @ttisfunction(i32*) #1

declare dso_local i32 @luaG_typeerror(%struct.TYPE_10__*, i64, i8*) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @incr_top(%struct.TYPE_10__*) #1

declare dso_local i64 @restorestack(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @setobj2s(%struct.TYPE_10__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
