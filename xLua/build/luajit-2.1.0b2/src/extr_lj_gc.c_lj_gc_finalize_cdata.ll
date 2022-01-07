; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_lj_gc_finalize_cdata.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_lj_gc_finalize_cdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@LJ_GC_CDATA_FIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_gc_finalize_cdata(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @G(i32* %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_15__* @ctype_ctsG(i32* %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %4, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %16, label %85

16:                                               ; preds = %1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %5, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_12__* @noderef(i32 %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %6, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @setgcrefnull(i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %81, %16
  %32 = load i64, i64* %7, align 8
  %33 = icmp uge i64 %32, 0
  br i1 %33, label %34, label %84

34:                                               ; preds = %31
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = call i32 @tvisnil(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = call i64 @tviscdata(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %41
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = call %struct.TYPE_14__* @gcV(i32* %52)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %8, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = call i32 @makewhite(i32* %54, %struct.TYPE_14__* %55)
  %57 = load i64, i64* @LJ_GC_CDATA_FIN, align 8
  %58 = xor i64 %57, -1
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = call i32 @copyTV(i32* %65, i32* %9, i32* %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = call i32 @setnilV(i32* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %2, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = call i32 @gc_call_finalizer(i32* %76, i32* %77, i32* %9, %struct.TYPE_14__* %78)
  br label %80

80:                                               ; preds = %48, %41, %34
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %7, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %7, align 8
  br label %31

84:                                               ; preds = %31
  br label %85

85:                                               ; preds = %84, %1
  ret void
}

declare dso_local i32* @G(i32*) #1

declare dso_local %struct.TYPE_15__* @ctype_ctsG(i32*) #1

declare dso_local %struct.TYPE_12__* @noderef(i32) #1

declare dso_local i32 @setgcrefnull(i32) #1

declare dso_local i32 @tvisnil(i32*) #1

declare dso_local i64 @tviscdata(i32*) #1

declare dso_local %struct.TYPE_14__* @gcV(i32*) #1

declare dso_local i32 @makewhite(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @copyTV(i32*, i32*, i32*) #1

declare dso_local i32 @setnilV(i32*) #1

declare dso_local i32 @gc_call_finalizer(i32*, i32*, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
