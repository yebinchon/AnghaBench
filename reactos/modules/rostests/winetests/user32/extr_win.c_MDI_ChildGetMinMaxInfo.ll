; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_MDI_ChildGetMinMaxInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_MDI_ChildGetMinMaxInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }

@GWL_STYLE = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"max rect %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_12__*)* @MDI_ChildGetMinMaxInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MDI_ChildGetMinMaxInfo(i32 %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GetClientRect(i32 %8, %struct.TYPE_11__* %7)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GWL_STYLE, align 4
  %12 = call i32 @GetWindowLongA(i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GWL_EXSTYLE, align 4
  %15 = call i32 @GetWindowLongA(i32 %13, i32 %14)
  %16 = call i32 @AdjustWindowRectEx(%struct.TYPE_11__* %7, i32 %12, i32 0, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %21, %18
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %25
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i64 %42, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %7)
  %52 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %51)
  ret void
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @AdjustWindowRectEx(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @GetWindowLongA(i32, i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
