; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaV_gettable.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaV_gettable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TM_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"loop in gettable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @luaV_gettable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaV_gettable(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %68, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 100
  br i1 %15, label %16, label %71

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @ttistable(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.TYPE_4__* @hvalue(i32* %21)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %11, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @luaH_get(%struct.TYPE_4__* %23, i32* %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i64 @ttisnil(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TM_INDEX, align 4
  %35 = call i32* @fasttm(i32* %30, i32 %33, i32 %34)
  store i32* %35, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %29, %20
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @setobj(i32* %38, i32 %39, i32* %40)
  br label %74

42:                                               ; preds = %29
  br label %55

43:                                               ; preds = %16
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @TM_INDEX, align 4
  %47 = call i32* @luaT_gettmbyobj(i32* %44, i32* %45, i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = call i64 @ttisnil(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @luaG_typeerror(i32* %51, i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %43
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @ttisfunction(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @callTMres(i32* %60, i32 %61, i32* %62, i32* %63, i32* %64)
  br label %74

66:                                               ; preds = %55
  %67 = load i32*, i32** %10, align 8
  store i32* %67, i32** %6, align 8
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %13

71:                                               ; preds = %13
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @luaG_runerror(i32* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %59, %37
  ret void
}

declare dso_local i64 @ttistable(i32*) #1

declare dso_local %struct.TYPE_4__* @hvalue(i32*) #1

declare dso_local i32* @luaH_get(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @fasttm(i32*, i32, i32) #1

declare dso_local i32 @setobj(i32*, i32, i32*) #1

declare dso_local i32* @luaT_gettmbyobj(i32*, i32*, i32) #1

declare dso_local i32 @luaG_typeerror(i32*, i32*, i8*) #1

declare dso_local i64 @ttisfunction(i32*) #1

declare dso_local i32 @callTMres(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @luaG_runerror(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
