; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_font.c_ITERATE_RegisterFonts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_font.c_ITERATE_RegisterFonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"unable to find file %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to find component %s\0A\00", align 1
@INSTALLSTATE_LOCAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"component not scheduled for installation %s\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@regfont1 = common dso_local global i32 0, align 4
@regfont2 = common dso_local global i32 0, align 4
@INSTALLMESSAGE_ACTIONDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*)* @ITERATE_RegisterFonts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ITERATE_RegisterFonts(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = call i32 @MSI_RecordGetString(%struct.TYPE_16__* %17, i32 1)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.TYPE_17__* @msi_get_loaded_file(i32* %19, i32 %20)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %9, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = icmp ne %struct.TYPE_17__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @debugstr_w(i32 %25)
  %27 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %28, i32* %3, align 4
  br label %135

29:                                               ; preds = %2
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_18__* @msi_get_loaded_component(i32* %30, i32 %35)
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %10, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %38 = icmp ne %struct.TYPE_18__* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %29
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @debugstr_w(i32 %44)
  %46 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %47, i32* %3, align 4
  br label %135

48:                                               ; preds = %29
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %51 = call i64 @msi_get_component_action(i32* %49, %struct.TYPE_18__* %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @INSTALLSTATE_LOCAL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %48
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @debugstr_w(i32 %62)
  %64 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %65, i32* %3, align 4
  br label %135

66:                                               ; preds = %48
  %67 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %68 = load i32, i32* @regfont1, align 4
  %69 = call i32 @RegCreateKeyW(i32 %67, i32 %68, i32* %11)
  %70 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %71 = load i32, i32* @regfont2, align 4
  %72 = call i32 @RegCreateKeyW(i32 %70, i32 %71, i32* %12)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = call i64 @MSI_RecordIsNull(%struct.TYPE_16__* %73, i32 2)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @font_name_from_file(i32 %79)
  store i64 %80, i64* %7, align 8
  br label %84

81:                                               ; preds = %66
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = call i64 @msi_dup_record_field(%struct.TYPE_16__* %82, i32 2)
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @msi_reg_set_val_str(i32 %88, i64 %89, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @msi_reg_set_val_str(i32 %94, i64 %95, i32 %98)
  br label %100

100:                                              ; preds = %87, %84
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @msi_free(i64 %101)
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @RegCloseKey(i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @RegCloseKey(i32 %105)
  %107 = call %struct.TYPE_16__* @MSI_CreateRecord(i32 1)
  store %struct.TYPE_16__* %107, %struct.TYPE_16__** %13, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @strdupW(i32 %110)
  store i64 %111, i64* %14, align 8
  %112 = load i64, i64* %14, align 8
  %113 = call i64 @strrchrW(i64 %112, i8 signext 92)
  store i64 %113, i64* %15, align 8
  %114 = load i64, i64* %15, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %100
  %117 = load i64, i64* %15, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %15, align 8
  br label %121

119:                                              ; preds = %100
  %120 = load i64, i64* %14, align 8
  store i64 %120, i64* %15, align 8
  br label %121

121:                                              ; preds = %119, %116
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %123 = load i64, i64* %15, align 8
  %124 = call i32 @MSI_RecordSetStringW(%struct.TYPE_16__* %122, i32 1, i64 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* @INSTALLMESSAGE_ACTIONDATA, align 4
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %128 = call i32 @MSI_ProcessMessage(i32* %125, i32 %126, %struct.TYPE_16__* %127)
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = call i32 @msiobj_release(i32* %130)
  %132 = load i64, i64* %14, align 8
  %133 = call i32 @msi_free(i64 %132)
  %134 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %121, %59, %39, %24
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @msi_get_loaded_file(i32*, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local %struct.TYPE_18__* @msi_get_loaded_component(i32*, i32) #1

declare dso_local i64 @msi_get_component_action(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @RegCreateKeyW(i32, i32, i32*) #1

declare dso_local i64 @MSI_RecordIsNull(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @font_name_from_file(i32) #1

declare dso_local i64 @msi_dup_record_field(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @msi_reg_set_val_str(i32, i64, i32) #1

declare dso_local i32 @msi_free(i64) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local %struct.TYPE_16__* @MSI_CreateRecord(i32) #1

declare dso_local i64 @strdupW(i32) #1

declare dso_local i64 @strrchrW(i64, i8 signext) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @MSI_ProcessMessage(i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
