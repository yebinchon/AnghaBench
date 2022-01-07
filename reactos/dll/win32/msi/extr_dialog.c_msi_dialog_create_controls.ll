; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_create_controls.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_create_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32*)*, i32 }

@NUM_CONTROL_TYPES = common dso_local global i64 0, align 8
@msi_dialog_handler = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"no handler for element type %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @msi_dialog_create_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_dialog_create_controls(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @MSI_RecordGetString(i32* %9, i32 3)
  store i32 %10, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @NUM_CONTROL_TYPES, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msi_dialog_handler, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @strcmpiW(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %7, align 8
  br label %11

29:                                               ; preds = %24, %11
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @NUM_CONTROL_TYPES, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msi_dialog_handler, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %37, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 %38(i32* %39, i32* %40)
  br label %46

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @debugstr_w(i32 %43)
  %45 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %33
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  ret i64 %47
}

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @strcmpiW(i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
