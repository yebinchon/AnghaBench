; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_strref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_strref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@RID_NONE = common dso_local global i64 0, align 8
@XOg_ADD = common dso_local global i32 0, align 4
@REX_GC64 = common dso_local global i32 0, align 4
@XO_LEA = common dso_local global i32 0, align 4
@RID_MRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @asm_strref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_strref(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @RSET_GPR, align 4
  %9 = call i32 @ra_dest(%struct.TYPE_10__* %6, i32* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @RSET_GPR, align 4
  %13 = call i32 @asm_fusestrref(%struct.TYPE_10__* %10, i32* %11, i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RID_NONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @emit_loadi(%struct.TYPE_10__* %21, i32 %22, i32 %26)
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %28
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RID_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = load i32, i32* @XOg_ADD, align 4
  %46 = call i32 @XG_ARITHi(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @REX_GC64, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @emit_gri(%struct.TYPE_10__* %44, i32 %46, i32 %49, i32 %53)
  br label %63

55:                                               ; preds = %36, %28
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = load i32, i32* @XO_LEA, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @REX_GC64, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RID_MRM, align 4
  %62 = call i32 @emit_mrm(%struct.TYPE_10__* %56, i32 %57, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %43
  br label %64

64:                                               ; preds = %63, %20
  ret void
}

declare dso_local i32 @ra_dest(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @asm_fusestrref(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @emit_loadi(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @emit_gri(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @XG_ARITHi(i32) #1

declare dso_local i32 @emit_mrm(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
