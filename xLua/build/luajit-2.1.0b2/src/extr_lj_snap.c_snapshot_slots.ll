; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_snapshot_slots.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_snapshot_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32 }

@IR_RETF = common dso_local global i64 0, align 8
@SNAP_CONT = common dso_local global i32 0, align 4
@SNAP_FRAME = common dso_local global i32 0, align 4
@IR_SLOAD = common dso_local global i64 0, align 8
@IRSLOAD_INHERIT = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i64 0, align 8
@IRSLOAD_CONVERT = common dso_local global i32 0, align 4
@IRSLOAD_READONLY = common dso_local global i32 0, align 4
@IRSLOAD_PARENT = common dso_local global i32 0, align 4
@SNAP_NORESTORE = common dso_local global i32 0, align 4
@LJ_SOFTFP = common dso_local global i64 0, align 8
@SNAP_SOFTFPNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32*, i64)* @snapshot_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snapshot_slots(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @IR_RETF, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %121, %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %124

24:                                               ; preds = %20
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @tref_ref(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %120

35:                                               ; preds = %24
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @SNAP_TR(i64 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %13, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @SNAP_CONT, align 4
  %48 = load i32, i32* @SNAP_FRAME, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %101, label %52

52:                                               ; preds = %35
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IR_SLOAD, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %64
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IRSLOAD_INHERIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %121

76:                                               ; preds = %68
  %77 = load i64, i64* @LJ_DUALNUM, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IRSLOAD_CONVERT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %79, %76
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IRSLOAD_READONLY, align 4
  %91 = load i32, i32* @IRSLOAD_PARENT, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = load i32, i32* @IRSLOAD_PARENT, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load i32, i32* @SNAP_NORESTORE, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %86, %79
  br label %101

101:                                              ; preds = %100, %64, %58, %52, %35
  %102 = load i64, i64* @LJ_SOFTFP, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @irt_isnum(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @SNAP_SOFTFPNUM, align 4
  %112 = load i32, i32* %12, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %110, %104, %101
  %115 = load i32, i32* %12, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = load i64, i64* %9, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %9, align 8
  %119 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32 %115, i32* %119, align 4
  br label %120

120:                                              ; preds = %114, %24
  br label %121

121:                                              ; preds = %120, %75
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %8, align 8
  br label %20

124:                                              ; preds = %20
  %125 = load i64, i64* %9, align 8
  ret i64 %125
}

declare dso_local i32 @tref_ref(i32) #1

declare dso_local i32 @SNAP_TR(i64, i32) #1

declare dso_local i64 @irt_isnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
