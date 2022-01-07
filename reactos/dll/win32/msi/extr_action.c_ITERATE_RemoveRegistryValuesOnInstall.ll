; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ITERATE_RemoveRegistryValuesOnInstall.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ITERATE_RemoveRegistryValuesOnInstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@INSTALLSTATE_LOCAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"component not scheduled for installation %s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@INSTALLMESSAGE_ACTIONDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*)* @ITERATE_RemoveRegistryValuesOnInstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ITERATE_RemoveRegistryValuesOnInstall(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %6, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %16, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = call i8* @MSI_RecordGetString(%struct.TYPE_13__* %22, i32 5)
  store i8* %23, i8** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct.TYPE_14__* @msi_get_loaded_component(i32* %24, i8* %25)
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %14, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %30, i32* %3, align 4
  br label %136

31:                                               ; preds = %2
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %34 = call i64 @msi_get_component_action(i32* %32, %struct.TYPE_14__* %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INSTALLSTATE_LOCAL, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @debugstr_w(i8* %43)
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %46, i32* %3, align 4
  br label %136

47:                                               ; preds = %31
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = call i8* @MSI_RecordGetString(%struct.TYPE_13__* %48, i32 4)
  store i8* %49, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 45
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %16, align 8
  store i8* null, i8** %8, align 8
  br label %64

64:                                               ; preds = %62, %57, %51
  br label %65

65:                                               ; preds = %64, %47
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = call i32 @MSI_RecordGetInteger(%struct.TYPE_13__* %66, i32 2)
  store i32 %67, i32* %19, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = call i8* @MSI_RecordGetString(%struct.TYPE_13__* %68, i32 3)
  store i8* %69, i8** %9, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %19, align 4
  %72 = call i8* @get_root_key(i32* %70, i32 %71, i32* %17)
  store i8* %72, i8** %10, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %76, i32* %3, align 4
  br label %136

77:                                               ; preds = %65
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @deformat_string(i32* %78, i8* %79, i8** %11)
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @strlenW(i8* %81)
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @strlenW(i8* %83)
  %85 = add nsw i32 %82, %84
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i8* @msi_alloc(i32 %90)
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @strcpyW(i8* %92, i8* %93)
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @strcatW(i8* %95, i8* %96)
  %98 = load i32*, i32** %6, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @deformat_string(i32* %98, i8* %99, i8** %12)
  %101 = load i64, i64* %16, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %77
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %105 = load i32, i32* %17, align 4
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @delete_tree(%struct.TYPE_14__* %104, i32 %105, i8* %106)
  br label %114

108:                                              ; preds = %77
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %110 = load i32, i32* %17, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @delete_value(%struct.TYPE_14__* %109, i32 %110, i8* %111, i8* %112)
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @msi_free(i8* %115)
  %117 = call %struct.TYPE_13__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %15, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @MSI_RecordSetStringW(%struct.TYPE_13__* %118, i32 1, i8* %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 @MSI_RecordSetStringW(%struct.TYPE_13__* %121, i32 2, i8* %122)
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* @INSTALLMESSAGE_ACTIONDATA, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %127 = call i32 @MSI_ProcessMessage(i32* %124, i32 %125, %struct.TYPE_13__* %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = call i32 @msiobj_release(i32* %129)
  %131 = load i8*, i8** %13, align 8
  %132 = call i32 @msi_free(i8* %131)
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @msi_free(i8* %133)
  %135 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %114, %75, %42, %29
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i8* @MSI_RecordGetString(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_14__* @msi_get_loaded_component(i32*, i8*) #1

declare dso_local i64 @msi_get_component_action(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @get_root_key(i32*, i32, i32*) #1

declare dso_local i32 @deformat_string(i32*, i8*, i8**) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

declare dso_local i32 @delete_tree(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @delete_value(%struct.TYPE_14__*, i32, i8*, i8*) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local %struct.TYPE_13__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @MSI_ProcessMessage(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
