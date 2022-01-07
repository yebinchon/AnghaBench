; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_patch_assembly.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_patch_assembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@E_NOT_SUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to copy file %s -> %s (%u)\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_8__*)* @patch_assembly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_assembly(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %15 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @msi_create_assembly_enum(i32* %16, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %23, i32* %4, align 4
  br label %106

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %101, %24
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @IAssemblyEnum_GetNextAssembly(i32* %26, i32* null, i32** %9, i32 0)
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %102

30:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @IAssemblyName_GetDisplayName(i32* %31, i32* null, i32* %13, i32 0)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @E_NOT_SUFFICIENT_BUFFER, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32* @msi_alloc(i32 %40)
  store i32* %41, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36, %30
  br label %102

44:                                               ; preds = %36
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i64 @IAssemblyName_GetDisplayName(i32* %45, i32* %46, i32* %13, i32 0)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i64 @FAILED(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @msi_free(i32* %52)
  br label %102

54:                                               ; preds = %44
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32* @msi_get_assembly_path(i32* %55, i32* %56)
  store i32* %57, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %92

59:                                               ; preds = %54
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = call i32 @CopyFileW(i32* %60, i32* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %59
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @debugstr_w(i32* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @debugstr_w(i32* %76)
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %77, i32 %78)
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @msi_free(i32* %80)
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @msi_free(i32* %82)
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @IAssemblyName_Release(i32* %84)
  br label %102

86:                                               ; preds = %59
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = call i32 @patch_file(i32* %87, %struct.TYPE_8__* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @msi_free(i32* %90)
  br label %92

92:                                               ; preds = %86, %54
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @msi_free(i32* %93)
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @IAssemblyName_Release(i32* %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @ERROR_SUCCESS, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %102

101:                                              ; preds = %92
  br label %25

102:                                              ; preds = %100, %69, %51, %43, %25
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @IAssemblyEnum_Release(i32* %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %22
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32* @msi_create_assembly_enum(i32*, i32) #1

declare dso_local i64 @IAssemblyEnum_GetNextAssembly(i32*, i32*, i32**, i32) #1

declare dso_local i64 @IAssemblyName_GetDisplayName(i32*, i32*, i32*, i32) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32* @msi_get_assembly_path(i32*, i32*) #1

declare dso_local i32 @CopyFileW(i32*, i32*, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @IAssemblyName_Release(i32*) #1

declare dso_local i32 @patch_file(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @IAssemblyEnum_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
