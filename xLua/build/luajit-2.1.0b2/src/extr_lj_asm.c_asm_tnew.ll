; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_tnew.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_tnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@lj_ir_callinfo = common dso_local global i32* null, align 8
@IRCALL_lj_tab_new1 = common dso_local global i64 0, align 8
@ASMREF_L = common dso_local global i32 0, align 4
@ASMREF_TMP1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @asm_tnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_tnew(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load i32*, i32** @lj_ir_callinfo, align 8
  %8 = load i64, i64* @IRCALL_lj_tab_new1, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32* %9, i32** %5, align 8
  %10 = load i32, i32* @ASMREF_L, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @ASMREF_TMP1, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @asm_setupresult(%struct.TYPE_11__* %18, %struct.TYPE_10__* %19, i32* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %25 = call i32 @asm_gencall(%struct.TYPE_11__* %22, i32* %23, i32* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 24
  %34 = or i32 %29, %33
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = load i32, i32* @ASMREF_TMP1, align 4
  %37 = call i32 @ra_releasetmp(%struct.TYPE_11__* %35, i32 %36)
  %38 = call i32 @ra_allockreg(%struct.TYPE_11__* %26, i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @asm_setupresult(%struct.TYPE_11__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @asm_gencall(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @ra_allockreg(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ra_releasetmp(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
