; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_head_side_base.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_head_side_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@REF_BASE = common dso_local global i32 0, align 4
@RID_INIT = common dso_local global i32 0, align 4
@XO_MOV = common dso_local global i32 0, align 4
@REX_GC64 = common dso_local global i32 0, align 4
@jit_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32)* @asm_head_side_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm_head_side_base(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @REF_BASE, align 4
  %10 = call %struct.TYPE_9__* @IR(i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @ra_hasreg(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %84

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ra_free(%struct.TYPE_10__* %18, i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @rset_test(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @irt_ismarked(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %17
  %34 = load i32, i32* @RID_INIT, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @rset_clear(i32 %44, i32 %45)
  br label %83

47:                                               ; preds = %37
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ra_hasreg(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %47
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @rset_test(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rset_clear(i32 %63, i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = load i32, i32* @XO_MOV, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @REX_GC64, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @emit_rr(%struct.TYPE_10__* %68, i32 %69, i32 %72, i32 %75)
  br label %82

77:                                               ; preds = %53, %47
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @jit_base, align 4
  %81 = call i32 @emit_getgl(%struct.TYPE_10__* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %62
  br label %83

83:                                               ; preds = %82, %43
  br label %84

84:                                               ; preds = %83, %3
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_9__* @IR(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @ra_free(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @rset_test(i32, i32) #1

declare dso_local i64 @irt_ismarked(i32) #1

declare dso_local i32 @rset_clear(i32, i32) #1

declare dso_local i32 @emit_rr(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @emit_getgl(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
