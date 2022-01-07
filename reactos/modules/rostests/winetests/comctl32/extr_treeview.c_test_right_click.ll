; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_treeview.c_test_right_click.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_treeview.c_test_right_click.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@TVM_ENSUREVISIBLE = common dso_local global i32 0, align 4
@hChild = common dso_local global i64 0, align 8
@TVM_SELECTITEM = common dso_local global i32 0, align 4
@TVGN_CARET = common dso_local global i32 0, align 4
@TVM_GETNEXTITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"child item not selected\0A\00", align 1
@hRoot = common dso_local global i64 0, align 8
@TVM_GETITEMRECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TVM_GETITEMRECT failed\0A\00", align 1
@hMainWnd = common dso_local global i32 0, align 4
@sequences = common dso_local global i32 0, align 4
@NUM_MSG_SEQUENCES = common dso_local global i32 0, align 4
@WM_RBUTTONDOWN = common dso_local global i32 0, align 4
@MK_RBUTTON = common dso_local global i32 0, align 4
@WM_RBUTTONUP = common dso_local global i32 0, align 4
@TREEVIEW_SEQ_INDEX = common dso_local global i32 0, align 4
@test_right_click_seq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"right click sequence\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PARENT_SEQ_INDEX = common dso_local global i32 0, align 4
@parent_right_click_seq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"parent right click sequence\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"child item should still be selected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_right_click to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_right_click() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = call i32 @create_treeview_control(i32 0)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @fill_tree(i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @TVM_ENSUREVISIBLE, align 4
  %12 = load i64, i64* @hChild, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @SendMessageA(i32 %10, i32 %11, i32 0, i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @TVM_SELECTITEM, align 4
  %17 = load i32, i32* @TVGN_CARET, align 4
  %18 = load i64, i64* @hChild, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @SendMessageA(i32 %15, i32 %16, i32 %17, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %23 = load i32, i32* @TVGN_CARET, align 4
  %24 = call i32 @SendMessageA(i32 %21, i32 %22, i32 %23, i32 0)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %2, align 8
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @hChild, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @hRoot, align 8
  %32 = bitcast %struct.TYPE_5__* %3 to i64*
  store i64 %31, i64* %32, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @TVM_GETITEMRECT, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = ptrtoint %struct.TYPE_5__* %3 to i32
  %37 = call i32 @SendMessageA(i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 (...) @flush_events()
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %42, %44
  %46 = sdiv i32 %45, 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %49, %51
  %53 = sdiv i32 %52, 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @hMainWnd, align 4
  %56 = call i32 @ClientToScreen(i32 %55, %struct.TYPE_6__* %5)
  %57 = call i32 @GetCursorPos(%struct.TYPE_6__* %6)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SetCursorPos(i32 %59, i32 %61)
  %63 = call i32 (...) @flush_events()
  %64 = load i32, i32* @sequences, align 4
  %65 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %66 = call i32 @flush_sequences(i32 %64, i32 %65)
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @WM_RBUTTONDOWN, align 4
  %69 = load i32, i32* @MK_RBUTTON, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MAKELPARAM(i32 %71, i32 %73)
  %75 = call i32 @PostMessageA(i32 %67, i32 %68, i32 %69, i32 %74)
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @WM_RBUTTONUP, align 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @MAKELPARAM(i32 %79, i32 %81)
  %83 = call i32 @PostMessageA(i32 %76, i32 %77, i32 0, i32 %82)
  %84 = call i32 (...) @flush_events()
  %85 = load i32, i32* @sequences, align 4
  %86 = load i32, i32* @TREEVIEW_SEQ_INDEX, align 4
  %87 = load i32, i32* @test_right_click_seq, align 4
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @ok_sequence(i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @sequences, align 4
  %91 = load i32, i32* @PARENT_SEQ_INDEX, align 4
  %92 = load i32, i32* @parent_right_click_seq, align 4
  %93 = load i32, i32* @FALSE, align 4
  %94 = call i32 @ok_sequence(i32 %90, i32 %91, i32 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %97 = load i32, i32* @TVGN_CARET, align 4
  %98 = call i32 @SendMessageA(i32 %95, i32 %96, i32 %97, i32 0)
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %2, align 8
  %100 = load i64, i64* %2, align 8
  %101 = load i64, i64* @hChild, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @SetCursorPos(i32 %106, i32 %108)
  %110 = load i32, i32* %1, align 4
  %111 = call i32 @DestroyWindow(i32 %110)
  ret void
}

declare dso_local i32 @create_treeview_control(i32) #1

declare dso_local i32 @fill_tree(i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @flush_events(...) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @GetCursorPos(%struct.TYPE_6__*) #1

declare dso_local i32 @SetCursorPos(i32, i32) #1

declare dso_local i32 @flush_sequences(i32, i32) #1

declare dso_local i32 @PostMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

declare dso_local i32 @ok_sequence(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
