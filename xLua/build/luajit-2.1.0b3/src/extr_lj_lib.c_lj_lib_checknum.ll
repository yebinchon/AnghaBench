; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lib.c_lj_lib_checknum.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lib.c_lj_lib_checknum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@LUA_TNUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_lib_checknum(%struct.TYPE_4__* %0, i32 %1) #0 {
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
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @tvisnumber(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @tvisstr(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @strV(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @lj_strscan_num(i32 %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28, %24, %2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @LUA_TNUMBER, align 4
  %38 = call i32 @lj_err_argt(%struct.TYPE_4__* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %28, %20
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @tvisint(i32* %40)
  %42 = call i64 @LJ_UNLIKELY(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @intV(i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @setnumV(i32* %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %54

51:                                               ; preds = %39
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @numV(i32* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @tvisnumber(i32*) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i64 @lj_strscan_num(i32, i32*) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i32 @lj_err_argt(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i32 @tvisint(i32*) #1

declare dso_local i32 @intV(i32*) #1

declare dso_local i32 @setnumV(i32*, i32) #1

declare dso_local i32 @numV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
