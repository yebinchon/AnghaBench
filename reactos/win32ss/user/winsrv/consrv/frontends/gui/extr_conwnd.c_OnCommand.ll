; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/gui/extr_conwnd.c_OnCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/gui/extr_conwnd.c_OnCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Scrolling is not handled yet\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Finding is not handled yet\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@WM_SYSCOMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64, i32)* @OnCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OnCommand(%struct.TYPE_8__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @TRUE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @SendMenuEvent(i32 %25, i64 %26)
  br label %57

28:                                               ; preds = %18, %3
  %29 = load i64, i64* %5, align 8
  switch i64 %29, label %54 [
    i64 132, label %30
    i64 134, label %33
    i64 131, label %36
    i64 129, label %39
    i64 130, label %42
    i64 133, label %44
    i64 135, label %46
    i64 128, label %50
  ]

30:                                               ; preds = %28
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 @Mark(%struct.TYPE_8__* %31)
  br label %56

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = call i32 @Copy(%struct.TYPE_8__* %34)
  br label %56

36:                                               ; preds = %28
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i32 @Paste(%struct.TYPE_8__* %37)
  br label %56

39:                                               ; preds = %28
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i32 @SelectAll(%struct.TYPE_8__* %40)
  br label %56

42:                                               ; preds = %28
  %43 = call i32 @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %56

44:                                               ; preds = %28
  %45 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %56

46:                                               ; preds = %28
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = load i64, i64* @TRUE, align 8
  %49 = call i32 @GuiConsoleShowConsoleProperties(%struct.TYPE_8__* %47, i64 %48)
  br label %56

50:                                               ; preds = %28
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = load i64, i64* @FALSE, align 8
  %53 = call i32 @GuiConsoleShowConsoleProperties(%struct.TYPE_8__* %51, i64 %52)
  br label %56

54:                                               ; preds = %28
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %54, %50, %46, %44, %42, %39, %36, %33, %30
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @WM_SYSCOMMAND, align 4
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @DefWindowProcW(i32 %63, i32 %64, i64 %65, i32 %66)
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %60, %57
  %69 = load i64, i64* %7, align 8
  ret i64 %69
}

declare dso_local i32 @SendMenuEvent(i32, i64) #1

declare dso_local i32 @Mark(%struct.TYPE_8__*) #1

declare dso_local i32 @Copy(%struct.TYPE_8__*) #1

declare dso_local i32 @Paste(%struct.TYPE_8__*) #1

declare dso_local i32 @SelectAll(%struct.TYPE_8__*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @GuiConsoleShowConsoleProperties(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @DefWindowProcW(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
