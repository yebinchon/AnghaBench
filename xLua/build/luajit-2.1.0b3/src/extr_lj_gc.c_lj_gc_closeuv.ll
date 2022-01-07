; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_lj_gc_closeuv.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_lj_gc_closeuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@GCSpropagate = common dso_local global i64 0, align 8
@GCSatomic = common dso_local global i64 0, align 8
@GCSfinalize = common dso_local global i64 0, align 8
@GCSpause = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_gc_closeuv(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %6 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %7 = call %struct.TYPE_23__* @obj2gco(%struct.TYPE_22__* %6)
  store %struct.TYPE_23__* %7, %struct.TYPE_23__** %5, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %9 = call i32 @mainthread(%struct.TYPE_21__* %8)
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = call i32 @uvval(%struct.TYPE_22__* %12)
  %14 = call i32 @copyTV(i32 %9, i32* %11, i32 %13)
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %20 = call i32 @setmref(i32 %17, i32* %19)
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @setgcrefr(i32 %26, i32 %30)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %37 = call i32 @setgcref(i32 %35, %struct.TYPE_23__* %36)
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = call i64 @isgray(%struct.TYPE_23__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %92

41:                                               ; preds = %2
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @GCSpropagate, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @GCSatomic, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %48, %41
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = call i32 @gray2black(%struct.TYPE_23__* %56)
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = call i64 @tviswhite(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = call i32 @gcV(i32* %66)
  %68 = call i32 @lj_gc_barrierf(%struct.TYPE_21__* %63, %struct.TYPE_23__* %64, i32 %67)
  br label %69

69:                                               ; preds = %62, %55
  br label %91

70:                                               ; preds = %48
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = call i32 @makewhite(%struct.TYPE_21__* %71, %struct.TYPE_23__* %72)
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @GCSfinalize, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @GCSpause, align 8
  %86 = icmp ne i64 %84, %85
  br label %87

87:                                               ; preds = %80, %70
  %88 = phi i1 [ false, %70 ], [ %86, %80 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @lua_assert(i32 %89)
  br label %91

91:                                               ; preds = %87, %69
  br label %92

92:                                               ; preds = %91, %2
  ret void
}

declare dso_local %struct.TYPE_23__* @obj2gco(%struct.TYPE_22__*) #1

declare dso_local i32 @copyTV(i32, i32*, i32) #1

declare dso_local i32 @mainthread(%struct.TYPE_21__*) #1

declare dso_local i32 @uvval(%struct.TYPE_22__*) #1

declare dso_local i32 @setmref(i32, i32*) #1

declare dso_local i32 @setgcrefr(i32, i32) #1

declare dso_local i32 @setgcref(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @isgray(%struct.TYPE_23__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_23__*) #1

declare dso_local i64 @tviswhite(i32*) #1

declare dso_local i32 @lj_gc_barrierf(%struct.TYPE_21__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @gcV(i32*) #1

declare dso_local i32 @makewhite(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
