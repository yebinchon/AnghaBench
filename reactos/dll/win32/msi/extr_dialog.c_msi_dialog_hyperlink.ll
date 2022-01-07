; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_hyperlink.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_hyperlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64*, i8*, i8*, i64 }

@WS_CHILD = common dso_local global i32 0, align 4
@WS_TABSTOP = common dso_local global i32 0, align 4
@WS_GROUP = common dso_local global i32 0, align 4
@WC_LINK = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@msi_dialog_hyperlink_handler = common dso_local global i32 0, align 4
@LIF_ITEMINDEX = common dso_local global i32 0, align 4
@LIF_STATE = common dso_local global i32 0, align 4
@LIF_URL = common dso_local global i32 0, align 4
@LIS_ENABLED = common dso_local global i8* null, align 8
@L_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@LM_SETITEM = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @msi_dialog_hyperlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_dialog_hyperlink(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @WS_CHILD, align 4
  %12 = load i32, i32* @WS_TABSTOP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WS_GROUP, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @MSI_RecordGetString(i32* %16, i32 10)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @strlenW(i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @WC_LINK, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.TYPE_4__* @msi_dialog_add_control(i32* %20, i32* %21, i32 %22, i32 %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %2
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @MSI_RecordGetInteger(i32* %30, i32 8)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @msi_dialog_hyperlink_handler, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @LIF_ITEMINDEX, align 4
  %38 = load i32, i32* @LIF_STATE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @LIF_URL, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load i8*, i8** @LIS_ENABLED, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i8* %44, i8** %45, align 8
  %46 = load i8*, i8** @LIS_ENABLED, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @L_MAX_URL_LENGTH, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %29
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @strcpyW(i64* %53, i32* %54)
  br label %60

56:                                               ; preds = %29
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @LM_SETITEM, align 4
  %65 = ptrtoint %struct.TYPE_5__* %10 to i32
  %66 = call i32 @SendMessageW(i32 %63, i32 %64, i32 0, i32 %65)
  %67 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %27
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32* @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local %struct.TYPE_4__* @msi_dialog_add_control(i32*, i32*, i32, i32) #1

declare dso_local i32 @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i32 @strcpyW(i64*, i32*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
