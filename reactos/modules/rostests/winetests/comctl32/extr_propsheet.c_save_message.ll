; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_propsheet.c_save_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_propsheet.c_save_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32, i32, i32, i32, i32, i32 }

@WM_USER = common dso_local global i32 0, align 4
@WM_GETICON = common dso_local global i32 0, align 4
@WM_GETTEXT = common dso_local global i32 0, align 4
@WM_IME_SETCONTEXT = common dso_local global i32 0, align 4
@WM_IME_NOTIFY = common dso_local global i32 0, align 4
@WM_PAINT = common dso_local global i32 0, align 4
@WM_ERASEBKGND = common dso_local global i32 0, align 4
@WM_SETCURSOR = common dso_local global i32 0, align 4
@WM_NCCREATE = common dso_local global i32 0, align 4
@WM_NCMBUTTONDBLCLK = common dso_local global i32 0, align 4
@WM_MOUSEFIRST = common dso_local global i32 0, align 4
@WM_MOUSEHWHEEL = common dso_local global i32 0, align 4
@sent = common dso_local global i32 0, align 4
@wparam = common dso_local global i32 0, align 4
@lparam = common dso_local global i32 0, align 4
@id = common dso_local global i32 0, align 4
@sequences = common dso_local global i32 0, align 4
@PROPSHEET_SEQ_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @save_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_message(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.message, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = bitcast %struct.message* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 24, i1 false)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @WM_USER, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %83

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @WM_GETICON, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @WM_GETTEXT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @WM_IME_SETCONTEXT, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @WM_IME_NOTIFY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @WM_PAINT, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @WM_ERASEBKGND, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @WM_SETCURSOR, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @WM_NCCREATE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @WM_NCMBUTTONDBLCLK, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @WM_MOUSEFIRST, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @WM_MOUSEHWHEEL, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 144
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds %struct.message, %struct.message* %11, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @sent, align 4
  %67 = load i32, i32* @wparam, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @lparam, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @id, align 4
  %72 = or i32 %70, %71
  %73 = getelementptr inbounds %struct.message, %struct.message* %11, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = getelementptr inbounds %struct.message, %struct.message* %11, i32 0, i32 4
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds %struct.message, %struct.message* %11, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = getelementptr inbounds %struct.message, %struct.message* %11, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @sequences, align 4
  %81 = load i32, i32* @PROPSHEET_SEQ_INDEX, align 4
  %82 = call i32 @add_message(i32 %80, i32 %81, %struct.message* %11)
  br label %83

83:                                               ; preds = %63, %60, %56, %48, %40, %36, %32, %28, %24, %20, %16, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @add_message(i32, i32, %struct.message*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
