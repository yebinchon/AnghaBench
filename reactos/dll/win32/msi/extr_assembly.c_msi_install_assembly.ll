; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_install_assembly.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_install_assembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32**, i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_15__ = type { i32* }

@INSTALLSTATE_LOCAL = common dso_local global i8* null, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@msidbAssemblyAttributesWin32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"no manifest\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"installing assembly %s\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to install assembly %s (0x%08x)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_install_assembly(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.TYPE_12__* @msi_get_loaded_feature(%struct.TYPE_11__* %21, i64 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %10, align 8
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** @INSTALLSTATE_LOCAL, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %115

42:                                               ; preds = %28
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @msidbAssemblyAttributesWin32, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = call i32 @WARN(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %55, i32* %3, align 4
  br label %115

56:                                               ; preds = %48
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_15__* @msi_get_loaded_file(%struct.TYPE_11__* %57, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %7, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %8, align 8
  br label %87

67:                                               ; preds = %42
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_15__* @msi_get_loaded_file(%struct.TYPE_11__* %68, i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %7, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @get_clr_version(i32* %78)
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %8, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %67
  %85 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %85, i32* %3, align 4
  br label %115

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86, %56
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @debugstr_w(i32* %88)
  %90 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i64 @IAssemblyCache_InstallAssembly(i32* %91, i32 0, i32* %92, i32* null)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @S_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @debugstr_w(i32* %98)
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %99, i64 %100)
  %102 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %102, i32* %3, align 4
  br label %115

103:                                              ; preds = %87
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %105 = icmp ne %struct.TYPE_12__* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i8*, i8** @INSTALLSTATE_LOCAL, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* @TRUE, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %110, %97, %84, %53, %40
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_12__* @msi_get_loaded_feature(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local %struct.TYPE_15__* @msi_get_loaded_file(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @get_clr_version(i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i64 @IAssemblyCache_InstallAssembly(i32*, i32, i32*, i32*) #1

declare dso_local i32 @ERR(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
