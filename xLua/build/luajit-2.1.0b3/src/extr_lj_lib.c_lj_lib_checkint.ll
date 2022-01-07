; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lib.c_lj_lib_checkint.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lib.c_lj_lib_checkint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@LUA_TNUMBER = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_lib_checkint(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = getelementptr inbounds i32, i32* %13, i64 -1
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ult i32* %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @lj_strscan_numberobj(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @LUA_TNUMBER, align 4
  %28 = call i32 @lj_err_argt(%struct.TYPE_4__* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @tvisint(i32* %30)
  %32 = call i64 @LJ_LIKELY(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @intV(i32* %35)
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @numV(i32* %38)
  %40 = call i32 @lj_num2int(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i64, i64* @LJ_DUALNUM, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @setintV(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %37
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %34
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @lj_strscan_numberobj(i32*) #1

declare dso_local i32 @lj_err_argt(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i32 @tvisint(i32*) #1

declare dso_local i32 @intV(i32*) #1

declare dso_local i32 @lj_num2int(i32) #1

declare dso_local i32 @numV(i32*) #1

declare dso_local i32 @setintV(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
