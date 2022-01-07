; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_snap_caller.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_snap_caller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32*, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32* }

@LJ_TRERR_NYICALL = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@TREF_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @crec_snap_caller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crec_snap_caller(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 -1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 -1
  %28 = call i32 @frame_islua(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = load i32, i32* @LJ_TRERR_NYICALL, align 4
  %38 = call i32 @lj_trace_err(%struct.TYPE_7__* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -1
  %42 = call i32* @frame_pc(i32* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* @LJ_FR2, align 4
  %46 = add nsw i32 1, %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bc_a(i32 %51)
  %53 = add nsw i32 %46, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* @TREF_FALSE, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 -1
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = sext i32 %69 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32* %75, i32** %71, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %89 = call i32 @lj_snap_add(%struct.TYPE_7__* %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 1, i32* %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = sext i32 %102 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %104, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 -1
  store i32 %113, i32* %117, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  ret void
}

declare dso_local i32 @frame_islua(i32*) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_7__*, i32) #1

declare dso_local i32* @frame_pc(i32*) #1

declare dso_local i32 @bc_a(i32) #1

declare dso_local i32 @lj_snap_add(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
