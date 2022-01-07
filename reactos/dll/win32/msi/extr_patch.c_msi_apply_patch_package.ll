; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_msi_apply_patch_package.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_msi_apply_patch_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i8*, i32 }

@msi_apply_patch_package.dotmsp = internal constant [5 x i8] c".msp\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%p, %s\0A\00", align 1
@MSIDBOPEN_READONLY = common dso_local global i64 0, align 8
@MSIDBOPEN_PATCHFILE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to open patch collection %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"patch not applicable\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"patch failed to apply %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @msi_apply_patch_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_apply_patch_package(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @debugstr_w(i8* %18)
  %20 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %17, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* @MSIDBOPEN_READONLY, align 8
  %23 = load i64, i64* @MSIDBOPEN_PATCHFILE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @MSI_OpenDatabaseW(i8* %21, i64 %24, %struct.TYPE_14__** %6)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @debugstr_w(i8* %30)
  %32 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %121

34:                                               ; preds = %2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @msi_get_suminfo(i32 %37, i32 0, %struct.TYPE_12__** %9)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = call i32 @msiobj_release(i32* %44)
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %121

47:                                               ; preds = %34
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = call i64 @msi_check_patch_applicable(i32* %48, %struct.TYPE_12__* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %56, i64* %11, align 8
  br label %99

57:                                               ; preds = %47
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = call i64 @msi_parse_patch_summary(%struct.TYPE_12__* %58, %struct.TYPE_13__** %10)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %99

64:                                               ; preds = %57
  %65 = call i64 @msi_create_empty_local_file(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @msi_apply_patch_package.dotmsp, i64 0, i64 0))
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @ERROR_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %99

70:                                               ; preds = %64
  %71 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %71, i64* %11, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call i8* @strdupW(i8* %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = icmp ne i8* %76, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  br label %99

81:                                               ; preds = %70
  %82 = call i8* @strdupW(i8* %16)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = icmp ne i8* %82, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %99

87:                                               ; preds = %81
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = call i64 @msi_apply_patch_db(i32* %88, %struct.TYPE_14__* %89, %struct.TYPE_13__* %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @ERROR_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %96)
  br label %98

98:                                               ; preds = %95, %87
  br label %99

99:                                               ; preds = %98, %86, %80, %69, %63, %54
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = call i32 @msiobj_release(i32* %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = call i32 @msiobj_release(i32* %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %107 = icmp ne %struct.TYPE_13__* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @ERROR_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @DeleteFileW(i8* %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %118 = call i32 @msi_free_patchinfo(%struct.TYPE_13__* %117)
  br label %119

119:                                              ; preds = %112, %108, %99
  %120 = load i64, i64* %11, align 8
  store i64 %120, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %121

121:                                              ; preds = %119, %42, %29
  %122 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i64 @MSI_OpenDatabaseW(i8*, i64, %struct.TYPE_14__**) #2

declare dso_local i32 @ERR(i8*, i32) #2

declare dso_local i64 @msi_get_suminfo(i32, i32, %struct.TYPE_12__**) #2

declare dso_local i32 @msiobj_release(i32*) #2

declare dso_local i64 @msi_check_patch_applicable(i32*, %struct.TYPE_12__*) #2

declare dso_local i64 @msi_parse_patch_summary(%struct.TYPE_12__*, %struct.TYPE_13__**) #2

declare dso_local i64 @msi_create_empty_local_file(i8*, i8*) #2

declare dso_local i8* @strdupW(i8*) #2

declare dso_local i64 @msi_apply_patch_db(i32*, %struct.TYPE_14__*, %struct.TYPE_13__*) #2

declare dso_local i32 @WARN(i8*, i64) #2

declare dso_local i32 @DeleteFileW(i8*) #2

declare dso_local i32 @msi_free_patchinfo(%struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
