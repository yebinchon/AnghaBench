; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_activate_drive_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_activate_drive_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_MAX_DRIVE = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GW_CHILD = common dso_local global i32 0, align 4
@GWLP_USERDATA = common dso_local global i32 0, align 4
@WM_MDIACTIVATE = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @activate_drive_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_drive_window(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @_MAX_DRIVE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @_MAX_DRIVE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @_wsplitpath(i32 %17, i32* %13, i32 0, i32 0, i32 0)
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 0), align 8
  %20 = load i32, i32* @GW_CHILD, align 4
  %21 = call i64 @GetNextWindow(i64 %19, i32 %20)
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %57, %1
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @GWLP_USERDATA, align 4
  %28 = call i64 @GetWindowLongPtrW(i64 %26, i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %8, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @_wsplitpath(i32 %36, i32* %16, i32 0, i32 0, i32 0)
  %38 = call i32 @lstrcmpiW(i32* %16, i32* %13)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Globals, i32 0, i32 0), align 8
  %42 = load i32, i32* @WM_MDIACTIVATE, align 4
  %43 = load i64, i64* %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @SendMessageW(i64 %41, i32 %42, i32 %44, i32 0)
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @IsIconic(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* @SW_SHOWNORMAL, align 4
  %52 = call i32 @ShowWindow(i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %40
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55, %25
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* @GW_HWNDNEXT, align 4
  %60 = call i64 @GetNextWindow(i64 %58, i32 %59)
  store i64 %60, i64* %7, align 8
  br label %22

61:                                               ; preds = %22
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %61, %53
  %64 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_wsplitpath(i32, i32*, i32, i32, i32) #2

declare dso_local i64 @GetNextWindow(i64, i32) #2

declare dso_local i64 @GetWindowLongPtrW(i64, i32) #2

declare dso_local i32 @lstrcmpiW(i32*, i32*) #2

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #2

declare dso_local i64 @IsIconic(i64) #2

declare dso_local i32 @ShowWindow(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
