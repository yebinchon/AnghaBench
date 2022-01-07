; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_taskdialog.c_init_test_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_taskdialog.c_init_test_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32, i64, i32, i32, i32, i32 }

@WM_TD_CALLBACK = common dso_local global i32 0, align 4
@sent = common dso_local global i32 0, align 4
@wparam = common dso_local global i32 0, align 4
@lparam = common dso_local global i32 0, align 4
@id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.message*)* @init_test_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_test_message(i32 %0, i32 %1, i32 %2, %struct.message* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.message*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.message* %3, %struct.message** %8, align 8
  %9 = load i32, i32* @WM_TD_CALLBACK, align 4
  %10 = load %struct.message*, %struct.message** %8, align 8
  %11 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @sent, align 4
  %13 = load i32, i32* @wparam, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @lparam, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @id, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.message*, %struct.message** %8, align 8
  %20 = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.message*, %struct.message** %8, align 8
  %23 = getelementptr inbounds %struct.message, %struct.message* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.message*, %struct.message** %8, align 8
  %26 = getelementptr inbounds %struct.message, %struct.message* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.message*, %struct.message** %8, align 8
  %29 = getelementptr inbounds %struct.message, %struct.message* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.message*, %struct.message** %8, align 8
  %31 = getelementptr inbounds %struct.message, %struct.message* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
