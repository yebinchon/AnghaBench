; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_activate_fs_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_activate_fs_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@Globals = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GW_CHILD = common dso_local global i32 0, align 4
@GWLP_USERDATA = common dso_local global i32 0, align 4
@WM_MDIACTIVATE = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @activate_fs_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_fs_window(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 0), align 8
  %7 = load i32, i32* @GW_CHILD, align 4
  %8 = call i64 @GetNextWindow(i64 %6, i32 %7)
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @GWLP_USERDATA, align 4
  %15 = call i64 @GetWindowLongPtrW(i64 %13, i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @lstrcmpiW(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %19
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 0), align 8
  %29 = load i32, i32* @WM_MDIACTIVATE, align 4
  %30 = load i64, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @SendMessageW(i64 %28, i32 %29, i32 %31, i32 0)
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @IsIconic(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* @SW_SHOWNORMAL, align 4
  %39 = call i32 @ShowWindow(i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %27
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %2, align 4
  br label %50

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42, %12
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* @GW_HWNDNEXT, align 4
  %47 = call i64 @GetNextWindow(i64 %45, i32 %46)
  store i64 %47, i64* %4, align 8
  br label %9

48:                                               ; preds = %9
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @GetNextWindow(i64, i32) #1

declare dso_local i64 @GetWindowLongPtrW(i64, i32) #1

declare dso_local i32 @lstrcmpiW(i32, i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i64 @IsIconic(i64) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
