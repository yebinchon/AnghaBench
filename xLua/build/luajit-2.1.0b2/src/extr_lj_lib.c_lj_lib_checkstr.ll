; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lib.c_lj_lib_checkstr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lib.c_lj_lib_checkstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }

@LUA_TSTRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_lib_checkstr(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = getelementptr inbounds i32, i32* %13, i64 -1
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ult i32* %15, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @tvisstr(i32* %21)
  %23 = call i64 @LJ_LIKELY(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @strV(i32* %26)
  store i32* %27, i32** %3, align 8
  br label %48

28:                                               ; preds = %20
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @tvisnumber(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @lj_strfmt_number(%struct.TYPE_6__* %33, i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @setstrV(%struct.TYPE_6__* %36, i32* %37, i32* %38)
  %40 = load i32*, i32** %7, align 8
  store i32* %40, i32** %3, align 8
  br label %48

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @LUA_TSTRING, align 4
  %47 = call i32 @lj_err_argt(%struct.TYPE_6__* %44, i32 %45, i32 %46)
  store i32* null, i32** %3, align 8
  br label %48

48:                                               ; preds = %43, %32, %25
  %49 = load i32*, i32** %3, align 8
  ret i32* %49
}

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i32 @tvisstr(i32*) #1

declare dso_local i32* @strV(i32*) #1

declare dso_local i64 @tvisnumber(i32*) #1

declare dso_local i32* @lj_strfmt_number(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @setstrV(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @lj_err_argt(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
