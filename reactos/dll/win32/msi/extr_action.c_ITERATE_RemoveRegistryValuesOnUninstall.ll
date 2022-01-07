; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ITERATE_RemoveRegistryValuesOnUninstall.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ITERATE_RemoveRegistryValuesOnUninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@REG_PROGRESS_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@INSTALLSTATE_ABSENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"component not scheduled for removal %s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@INSTALLMESSAGE_ACTIONDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*)* @ITERATE_RemoveRegistryValuesOnUninstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ITERATE_RemoveRegistryValuesOnUninstall(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %6, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %16, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @REG_PROGRESS_VALUE, align 4
  %24 = call i32 @msi_ui_progress(i32* %22, i32 2, i32 %23, i32 0, i32 0)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = call i8* @MSI_RecordGetString(%struct.TYPE_14__* %25, i32 6)
  store i8* %26, i8** %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call %struct.TYPE_15__* @msi_get_loaded_component(i32* %27, i8* %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %14, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %33, i32* %3, align 4
  br label %163

34:                                               ; preds = %2
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %37 = call i64 @msi_get_component_action(i32* %35, %struct.TYPE_15__* %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @INSTALLSTATE_ABSENT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @debugstr_w(i8* %46)
  %48 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %49, i32* %3, align 4
  br label %163

50:                                               ; preds = %34
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = call i8* @MSI_RecordGetString(%struct.TYPE_14__* %51, i32 4)
  store i8* %52, i8** %8, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = call i64 @MSI_RecordIsNull(%struct.TYPE_14__* %53, i32 5)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %92

59:                                               ; preds = %56
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 43
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %71, i32* %3, align 4
  br label %163

72:                                               ; preds = %65, %59
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 45
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 42
  br i1 %83, label %84, label %91

84:                                               ; preds = %78, %72
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i64, i64* @TRUE, align 8
  store i64 %90, i64* %16, align 8
  store i8* null, i8** %8, align 8
  br label %91

91:                                               ; preds = %89, %84, %78
  br label %92

92:                                               ; preds = %91, %56, %50
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = call i32 @MSI_RecordGetInteger(%struct.TYPE_14__* %93, i32 2)
  store i32 %94, i32* %19, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = call i8* @MSI_RecordGetString(%struct.TYPE_14__* %95, i32 3)
  store i8* %96, i8** %9, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %19, align 4
  %99 = call i8* @get_root_key(i32* %97, i32 %98, i32* %17)
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %92
  %103 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %103, i32* %3, align 4
  br label %163

104:                                              ; preds = %92
  %105 = load i32*, i32** %6, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @deformat_string(i32* %105, i8* %106, i8** %11)
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @strlenW(i8* %108)
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @strlenW(i8* %110)
  %112 = add nsw i32 %109, %111
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i8* @msi_alloc(i32 %117)
  store i8* %118, i8** %13, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @strcpyW(i8* %119, i8* %120)
  %122 = load i8*, i8** %13, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @strcatW(i8* %122, i8* %123)
  %125 = load i32*, i32** %6, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @deformat_string(i32* %125, i8* %126, i8** %12)
  %128 = load i64, i64* %16, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %104
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %132 = load i32, i32* %17, align 4
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @delete_tree(%struct.TYPE_15__* %131, i32 %132, i8* %133)
  br label %141

135:                                              ; preds = %104
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %137 = load i32, i32* %17, align 4
  %138 = load i8*, i8** %11, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @delete_value(%struct.TYPE_15__* %136, i32 %137, i8* %138, i8* %139)
  br label %141

141:                                              ; preds = %135, %130
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @msi_free(i8* %142)
  %144 = call %struct.TYPE_14__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_14__* %144, %struct.TYPE_14__** %15, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = call i32 @MSI_RecordSetStringW(%struct.TYPE_14__* %145, i32 1, i8* %146)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @MSI_RecordSetStringW(%struct.TYPE_14__* %148, i32 2, i8* %149)
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* @INSTALLMESSAGE_ACTIONDATA, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %154 = call i32 @MSI_ProcessMessage(i32* %151, i32 %152, %struct.TYPE_14__* %153)
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = call i32 @msiobj_release(i32* %156)
  %158 = load i8*, i8** %13, align 8
  %159 = call i32 @msi_free(i8* %158)
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 @msi_free(i8* %160)
  %162 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %141, %102, %70, %45, %32
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @msi_ui_progress(i32*, i32, i32, i32, i32) #1

declare dso_local i8* @MSI_RecordGetString(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_15__* @msi_get_loaded_component(i32*, i8*) #1

declare dso_local i64 @msi_get_component_action(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i64 @MSI_RecordIsNull(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_14__*, i32) #1

declare dso_local i8* @get_root_key(i32*, i32, i32*) #1

declare dso_local i32 @deformat_string(i32*, i8*, i8**) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

declare dso_local i32 @delete_tree(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @delete_value(%struct.TYPE_15__*, i32, i8*, i8*) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local %struct.TYPE_14__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @MSI_ProcessMessage(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
