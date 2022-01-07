; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_snap_checkrename.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_snap_checkrename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }

@LJ_SOFTFP = common dso_local global i64 0, align 8
@SNAP_SOFTFPNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"snaprensp $f $s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64)* @asm_snap_checkrename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm_snap_checkrename(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i64 %20
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %6, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32* %30, i32** %7, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %76, %2
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @snap_ref(i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %61, label %48

48:                                               ; preds = %38
  %49 = load i64, i64* @LJ_SOFTFP, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SNAP_SOFTFPNUM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load i64, i64* %11, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %56, %38
  %62 = load i64, i64* %11, align 8
  %63 = call %struct.TYPE_12__* @IR(i64 %62)
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %12, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = call i32 @ra_spill(%struct.TYPE_13__* %64, %struct.TYPE_12__* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.TYPE_13__*
  %74 = call i32 @RA_DBGX(%struct.TYPE_13__* %73)
  store i32 1, i32* %3, align 4
  br label %80

75:                                               ; preds = %56, %51, %48
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %34

79:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %61
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @snap_ref(i32) #1

declare dso_local %struct.TYPE_12__* @IR(i64) #1

declare dso_local i32 @ra_spill(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @RA_DBGX(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
