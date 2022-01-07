; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_snapshot_slots.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_snapshot_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32*, %struct.TYPE_9__, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@IR_RETF = common dso_local global i64 0, align 8
@LJ_FR2 = common dso_local global i64 0, align 8
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
@IR_KNUM = common dso_local global i32 0, align 4
@REF_NIL = common dso_local global i32 0, align 4
@TREF_CONT = common dso_local global i32 0, align 4
@TREF_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32*, i64)* @snapshot_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snapshot_slots(%struct.TYPE_10__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @IR_RETF, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %124, %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %127

24:                                               ; preds = %20
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
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
  br i1 %34, label %35, label %123

35:                                               ; preds = %24
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @SNAP_TR(i64 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 %44
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %13, align 8
  %46 = load i64, i64* @LJ_FR2, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @SNAP_CONT, align 4
  %51 = load i32, i32* @SNAP_FRAME, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %104, label %55

55:                                               ; preds = %48, %35
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IR_SLOAD, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %104

61:                                               ; preds = %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IRSLOAD_INHERIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %124

79:                                               ; preds = %71
  %80 = load i64, i64* @LJ_DUALNUM, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IRSLOAD_CONVERT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IRSLOAD_READONLY, align 4
  %94 = load i32, i32* @IRSLOAD_PARENT, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = load i32, i32* @IRSLOAD_PARENT, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load i32, i32* @SNAP_NORESTORE, align 4
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %99, %89, %82
  br label %104

104:                                              ; preds = %103, %67, %61, %55, %48
  %105 = load i64, i64* @LJ_SOFTFP, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @irt_isnum(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* @SNAP_SOFTFPNUM, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %113, %107, %104
  %118 = load i32, i32* %12, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %9, align 8
  %122 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %24
  br label %124

124:                                              ; preds = %123, %78
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %8, align 8
  br label %20

127:                                              ; preds = %20
  %128 = load i64, i64* %9, align 8
  ret i64 %128
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
