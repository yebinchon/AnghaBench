; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl80/extr_atl.c_test_ax_win.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl80/extr_atl.c_test_ax_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@test_ax_win.AtlAxWin80 = internal constant [11 x i8] c"AtlAxWin80\00", align 1
@test_ax_win.AtlAxWinLic80 = internal constant [14 x i8] c"AtlAxWinLic80\00", align 1
@test_ax_win.hinstance = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AtlAxWinInit failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"AtlAxWin80 has not registered\0A\00", align 1
@CS_GLOBALCLASS = common dso_local global i32 0, align 4
@CS_DBLCLKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"wcex.style %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"AtlAxWinLic80 has not registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ax_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ax_win() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = call i32 (...) @AtlAxWinInit()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 (i32, i8*, ...) @ok(i32 %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @GetModuleHandleA(i32* null)
  store i32 %6, i32* @test_ax_win.hinstance, align 4
  %7 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 8)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 8, i32* %8, align 4
  %9 = load i32, i32* @test_ax_win.hinstance, align 4
  %10 = call i32 @GetClassInfoExW(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_ax_win.AtlAxWin80, i64 0, i64 0), %struct.TYPE_4__* %2)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CS_GLOBALCLASS, align 4
  %16 = load i32, i32* @CS_DBLCLKS, align 4
  %17 = or i32 %15, %16
  %18 = icmp eq i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 8)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 8, i32* %24, align 4
  %25 = load i32, i32* @test_ax_win.hinstance, align 4
  %26 = call i32 @GetClassInfoExW(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_ax_win.AtlAxWinLic80, i64 0, i64 0), %struct.TYPE_4__* %2)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CS_GLOBALCLASS, align 4
  %32 = load i32, i32* @CS_DBLCLKS, align 4
  %33 = or i32 %31, %32
  %34 = icmp eq i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %37)
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
