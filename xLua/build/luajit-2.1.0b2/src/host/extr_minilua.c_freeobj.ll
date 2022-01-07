; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_freeobj.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_freeobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
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
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %54 [
    i32 9, label %9
    i32 6, label %14
    i32 10, label %19
    i32 5, label %24
    i32 8, label %29
    i32 4, label %34
    i32 7, label %47
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = call i32 @gco2p(%struct.TYPE_17__* %11)
  %13 = call i32 @luaF_freeproto(i32* %10, i32 %12)
  br label %55

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = call i32 @gco2cl(%struct.TYPE_17__* %16)
  %18 = call i32 @luaF_freeclosure(i32* %15, i32 %17)
  br label %55

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = call i32 @gco2uv(%struct.TYPE_17__* %21)
  %23 = call i32 @luaF_freeupval(i32* %20, i32 %22)
  br label %55

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = call i32 @gco2h(%struct.TYPE_17__* %26)
  %28 = call i32 @luaH_free(i32* %25, i32 %27)
  br label %55

29:                                               ; preds = %2
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = call i32 @gco2th(%struct.TYPE_17__* %31)
  %33 = call i32 @luaE_freethread(i32* %30, i32 %32)
  br label %55

34:                                               ; preds = %2
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.TYPE_14__* @G(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = call i32 @gco2ts(%struct.TYPE_17__* %43)
  %45 = call i32 @sizestring(i32 %44)
  %46 = call i32 @luaM_freemem(i32* %41, %struct.TYPE_17__* %42, i32 %45)
  br label %55

47:                                               ; preds = %2
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = call i32 @gco2u(%struct.TYPE_17__* %50)
  %52 = call i32 @sizeudata(i32 %51)
  %53 = call i32 @luaM_freemem(i32* %48, %struct.TYPE_17__* %49, i32 %52)
  br label %55

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %54, %47, %34, %29, %24, %19, %14, %9
  ret void
}

declare dso_local i32 @luaF_freeproto(i32*, i32) #1

declare dso_local i32 @gco2p(%struct.TYPE_17__*) #1

declare dso_local i32 @luaF_freeclosure(i32*, i32) #1

declare dso_local i32 @gco2cl(%struct.TYPE_17__*) #1

declare dso_local i32 @luaF_freeupval(i32*, i32) #1

declare dso_local i32 @gco2uv(%struct.TYPE_17__*) #1

declare dso_local i32 @luaH_free(i32*, i32) #1

declare dso_local i32 @gco2h(%struct.TYPE_17__*) #1

declare dso_local i32 @luaE_freethread(i32*, i32) #1

declare dso_local i32 @gco2th(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_14__* @G(i32*) #1

declare dso_local i32 @luaM_freemem(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @sizestring(i32) #1

declare dso_local i32 @gco2ts(%struct.TYPE_17__*) #1

declare dso_local i32 @sizeudata(i32) #1

declare dso_local i32 @gco2u(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
