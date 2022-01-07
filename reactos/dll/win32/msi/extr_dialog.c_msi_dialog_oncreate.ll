; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_oncreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_oncreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_24__*, i64, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i64 }

@msi_dialog_oncreate.df = internal constant [14 x i8] c"DefaultUIFont\00", align 1
@msi_dialog_oncreate.dfv = internal constant [13 x i8] c"MS Shell Dlg\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@GWLP_USERDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"No record found for dialog %s\0A\00", align 1
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOREDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_23__*)* @msi_dialog_oncreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_dialog_oncreate(i32 %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %17 = call i32 (i8*, %struct.TYPE_20__*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %13, %struct.TYPE_24__* %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @GWLP_USERDATA, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = ptrtoint %struct.TYPE_20__* %23 to i32
  %25 = call i32 @SetWindowLongPtrW(i32 %21, i32 %22, i32 %24)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = call %struct.TYPE_22__* @msi_get_dialog_record(%struct.TYPE_20__* %26)
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %7, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %29 = icmp ne %struct.TYPE_22__* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @debugstr_w(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.TYPE_20__*
  %37 = call i32 (i8*, %struct.TYPE_20__*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %36)
  store i32 -1, i32* %3, align 4
  br label %122

38:                                               ; preds = %2
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @msi_dialog_get_sans_serif_height(i32 %41)
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = call i32 @msi_dialog_adjust_dialog_pos(%struct.TYPE_20__* %45, %struct.TYPE_22__* %46, %struct.TYPE_21__* %9)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %49 = call i32 @MSI_RecordGetInteger(%struct.TYPE_22__* %48, i32 6)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @msi_dup_property(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @msi_dialog_oncreate.df, i64 0, i64 0))
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %38
  %65 = call i64 @strdupW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @msi_dialog_oncreate.dfv, i64 0, i64 0))
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = call i32 @msiobj_release(i32* %74)
  store i32 -1, i32* %3, align 4
  br label %122

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %38
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %79, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %82 = call i32* @msi_get_deformatted_field(%struct.TYPE_24__* %80, %struct.TYPE_22__* %81, i32 7)
  store i32* %82, i32** %8, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @SetWindowTextW(i32 %83, i32* %84)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @msi_free(i32* %86)
  %88 = load i32, i32* %4, align 4
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %94, %96
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %99, %101
  %103 = load i32, i32* @SWP_NOACTIVATE, align 4
  %104 = load i32, i32* @SWP_NOZORDER, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SWP_NOREDRAW, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @SetWindowPos(i32 %88, i32 0, i64 %90, i64 %92, i64 %97, i64 %102, i32 %107)
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = call i32 @msi_dialog_build_font_list(%struct.TYPE_20__* %109)
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %112 = call i32 @msi_dialog_fill_controls(%struct.TYPE_20__* %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = call i32 @msi_dialog_evaluate_control_conditions(%struct.TYPE_20__* %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %117 = call i32 @MSI_RecordGetString(%struct.TYPE_22__* %116, i32 8)
  %118 = call i32 @msi_dialog_set_tab_order(%struct.TYPE_20__* %115, i32 %117)
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = call i32 @msiobj_release(i32* %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %77, %72, %30
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_20__*, ...) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @msi_get_dialog_record(%struct.TYPE_20__*) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @msi_dialog_get_sans_serif_height(i32) #1

declare dso_local i32 @msi_dialog_adjust_dialog_pos(%struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @msi_dup_property(i32, i8*) #1

declare dso_local i64 @strdupW(i8*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32* @msi_get_deformatted_field(%struct.TYPE_24__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @SetWindowTextW(i32, i32*) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @SetWindowPos(i32, i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @msi_dialog_build_font_list(%struct.TYPE_20__*) #1

declare dso_local i32 @msi_dialog_fill_controls(%struct.TYPE_20__*) #1

declare dso_local i32 @msi_dialog_evaluate_control_conditions(%struct.TYPE_20__*) #1

declare dso_local i32 @msi_dialog_set_tab_order(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
