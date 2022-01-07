; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_treeview.c_test_customdraw.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_treeview.c_test_customdraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TVM_EXPAND = common dso_local global i32 0, align 4
@TVE_EXPAND = common dso_local global i32 0, align 4
@hRoot = common dso_local global i64 0, align 8
@SPI_GETICONTITLELOGFONT = common dso_local global i32 0, align 4
@g_customdraw_font = common dso_local global i32* null, align 8
@sequences = common dso_local global i32 0, align 4
@NUM_MSG_SEQUENCES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PARENT_CD_SEQ_INDEX = common dso_local global i32 0, align 4
@parent_cd_seq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"custom draw notifications\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_customdraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_customdraw() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @create_treeview_control(i32 0)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @fill_tree(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @TVM_EXPAND, align 4
  %8 = load i32, i32* @TVE_EXPAND, align 4
  %9 = load i64, i64* @hRoot, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @SendMessageA(i32 %6, i32 %7, i32 %8, i32 %10)
  %12 = load i32, i32* @SPI_GETICONTITLELOGFONT, align 4
  %13 = call i32 @SystemParametersInfoA(i32 %12, i32 4, %struct.TYPE_4__* %1, i32 0)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  store i32 %16, i32* %14, align 4
  %17 = call i32* @CreateFontIndirectA(%struct.TYPE_4__* %1)
  store i32* %17, i32** @g_customdraw_font, align 8
  %18 = load i32, i32* @sequences, align 4
  %19 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %20 = call i32 @flush_sequences(i32 %18, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @InvalidateRect(i32 %21, i32* null, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @UpdateWindow(i32 %24)
  %26 = load i32, i32* @sequences, align 4
  %27 = load i32, i32* @PARENT_CD_SEQ_INDEX, align 4
  %28 = load i32, i32* @parent_cd_seq, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @ok_sequence(i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** @g_customdraw_font, align 8
  %32 = call i32 @DeleteObject(i32* %31)
  store i32* null, i32** @g_customdraw_font, align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @DestroyWindow(i32 %33)
  ret void
}

declare dso_local i32 @create_treeview_control(i32) #1

declare dso_local i32 @fill_tree(i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @SystemParametersInfoA(i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32* @CreateFontIndirectA(%struct.TYPE_4__*) #1

declare dso_local i32 @flush_sequences(i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @UpdateWindow(i32) #1

declare dso_local i32 @ok_sequence(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
