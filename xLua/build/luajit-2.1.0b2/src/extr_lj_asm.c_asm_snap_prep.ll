; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_snap_prep.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_snap_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32 }

@REF_BIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @asm_snap_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_snap_prep(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %36, %11
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %88

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %18
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %12, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = call i32 @asm_snap_alloc(%struct.TYPE_12__* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  br label %88

54:                                               ; preds = %1
  br label %55

55:                                               ; preds = %82, %54
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %58, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %55
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.TYPE_11__* @IR(i64 %68)
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %3, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @asm_snap_checkrename(%struct.TYPE_12__* %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load i64, i64* @REF_BIAS, align 8
  %78 = sub nsw i64 %77, 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %76, %65
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %55

87:                                               ; preds = %55
  br label %88

88:                                               ; preds = %17, %87, %44
  ret void
}

declare dso_local i32 @asm_snap_alloc(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @IR(i64) #1

declare dso_local i64 @asm_snap_checkrename(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
