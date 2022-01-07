; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lgc.c_freeobj.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lgc.c_freeobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_17__*)* @freeobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeobj(i32* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %67 [
    i32 132, label %8
    i32 134, label %13
    i32 135, label %18
    i32 130, label %27
    i32 129, label %32
    i32 128, label %37
    i32 131, label %44
    i32 133, label %57
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = call i32 @gco2p(%struct.TYPE_17__* %10)
  %12 = call i32 @luaF_freeproto(i32* %9, i32 %11)
  br label %69

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = call i32 @gco2lcl(%struct.TYPE_17__* %15)
  %17 = call i32 @freeLclosure(i32* %14, i32 %16)
  br label %69

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = call %struct.TYPE_15__* @gco2ccl(%struct.TYPE_17__* %21)
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sizeCclosure(i32 %24)
  %26 = call i32 @luaM_freemem(i32* %19, %struct.TYPE_17__* %20, i32 %25)
  br label %69

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = call i32 @gco2t(%struct.TYPE_17__* %29)
  %31 = call i32 @luaH_free(i32* %28, i32 %30)
  br label %69

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = call i32 @gco2th(%struct.TYPE_17__* %34)
  %36 = call i32 @luaE_freethread(i32* %33, i32 %35)
  br label %69

37:                                               ; preds = %2
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = call i32 @gco2u(%struct.TYPE_17__* %40)
  %42 = call i32 @sizeudata(i32 %41)
  %43 = call i32 @luaM_freemem(i32* %38, %struct.TYPE_17__* %39, i32 %42)
  br label %69

44:                                               ; preds = %2
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = call %struct.TYPE_18__* @gco2ts(%struct.TYPE_17__* %46)
  %48 = call i32 @luaS_remove(i32* %45, %struct.TYPE_18__* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = call %struct.TYPE_18__* @gco2ts(%struct.TYPE_17__* %51)
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sizelstring(i32 %54)
  %56 = call i32 @luaM_freemem(i32* %49, %struct.TYPE_17__* %50, i32 %55)
  br label %69

57:                                               ; preds = %2
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = call %struct.TYPE_18__* @gco2ts(%struct.TYPE_17__* %60)
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sizelstring(i32 %64)
  %66 = call i32 @luaM_freemem(i32* %58, %struct.TYPE_17__* %59, i32 %65)
  br label %69

67:                                               ; preds = %2
  %68 = call i32 @lua_assert(i32 0)
  br label %69

69:                                               ; preds = %67, %57, %44, %37, %32, %27, %18, %13, %8
  ret void
}

declare dso_local i32 @luaF_freeproto(i32*, i32) #1

declare dso_local i32 @gco2p(%struct.TYPE_17__*) #1

declare dso_local i32 @freeLclosure(i32*, i32) #1

declare dso_local i32 @gco2lcl(%struct.TYPE_17__*) #1

declare dso_local i32 @luaM_freemem(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @sizeCclosure(i32) #1

declare dso_local %struct.TYPE_15__* @gco2ccl(%struct.TYPE_17__*) #1

declare dso_local i32 @luaH_free(i32*, i32) #1

declare dso_local i32 @gco2t(%struct.TYPE_17__*) #1

declare dso_local i32 @luaE_freethread(i32*, i32) #1

declare dso_local i32 @gco2th(%struct.TYPE_17__*) #1

declare dso_local i32 @sizeudata(i32) #1

declare dso_local i32 @gco2u(%struct.TYPE_17__*) #1

declare dso_local i32 @luaS_remove(i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @gco2ts(%struct.TYPE_17__*) #1

declare dso_local i32 @sizelstring(i32) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
