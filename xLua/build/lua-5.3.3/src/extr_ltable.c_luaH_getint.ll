; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_ltable.c_luaH_getint.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_ltable.c_luaH_getint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@luaO_nilobject = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaH_getint(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @l_castS2U(i32 %8)
  %10 = sub nsw i32 %9, 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32* %22, i32** %3, align 8
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32* @hashint(%struct.TYPE_4__* %24, i32 %25)
  store i32* %26, i32** %6, align 8
  br label %27

27:                                               ; preds = %52, %23
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @gkey(i32* %28)
  %30 = call i64 @ttisinteger(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @gkey(i32* %33)
  %35 = call i32 @ivalue(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = call i32* @gval(i32* %39)
  store i32* %40, i32** %3, align 8
  br label %55

41:                                               ; preds = %32, %27
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @gnext(i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %53

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %47
  br label %27

53:                                               ; preds = %46
  %54 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %54, i32** %3, align 8
  br label %55

55:                                               ; preds = %53, %38, %15
  %56 = load i32*, i32** %3, align 8
  ret i32* %56
}

declare dso_local i32 @l_castS2U(i32) #1

declare dso_local i32* @hashint(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @ttisinteger(i32) #1

declare dso_local i32 @gkey(i32*) #1

declare dso_local i32 @ivalue(i32) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32 @gnext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
