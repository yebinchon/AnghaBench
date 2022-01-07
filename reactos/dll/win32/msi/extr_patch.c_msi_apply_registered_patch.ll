; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_msi_apply_registered_patch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_msi_apply_registered_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%p, %s\0A\00", align 1
@INSTALLPROPERTY_LOCALPACKAGEW = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to get patch filename %u\0A\00", align 1
@MSIDBOPEN_READONLY = common dso_local global i64 0, align 8
@MSIDBOPEN_PATCHFILE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to open patch database %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to parse patch summary %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to apply patch %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_apply_registered_patch(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @debugstr_w(i32* %19)
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %18, i64 %20)
  %22 = mul nuw i64 4, %15
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @INSTALLPROPERTY_LOCALPACKAGEW, align 4
  %33 = call i64 @MsiGetPatchInfoExW(i32* %25, i32 %28, i32* null, i32 %31, i32 %32, i32* %17, i32* %7)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %118

41:                                               ; preds = %2
  %42 = load i64, i64* @MSIDBOPEN_READONLY, align 8
  %43 = load i64, i64* @MSIDBOPEN_PATCHFILE, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i64 @MSI_OpenDatabaseW(i32* %17, i64 %44, %struct.TYPE_18__** %10)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = call i64 @debugstr_w(i32* %17)
  %51 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %118

53:                                               ; preds = %41
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @msi_get_suminfo(i32 %56, i32 0, %struct.TYPE_15__** %12)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = call i32 @msiobj_release(i32* %63)
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %118

66:                                               ; preds = %53
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %68 = call i64 @msi_parse_patch_summary(%struct.TYPE_15__* %67, %struct.TYPE_16__** %11)
  store i64 %68, i64* %6, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = call i32 @msiobj_release(i32* %70)
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = call i32 @msiobj_release(i32* %79)
  %81 = load i64, i64* %6, align 8
  store i64 %81, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %118

82:                                               ; preds = %66
  %83 = load i32, i32* @TRUE, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = call i32 @strdupW(i32* %17)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %82
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = call i32 @msiobj_release(i32* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %98 = call i32 @msi_free_patchinfo(%struct.TYPE_16__* %97)
  %99 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %99, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %118

100:                                              ; preds = %82
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %104 = call i64 @msi_apply_patch_db(%struct.TYPE_17__* %101, %struct.TYPE_18__* %102, %struct.TYPE_16__* %103)
  store i64 %104, i64* %6, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = call i32 @msiobj_release(i32* %106)
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @ERROR_SUCCESS, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %115 = call i32 @msi_free_patchinfo(%struct.TYPE_16__* %114)
  br label %116

116:                                              ; preds = %111, %100
  %117 = load i64, i64* %6, align 8
  store i64 %117, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %118

118:                                              ; preds = %116, %93, %75, %61, %49, %37
  %119 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i64, i64* %3, align 8
  ret i64 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_17__*, i64) #2

declare dso_local i64 @debugstr_w(i32*) #2

declare dso_local i64 @MsiGetPatchInfoExW(i32*, i32, i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @ERR(i8*, i64) #2

declare dso_local i64 @MSI_OpenDatabaseW(i32*, i64, %struct.TYPE_18__**) #2

declare dso_local i64 @msi_get_suminfo(i32, i32, %struct.TYPE_15__**) #2

declare dso_local i32 @msiobj_release(i32*) #2

declare dso_local i64 @msi_parse_patch_summary(%struct.TYPE_15__*, %struct.TYPE_16__**) #2

declare dso_local i32 @strdupW(i32*) #2

declare dso_local i32 @msi_free_patchinfo(%struct.TYPE_16__*) #2

declare dso_local i64 @msi_apply_patch_db(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
