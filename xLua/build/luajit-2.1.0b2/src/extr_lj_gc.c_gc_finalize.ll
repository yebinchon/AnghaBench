; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_finalize.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i64, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@MM_gc = common dso_local global i32 0, align 4
@LJ_GC_CDATA_FIN = common dso_local global i64 0, align 8
@LJ_TCDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gc_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_finalize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.TYPE_26__* @G(i32* %6)
  store %struct.TYPE_26__* %7, %struct.TYPE_26__** %3, align 8
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_27__* @gcref(i32 %11)
  %13 = call %struct.TYPE_27__* @gcnext(%struct.TYPE_27__* %12)
  store %struct.TYPE_27__* %13, %struct.TYPE_27__** %4, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @tvref(i32 %16)
  %18 = icmp eq i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @lua_assert(i32 %19)
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_27__* @gcref(i32 %25)
  %27 = icmp eq %struct.TYPE_27__* %21, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @setgcrefnull(i32 %32)
  br label %48

34:                                               ; preds = %1
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_27__* @gcref(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @setgcrefr(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %34, %28
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %54 = call %struct.TYPE_28__* @mainthread(%struct.TYPE_26__* %53)
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @setgcrefr(i32 %52, i32 %56)
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %59 = call %struct.TYPE_28__* @mainthread(%struct.TYPE_26__* %58)
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %63 = call i32 @setgcref(i32 %61, %struct.TYPE_27__* %62)
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %66 = call i32 @makewhite(%struct.TYPE_26__* %64, %struct.TYPE_27__* %65)
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %69 = call %struct.TYPE_22__* @gco2ud(%struct.TYPE_27__* %68)
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tabref(i32 %71)
  %73 = load i32, i32* @MM_gc, align 4
  %74 = call i32* @lj_meta_fastg(%struct.TYPE_26__* %67, i32 %72, i32 %73)
  store i32* %74, i32** %5, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %48
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %79 = load i32*, i32** %2, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %82 = call i32 @gc_call_finalizer(%struct.TYPE_26__* %78, i32* %79, i32* %80, %struct.TYPE_27__* %81)
  br label %83

83:                                               ; preds = %77, %48
  ret void
}

declare dso_local %struct.TYPE_26__* @G(i32*) #1

declare dso_local %struct.TYPE_27__* @gcnext(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @gcref(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32* @tvref(i32) #1

declare dso_local i32 @setgcrefnull(i32) #1

declare dso_local i32 @setgcrefr(i32, i32) #1

declare dso_local %struct.TYPE_28__* @mainthread(%struct.TYPE_26__*) #1

declare dso_local i32 @setgcref(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @makewhite(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32* @lj_meta_fastg(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @tabref(i32) #1

declare dso_local %struct.TYPE_22__* @gco2ud(%struct.TYPE_27__*) #1

declare dso_local i32 @gc_call_finalizer(%struct.TYPE_26__*, i32*, i32*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
