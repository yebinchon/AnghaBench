; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_rebar.c_register_parent_wnd_class.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_rebar.c_register_parent_wnd_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32*, i32, i32, i32*, i32, i64, i64 }

@CS_HREDRAW = common dso_local global i32 0, align 4
@CS_VREDRAW = common dso_local global i32 0, align 4
@IDC_IBEAM = common dso_local global i64 0, align 8
@COLOR_WINDOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MyTestWnd\00", align 1
@parent_wndproc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @register_parent_wnd_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_parent_wnd_class() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = load i32, i32* @CS_HREDRAW, align 4
  %3 = load i32, i32* @CS_VREDRAW, align 4
  %4 = or i32 %2, %3
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 9
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 8
  store i64 0, i64* %7, align 8
  %8 = call i32 @GetModuleHandleA(i32* null)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  store i32* null, i32** %10, align 8
  %11 = load i64, i64* @IDC_IBEAM, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @LoadCursorA(i32* null, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @COLOR_WINDOW, align 4
  %16 = call i32 @GetSysColorBrush(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @parent_wndproc, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = call i32 @RegisterClassA(%struct.TYPE_3__* %1)
  ret i32 %22
}

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @LoadCursorA(i32*, i32) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @RegisterClassA(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
