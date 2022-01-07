; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_update_counter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_update_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@urlmon_instance = common dso_local global i32 0, align 4
@IDS_AXINSTALL_INSTALL = common dso_local global i32 0, align 4
@ID_AXINSTALL_INSTALL_BTN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDS_AXINSTALL_INSTALLN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @update_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_counter(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca [100 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @KillTimer(i32 %14, i32 %17)
  %19 = load i32, i32* @urlmon_instance, align 4
  %20 = load i32, i32* @IDS_AXINSTALL_INSTALL, align 4
  %21 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = call i32 @LoadStringW(i32 %19, i32 %20, i32* %21, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ID_AXINSTALL_INSTALL_BTN, align 4
  %27 = call i32 @GetDlgItem(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @EnableWindow(i32 %28, i32 %29)
  br label %44

31:                                               ; preds = %2
  %32 = load i32, i32* @urlmon_instance, align 4
  %33 = load i32, i32* @IDS_AXINSTALL_INSTALLN, align 4
  %34 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %35 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = call i32 @LoadStringW(i32 %32, i32 %33, i32* %34, i32 %36)
  %38 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %39 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @sprintfW(i32* %38, i32* %39, i64 %42)
  br label %44

44:                                               ; preds = %31, %13
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ID_AXINSTALL_INSTALL_BTN, align 4
  %47 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %48 = call i32 @SetDlgItemTextW(i32 %45, i32 %46, i32* %47)
  ret void
}

declare dso_local i32 @KillTimer(i32, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @sprintfW(i32*, i32*, i64) #1

declare dso_local i32 @SetDlgItemTextW(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
