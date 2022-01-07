; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_combo.c_test_comboex_get_set_item.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_combo.c_test_comboex_get_set_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@__const.test_comboex_get_set_item.textA = private unnamed_addr constant [5 x i8] c"test\00", align 1
@WS_BORDER = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@CBS_DROPDOWN = common dso_local global i32 0, align 4
@sequences = common dso_local global i32 0, align 4
@NUM_MSG_SEQUENCES = common dso_local global i32 0, align 4
@CBEIF_TEXT = common dso_local global i32 0, align 4
@CBEM_SETITEMA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EDITBOX_SEQ_INDEX = common dso_local global i32 0, align 4
@test_setitem_edit_seq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"set item data for edit\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CBEIF_LPARAM = common dso_local global i32 0, align 4
@CBEM_GETITEMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Expected zero, got %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Expected 0x1abe11ed, got %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_comboex_get_set_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_comboex_get_set_item() #0 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = bitcast [5 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_comboex_get_set_item.textA, i32 0, i32 0), i64 5, i1 false)
  %6 = load i32, i32* @WS_BORDER, align 4
  %7 = load i32, i32* @WS_VISIBLE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @WS_CHILD, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CBS_DROPDOWN, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @createComboEx(i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @subclass_editbox(i32 %14)
  %16 = load i32, i32* @sequences, align 4
  %17 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %18 = call i32 @flush_sequences(i32 %16, i32 %17)
  %19 = call i32 @memset(%struct.TYPE_3__* %3, i32 0, i32 24)
  %20 = load i32, i32* @CBEIF_TEXT, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 -1, i32* %24, align 8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @CBEM_SETITEMA, align 4
  %27 = ptrtoint %struct.TYPE_3__* %3 to i32
  %28 = call i32 @SendMessageA(i32 %25, i32 %26, i32 0, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @expect(i32 %29, i32 %30)
  %32 = load i32, i32* @sequences, align 4
  %33 = load i32, i32* @EDITBOX_SEQ_INDEX, align 4
  %34 = load i32, i32* @test_setitem_edit_seq, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @ok_sequence(i32 %32, i32 %33, i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @CBEIF_LPARAM, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 -1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 -559038737, i32* %40, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @CBEM_GETITEMA, align 4
  %43 = ptrtoint %struct.TYPE_3__* %3 to i32
  %44 = call i32 @SendMessageA(i32 %41, i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @expect(i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 448664045, i32* %55, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @CBEM_SETITEMA, align 4
  %58 = ptrtoint %struct.TYPE_3__* %3 to i32
  %59 = call i32 @SendMessageA(i32 %56, i32 %57, i32 0, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @TRUE, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @expect(i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @CBEM_GETITEMA, align 4
  %66 = ptrtoint %struct.TYPE_3__* %3 to i32
  %67 = call i32 @SendMessageA(i32 %64, i32 %65, i32 0, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @TRUE, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @expect(i32 %68, i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 448664045
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @DestroyWindow(i32 %78)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @createComboEx(i32) #2

declare dso_local i32 @subclass_editbox(i32) #2

declare dso_local i32 @flush_sequences(i32, i32) #2

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @ok_sequence(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @DestroyWindow(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
