; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_oncommand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_oncommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)* }

@.str = private unnamed_addr constant [13 x i8] c"%p %p %08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32)* @msi_dialog_oncommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_dialog_oncommand(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %8, i32 %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %25 [
    i32 1, label %13
    i32 2, label %19
  ]

13:                                               ; preds = %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_13__* @msi_dialog_find_control(%struct.TYPE_12__* %14, i32 %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %7, align 8
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_13__* @msi_dialog_find_control(%struct.TYPE_12__* %20, i32 %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %7, align 8
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_13__* @msi_dialog_find_control_by_hwnd(%struct.TYPE_12__* %26, i32 %27)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %7, align 8
  br label %29

29:                                               ; preds = %25, %19, %13
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 %40(%struct.TYPE_12__* %41, %struct.TYPE_13__* %42, i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = call i32 @msi_dialog_evaluate_control_conditions(%struct.TYPE_12__* %45)
  br label %47

47:                                               ; preds = %37, %32
  br label %48

48:                                               ; preds = %47, %29
  ret i32 0
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @msi_dialog_find_control(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_13__* @msi_dialog_find_control_by_hwnd(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @msi_dialog_evaluate_control_conditions(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
