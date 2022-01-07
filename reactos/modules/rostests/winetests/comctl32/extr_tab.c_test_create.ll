; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_tab.c_test_create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_tab.c_test_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tabcreate_style = type { i64, i64 }

@create_styles = common dso_local global %struct.tabcreate_style* null, align 8
@WC_TABCONTROLA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"TestTab\00", align 1
@parent_wnd = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"expected style 0x%08x, got style 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_create() #0 {
  %1 = alloca %struct.tabcreate_style*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.tabcreate_style*, %struct.tabcreate_style** @create_styles, align 8
  store %struct.tabcreate_style* %4, %struct.tabcreate_style** %1, align 8
  br label %5

5:                                                ; preds = %10, %0
  %6 = load %struct.tabcreate_style*, %struct.tabcreate_style** %1, align 8
  %7 = getelementptr inbounds %struct.tabcreate_style, %struct.tabcreate_style* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = load i32, i32* @WC_TABCONTROLA, align 4
  %12 = load %struct.tabcreate_style*, %struct.tabcreate_style** %1, align 8
  %13 = getelementptr inbounds %struct.tabcreate_style, %struct.tabcreate_style* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @parent_wnd, align 4
  %16 = call i32 @CreateWindowA(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %14, i32 10, i32 10, i32 300, i32 100, i32 %15, i32* null, i32* null, i32 0)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @GWL_STYLE, align 4
  %19 = call i64 @GetWindowLongA(i32 %17, i32 %18)
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load %struct.tabcreate_style*, %struct.tabcreate_style** %1, align 8
  %22 = getelementptr inbounds %struct.tabcreate_style, %struct.tabcreate_style* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = load %struct.tabcreate_style*, %struct.tabcreate_style** %1, align 8
  %27 = getelementptr inbounds %struct.tabcreate_style, %struct.tabcreate_style* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @DestroyWindow(i32 %31)
  %33 = load %struct.tabcreate_style*, %struct.tabcreate_style** %1, align 8
  %34 = getelementptr inbounds %struct.tabcreate_style, %struct.tabcreate_style* %33, i32 1
  store %struct.tabcreate_style* %34, %struct.tabcreate_style** %1, align 8
  br label %5

35:                                               ; preds = %5
  ret void
}

declare dso_local i32 @CreateWindowA(i32, i8*, i64, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @GetWindowLongA(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
