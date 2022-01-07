; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_snap_alloc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_snap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }

@LJ_SOFTFP = common dso_local global i64 0, align 8
@SNAP_SOFTFPNUM = common dso_local global i32 0, align 4
@IRT_SOFTFP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @asm_snap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_snap_alloc(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 %16
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %4, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %72, %1
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @snap_ref(i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @irref_isk(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @asm_snap_alloc1(%struct.TYPE_9__* %45, i64 %46)
  %48 = load i64, i64* @LJ_SOFTFP, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SNAP_SOFTFPNUM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %56, 1
  %58 = call %struct.TYPE_10__* @IR(i64 %57)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @irt_type(i32 %60)
  %62 = load i64, i64* @IRT_SOFTFP, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @lua_assert(i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %67, 1
  %69 = call i32 @asm_snap_alloc1(%struct.TYPE_9__* %66, i64 %68)
  br label %70

70:                                               ; preds = %55, %50, %44
  br label %71

71:                                               ; preds = %70, %34
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  br label %30

75:                                               ; preds = %30
  ret void
}

declare dso_local i64 @snap_ref(i32) #1

declare dso_local i32 @irref_isk(i64) #1

declare dso_local i32 @asm_snap_alloc1(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_type(i32) #1

declare dso_local %struct.TYPE_10__* @IR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
