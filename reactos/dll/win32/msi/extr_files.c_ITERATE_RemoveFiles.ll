; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_ITERATE_RemoveFiles.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_ITERATE_RemoveFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Skipping removal due to install mode\0A\00", align 1
@msidbComponentAttributesPermanent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"permanent component, not removing file\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"directory property has no value\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Deleting misc file: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Removing misc directory: %s\0A\00", align 1
@INSTALLMESSAGE_ACTIONDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @ITERATE_RemoveFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ITERATE_RemoveFiles(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %6, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %18 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = call i32* @MSI_RecordGetString(%struct.TYPE_20__* %19, i32 2)
  store i32* %20, i32** %9, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = call i32* @MSI_RecordGetString(%struct.TYPE_20__* %21, i32 4)
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = call i32 @MSI_RecordGetInteger(%struct.TYPE_20__* %23, i32 5)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call %struct.TYPE_22__* @msi_get_loaded_component(%struct.TYPE_21__* %25, i32* %26)
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %7, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %29 = icmp ne %struct.TYPE_22__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %31, i32* %3, align 4
  br label %152

32:                                               ; preds = %2
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %35 = call i32 @msi_get_component_action(%struct.TYPE_21__* %33, %struct.TYPE_22__* %34)
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @verify_comp_for_removal(%struct.TYPE_22__* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %152

45:                                               ; preds = %32
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = icmp ne %struct.TYPE_19__* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %58, i32* %3, align 4
  br label %152

59:                                               ; preds = %50, %45
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @msidbComponentAttributesPermanent, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %68, i32* %3, align 4
  br label %152

69:                                               ; preds = %59
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = call i32* @msi_dup_property(i32 %72, i32* %73)
  store i32* %74, i32** %12, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %79, i32* %3, align 4
  br label %152

80:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = call i32* @MSI_RecordGetString(%struct.TYPE_20__* %81, i32 3)
  %83 = call i32* @strdupW(i32* %82)
  store i32* %83, i32** %14, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @msi_reduce_to_long_filename(i32* %86)
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @lstrlenW(i32* %88)
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @lstrlenW(i32* %91)
  %93 = add nsw i32 %92, 2
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i32* @msi_alloc(i32 %99)
  store i32* %100, i32** %13, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %90
  %104 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %104, i32* %16, align 4
  br label %129

105:                                              ; preds = %90
  %106 = load i32*, i32** %14, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load i32*, i32** %13, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @lstrcpyW(i32* %109, i32* %110)
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @PathAddBackslashW(i32* %112)
  %114 = load i32*, i32** %13, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @lstrcatW(i32* %114, i32* %115)
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @debugstr_w(i32* %117)
  %119 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @DeleteFileW(i32* %120)
  br label %128

122:                                              ; preds = %105
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @debugstr_w(i32* %123)
  %125 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @RemoveDirectoryW(i32* %126)
  br label %128

128:                                              ; preds = %122, %108
  br label %129

129:                                              ; preds = %128, %103
  %130 = call %struct.TYPE_20__* @MSI_CreateRecord(i32 9)
  store %struct.TYPE_20__* %130, %struct.TYPE_20__** %8, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = call i32* @MSI_RecordGetString(%struct.TYPE_20__* %132, i32 1)
  %134 = call i32 @MSI_RecordSetStringW(%struct.TYPE_20__* %131, i32 1, i32* %133)
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @MSI_RecordSetStringW(%struct.TYPE_20__* %135, i32 9, i32* %136)
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %139 = load i32, i32* @INSTALLMESSAGE_ACTIONDATA, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %141 = call i32 @MSI_ProcessMessage(%struct.TYPE_21__* %138, i32 %139, %struct.TYPE_20__* %140)
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = call i32 @msiobj_release(i32* %143)
  %145 = load i32*, i32** %14, align 8
  %146 = call i32 @msi_free(i32* %145)
  %147 = load i32*, i32** %13, align 8
  %148 = call i32 @msi_free(i32* %147)
  %149 = load i32*, i32** %12, align 8
  %150 = call i32 @msi_free(i32* %149)
  %151 = load i32, i32* %16, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %129, %77, %66, %57, %42, %30
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32* @MSI_RecordGetString(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_22__* @msi_get_loaded_component(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @msi_get_component_action(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @verify_comp_for_removal(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32* @msi_dup_property(i32, i32*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32* @strdupW(i32*) #1

declare dso_local i32 @msi_reduce_to_long_filename(i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @lstrcpyW(i32*, i32*) #1

declare dso_local i32 @PathAddBackslashW(i32*) #1

declare dso_local i32 @lstrcatW(i32*, i32*) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @DeleteFileW(i32*) #1

declare dso_local i32 @RemoveDirectoryW(i32*) #1

declare dso_local %struct.TYPE_20__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @MSI_ProcessMessage(%struct.TYPE_21__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32 @msi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
