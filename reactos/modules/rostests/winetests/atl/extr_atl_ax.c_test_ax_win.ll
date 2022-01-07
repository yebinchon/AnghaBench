; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl/extr_atl_ax.c_test_ax_win.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl/extr_atl_ax.c_test_ax_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@test_ax_win.AtlAxWin = internal constant [9 x i8] c"AtlAxWin\00", align 1
@test_ax_win.hinstance = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AtlAxWinInit failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"AtlAxWin has not registered\0A\00", align 1
@CS_GLOBALCLASS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"wcex.style %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ax_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ax_win() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = call i32 (...) @AtlAxWinInit()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 (i32, i8*, ...) @ok(i32 %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @GetModuleHandleA(i32* null)
  store i32 %6, i32* @test_ax_win.hinstance, align 4
  %7 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 16)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 16, i32* %8, align 8
  %9 = load i32, i32* @test_ax_win.hinstance, align 4
  %10 = call i32 @GetClassInfoExW(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_ax_win.AtlAxWin, i64 0, i64 0), %struct.TYPE_4__* %2)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CS_GLOBALCLASS, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %19)
  ret void
}

declare dso_local i32 @AtlAxWinInit(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @GetClassInfoExW(i32, i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
