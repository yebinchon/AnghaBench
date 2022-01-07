; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_atomic.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, i32 }
%struct.TYPE_15__ = type { i64, i64, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32*)* @atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atomic(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = call i32 @gc_mark_uv(%struct.TYPE_16__* %6)
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = call i64 @gc_propagate_gray(%struct.TYPE_16__* %8)
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @setgcrefr(i32 %13, i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @setgcrefnull(i32 %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = call i32 @mainthread(%struct.TYPE_16__* %24)
  %26 = call i32 @obj2gco(i32 %25)
  %27 = call i32 @iswhite(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @lua_assert(i32 %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @gc_markobj(%struct.TYPE_16__* %32, i32* %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = call i32 @gc_traverse_curtrace(%struct.TYPE_16__* %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = call i32 @gc_mark_gcroot(%struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = call i64 @gc_propagate_gray(%struct.TYPE_16__* %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @setgcrefr(i32 %44, i32 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @setgcrefnull(i32 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = call i64 @gc_propagate_gray(%struct.TYPE_16__* %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = call i64 @lj_gc_separateudata(%struct.TYPE_16__* %57, i32 0)
  store i64 %58, i64* %5, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = call i32 @gc_mark_mmudata(%struct.TYPE_16__* %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = call i64 @gc_propagate_gray(%struct.TYPE_16__* %61)
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %5, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @gcref(i32 %68)
  %70 = call i32 @gc_clearweak(i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = call i32 @lj_buf_shrink(i32* %71, i32* %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = call i64 @otherwhite(%struct.TYPE_16__* %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 4
  store i64 %76, i64* %79, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = call i32 @setmref(i32 %90, i32* %93)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = sub nsw i64 %98, %99
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  store i64 %100, i64* %103, align 8
  ret void
}

declare dso_local i32 @gc_mark_uv(%struct.TYPE_16__*) #1

declare dso_local i64 @gc_propagate_gray(%struct.TYPE_16__*) #1

declare dso_local i32 @setgcrefr(i32, i32) #1

declare dso_local i32 @setgcrefnull(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @iswhite(i32) #1

declare dso_local i32 @obj2gco(i32) #1

declare dso_local i32 @mainthread(%struct.TYPE_16__*) #1

declare dso_local i32 @gc_markobj(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @gc_traverse_curtrace(%struct.TYPE_16__*) #1

declare dso_local i32 @gc_mark_gcroot(%struct.TYPE_16__*) #1

declare dso_local i64 @lj_gc_separateudata(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @gc_mark_mmudata(%struct.TYPE_16__*) #1

declare dso_local i32 @gc_clearweak(i32) #1

declare dso_local i32 @gcref(i32) #1

declare dso_local i32 @lj_buf_shrink(i32*, i32*) #1

declare dso_local i64 @otherwhite(%struct.TYPE_16__*) #1

declare dso_local i32 @setmref(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
