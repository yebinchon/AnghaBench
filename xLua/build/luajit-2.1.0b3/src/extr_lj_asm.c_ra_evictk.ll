; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_ra_evictk.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_ra_evictk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@RSET_FPR = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ra_evictk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ra_evictk(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @RSET_FPR, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %40, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @rset_pickbot(i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regcost_ref(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @emit_canremat(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @irref_isk(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ra_rematk(%struct.TYPE_5__* %35, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = call i32 @checkmclim(%struct.TYPE_5__* %38)
  br label %40

40:                                               ; preds = %34, %30, %17
  %41 = load i32, i32* %3, align 4
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @rset_clear(i32 %41, i64 %42)
  br label %14

44:                                               ; preds = %14
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @RSET_GPR, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %77, %44
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @rset_pickbot(i32 %55)
  store i64 %56, i64* %6, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regcost_ref(i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @emit_canremat(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %54
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @irref_isk(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ra_rematk(%struct.TYPE_5__* %72, i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = call i32 @checkmclim(%struct.TYPE_5__* %75)
  br label %77

77:                                               ; preds = %71, %67, %54
  %78 = load i32, i32* %3, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @rset_clear(i32 %78, i64 %79)
  br label %51

81:                                               ; preds = %51
  ret void
}

declare dso_local i64 @rset_pickbot(i32) #1

declare dso_local i32 @regcost_ref(i32) #1

declare dso_local i64 @emit_canremat(i32) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local i32 @ra_rematk(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @checkmclim(%struct.TYPE_5__*) #1

declare dso_local i32 @rset_clear(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
