; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_ebrowser.c_setup_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_ebrowser.c_setup_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@setup_window.ebtestW = internal constant [7 x i8] c"ebtest\00", align 1
@DefWindowProcW = common dso_local global i32 0, align 4
@hwnd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to create window for tests.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_window() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 @ZeroMemory(%struct.TYPE_4__* %1, i32 16)
  %3 = load i32, i32* @DefWindowProcW, align 4
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %3, i32* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @setup_window.ebtestW, i64 0, i64 0), i8** %5, align 8
  %6 = call i32 @RegisterClassW(%struct.TYPE_4__* %1)
  %7 = call i32* @CreateWindowExW(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @setup_window.ebtestW, i64 0, i64 0), i32* null, i32 0, i32 0, i32 0, i32 500, i32 500, i32* null, i32 0, i32 0, i32* null)
  store i32* %7, i32** @hwnd, align 8
  %8 = load i32*, i32** @hwnd, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @RegisterClassW(%struct.TYPE_4__*) #1

declare dso_local i32* @CreateWindowExW(i32, i8*, i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
