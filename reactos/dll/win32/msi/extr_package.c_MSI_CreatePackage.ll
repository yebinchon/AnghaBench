; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_MSI_CreatePackage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_MSI_CreatePackage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, i32, i8*, i8*, i32, i32*, i32* }
%struct.TYPE_16__ = type { i32, i32 }

@MSI_CreatePackage.fmtW = internal constant [3 x i8] c"%u\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@MSI_NULL_INTEGER = common dso_local global i32 0, align 4
@szProductCode = common dso_local global i32 0, align 4
@gUILevel = common dso_local global i32 0, align 4
@INSTALLUILEVEL_MASK = common dso_local global i32 0, align 4
@szUILevel = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@msidbSumInfoSourceTypeAdminImage = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @MSI_CreatePackage(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca [11 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %10)
  %12 = call %struct.TYPE_15__* (...) @msi_alloc_package()
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %96

15:                                               ; preds = %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = call i32 @msiobj_addref(i32* %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %21, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 10
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 9
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @strdupW(i32 %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @strdupW(i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = call i32 @create_temp_property_table(%struct.TYPE_15__* %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = call i32 @msi_clone_properties(%struct.TYPE_16__* %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = call i32 @msi_adjust_privilege_properties(%struct.TYPE_15__* %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = load i32, i32* @szProductCode, align 4
  %53 = call i32 @msi_dup_property(%struct.TYPE_16__* %51, i32 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = call i32 @set_installer_properties(%struct.TYPE_15__* %56)
  %58 = load i32, i32* @gUILevel, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %62 = load i32, i32* @gUILevel, align 4
  %63 = load i32, i32* @INSTALLUILEVEL_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @sprintfW(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @MSI_CreatePackage.fmtW, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = load i32, i32* @szUILevel, align 4
  %70 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @msi_set_property(%struct.TYPE_16__* %68, i32 %69, i8* %70, i32 %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = call i32 @msi_load_suminfo_properties(%struct.TYPE_15__* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @ERROR_SUCCESS, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %15
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  %81 = call i32 @msiobj_release(i32* %80)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %98

82:                                               ; preds = %15
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @msidbSumInfoSourceTypeAdminImage, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = call i32 @msi_load_admin_properties(%struct.TYPE_15__* %90)
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %92, %2
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %3, align 8
  br label %98

98:                                               ; preds = %96, %78
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %99
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @msi_alloc_package(...) #1

declare dso_local i32 @msiobj_addref(i32*) #1

declare dso_local i8* @strdupW(i32) #1

declare dso_local i32 @create_temp_property_table(%struct.TYPE_15__*) #1

declare dso_local i32 @msi_clone_properties(%struct.TYPE_16__*) #1

declare dso_local i32 @msi_adjust_privilege_properties(%struct.TYPE_15__*) #1

declare dso_local i32 @msi_dup_property(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @set_installer_properties(%struct.TYPE_15__*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @msi_set_property(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i32 @msi_load_suminfo_properties(%struct.TYPE_15__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32 @msi_load_admin_properties(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
