; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_tab.c_test_TCM_GETROWCOUNT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_tab.c_test_TCM_GETROWCOUNT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sequences = common dso_local global i32 0, align 4
@NUM_MSG_SEQUENCES = common dso_local global i32 0, align 4
@parent_wnd = common dso_local global i32 0, align 4
@TCS_FIXEDWIDTH = common dso_local global i32 0, align 4
@TCIF_TEXT = common dso_local global i32 0, align 4
@TCIF_IMAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to create tab control\0A\00", align 1
@TCM_GETROWCOUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unexpected row count %d.\0A\00", align 1
@TAB_SEQ_INDEX = common dso_local global i32 0, align 4
@get_row_count_seq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Get rowCount test sequence\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PARENT_SEQ_INDEX = common dso_local global i32 0, align 4
@empty_sequence = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Get rowCount test parent sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_TCM_GETROWCOUNT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_TCM_GETROWCOUNT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 5, i32* %1, align 4
  %4 = load i32, i32* @sequences, align 4
  %5 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %6 = call i32 @flush_sequences(i32 %4, i32 %5)
  %7 = load i32, i32* @parent_wnd, align 4
  %8 = load i32, i32* @TCS_FIXEDWIDTH, align 4
  %9 = load i32, i32* @TCIF_TEXT, align 4
  %10 = load i32, i32* @TCIF_IMAGE, align 4
  %11 = or i32 %9, %10
  %12 = call i32* @createFilledTabControl(i32 %7, i32 %8, i32 %11, i32 5)
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @sequences, align 4
  %18 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %19 = call i32 @flush_sequences(i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @TCM_GETROWCOUNT, align 4
  %22 = call i32 @SendMessageA(i32* %20, i32 %21, i32 0, i32 0)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @sequences, align 4
  %29 = load i32, i32* @TAB_SEQ_INDEX, align 4
  %30 = load i32, i32* @get_row_count_seq, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @ok_sequence(i32 %28, i32 %29, i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @sequences, align 4
  %34 = load i32, i32* @PARENT_SEQ_INDEX, align 4
  %35 = load i32, i32* @empty_sequence, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @ok_sequence(i32 %33, i32 %34, i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @DestroyWindow(i32* %38)
  ret void
}

declare dso_local i32 @flush_sequences(i32, i32) #1

declare dso_local i32* @createFilledTabControl(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #1

declare dso_local i32 @ok_sequence(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
