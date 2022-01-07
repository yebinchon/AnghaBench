; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_lj_gc_barrierf.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_lj_gc_barrierf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@GCSfinalize = common dso_local global i64 0, align 8
@GCSpause = common dso_local global i64 0, align 8
@LJ_TTAB = common dso_local global i32 0, align 4
@GCSpropagate = common dso_local global i64 0, align 8
@GCSatomic = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_gc_barrierf(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %8 = call i64 @isblack(%struct.TYPE_19__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %12 = call i64 @iswhite(%struct.TYPE_19__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = call i32 @isdead(%struct.TYPE_18__* %15, %struct.TYPE_19__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = call i32 @isdead(%struct.TYPE_18__* %20, %struct.TYPE_19__* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %14, %10, %3
  %26 = phi i1 [ false, %14 ], [ false, %10 ], [ false, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @lua_assert(i32 %27)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GCSfinalize, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @GCSpause, align 8
  %41 = icmp ne i64 %39, %40
  br label %42

42:                                               ; preds = %35, %25
  %43 = phi i1 [ false, %25 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @lua_assert(i32 %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LJ_TTAB, align 4
  %51 = xor i32 %50, -1
  %52 = icmp ne i32 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @lua_assert(i32 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @GCSpropagate, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %42
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GCSatomic, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61, %42
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %71 = call i32 @gc_mark(%struct.TYPE_18__* %69, %struct.TYPE_19__* %70)
  br label %76

72:                                               ; preds = %61
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = call i32 @makewhite(%struct.TYPE_18__* %73, %struct.TYPE_19__* %74)
  br label %76

76:                                               ; preds = %72, %68
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @isblack(%struct.TYPE_19__*) #1

declare dso_local i64 @iswhite(%struct.TYPE_19__*) #1

declare dso_local i32 @isdead(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @gc_mark(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @makewhite(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
