; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_add_control.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_add_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@szScrollableText = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s, %s, %08x, %s, %08x\0A\00", align 1
@msidbControlAttributesVisible = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@msidbControlAttributesEnabled = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@msidbControlAttributesSunken = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*, i32*, i32)* @msi_dialog_add_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @msi_dialog_add_control(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @MSI_RecordGetString(i32* %14, i32 2)
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @MSI_RecordGetString(i32* %16, i32 3)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @MSI_RecordGetInteger(i32* %18, i32 8)
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* @szScrollableText, align 4
  %22 = call i64 @strcmpW(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @MSI_RecordGetString(i32* %25, i32 10)
  store i32* %26, i32** %10, align 8
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @debugstr_w(i32* %28)
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @debugstr_w(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @debugstr_w(i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %32, i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @msidbControlAttributesVisible, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load i32, i32* @WS_VISIBLE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %27
  %46 = load i32, i32* %9, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* @msidbControlAttributesEnabled, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @WS_DISABLED, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %45
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @msidbControlAttributesSunken, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @dialog_map_events(%struct.TYPE_5__* %65, i32* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32* @dialog_create_window(%struct.TYPE_5__* %68, i32* %69, i32 %70, i32* %71, i32* %72, i32* %73, i32 %74, i32 %77)
  ret i32* %78
}

declare dso_local i32* @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i64 @strcmpW(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @dialog_map_events(%struct.TYPE_5__*, i32*) #1

declare dso_local i32* @dialog_create_window(%struct.TYPE_5__*, i32*, i32, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
