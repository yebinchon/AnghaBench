; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaF_close.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaF_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64)* @luaF_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaF_close(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = call i32* @G(%struct.TYPE_15__* %8)
  store i32* %9, i32** %6, align 8
  br label %10

10:                                               ; preds = %62, %2
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call %struct.TYPE_16__* @ngcotouv(i32* %18)
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp sge i64 %21, %22
  br label %24

24:                                               ; preds = %15, %10
  %25 = phi i1 [ false, %10 ], [ %23, %15 ]
  br i1 %25, label %26, label %63

26:                                               ; preds = %24
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = call i32* @obj2gco(%struct.TYPE_16__* %27)
  store i32* %28, i32** %7, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @isdead(i32* %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = call i32 @luaF_freeupval(%struct.TYPE_15__* %39, %struct.TYPE_16__* %40)
  br label %62

42:                                               ; preds = %26
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = call i32 @unlinkupval(%struct.TYPE_16__* %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @setobj(%struct.TYPE_15__* %45, i32* %48, i64 %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = ptrtoint i32* %55 to i64
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = call i32 @luaC_linkupval(%struct.TYPE_15__* %59, %struct.TYPE_16__* %60)
  br label %62

62:                                               ; preds = %42, %38
  br label %10

63:                                               ; preds = %24
  ret void
}

declare dso_local i32* @G(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @ngcotouv(i32*) #1

declare dso_local i32* @obj2gco(%struct.TYPE_16__*) #1

declare dso_local i64 @isdead(i32*, i32*) #1

declare dso_local i32 @luaF_freeupval(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @unlinkupval(%struct.TYPE_16__*) #1

declare dso_local i32 @setobj(%struct.TYPE_15__*, i32*, i64) #1

declare dso_local i32 @luaC_linkupval(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
