; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_api.c_copy_slot.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_api.c_copy_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@LUA_GLOBALSINDEX = common dso_local global i32 0, align 4
@LUA_ENVIRONINDEX = common dso_local global i32 0, align 4
@LJ_TFUNC = common dso_local global i32 0, align 4
@LJ_ERR_NOENV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, i32)* @copy_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_slot(%struct.TYPE_15__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @tvistab(i32* %14)
  %16 = call i32 @api_check(%struct.TYPE_15__* %13, i32 %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @tabV(i32* %20)
  %22 = call i32 @obj2gco(i32 %21)
  %23 = call i32 @setgcref(i32 %19, i32 %22)
  br label %81

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @LUA_ENVIRONINDEX, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = call %struct.TYPE_16__* @curr_func(%struct.TYPE_15__* %29)
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %7, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LJ_TFUNC, align 4
  %36 = xor i32 %35, -1
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = load i32, i32* @LJ_ERR_NOENV, align 4
  %41 = call i32 @lj_err_msg(%struct.TYPE_15__* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @tvistab(i32* %44)
  %46 = call i32 @api_check(%struct.TYPE_15__* %43, i32 %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @tabV(i32* %51)
  %53 = call i32 @obj2gco(i32 %52)
  %54 = call i32 @setgcref(i32 %50, i32 %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @lj_gc_barrier(%struct.TYPE_15__* %55, %struct.TYPE_16__* %56, i32* %57)
  br label %80

59:                                               ; preds = %24
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32* @index2adr(%struct.TYPE_15__* %60, i32 %61)
  store i32* %62, i32** %8, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @api_checkvalidindex(%struct.TYPE_15__* %63, i32* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @copyTV(%struct.TYPE_15__* %66, i32* %67, i32* %68)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %59
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = call %struct.TYPE_16__* @curr_func(%struct.TYPE_15__* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @lj_gc_barrier(%struct.TYPE_15__* %74, %struct.TYPE_16__* %76, i32* %77)
  br label %79

79:                                               ; preds = %73, %59
  br label %80

80:                                               ; preds = %79, %42
  br label %81

81:                                               ; preds = %80, %12
  ret void
}

declare dso_local i32 @api_check(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @tvistab(i32*) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local i32 @obj2gco(i32) #1

declare dso_local i32 @tabV(i32*) #1

declare dso_local %struct.TYPE_16__* @curr_func(%struct.TYPE_15__*) #1

declare dso_local i32 @lj_err_msg(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @lj_gc_barrier(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32* @index2adr(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @api_checkvalidindex(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @copyTV(%struct.TYPE_15__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
