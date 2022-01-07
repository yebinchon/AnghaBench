; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_fill_w32fdata_shell.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_fill_w32fdata_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 (i32)*, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }

@SFGAO_FILESYSTEM = common dso_local global i32 0, align 4
@SHGDFIL_FINDDATA = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@DVASPECT_CONTENT = common dso_local global i32 0, align 4
@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@IID_IDataObject = common dso_local global i32 0, align 4
@hGlobal = common dso_local global i32 0, align 4
@SEM_FAILCRITICALERRORS = common dso_local global i32 0, align 4
@GetFileExInfoStandard = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@SFGAO_FOLDER = common dso_local global i32 0, align 4
@SFGAO_HASSUBFOLDER = common dso_local global i32 0, align 4
@SFGAO_READONLY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@SFGAO_COMPRESSED = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_COMPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, %struct.TYPE_14__*)* @fill_w32fdata_shell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_w32fdata_shell(i32* %0, i32 %1, i32 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_17__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SFGAO_FILESYSTEM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SHGDFIL_FINDDATA, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = call i32 @SHGetDataFromIDListW(i32* %21, i32 %22, i32 %23, %struct.TYPE_14__* %24, i32 24)
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %111

28:                                               ; preds = %20, %4
  %29 = bitcast %struct.TYPE_16__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 24, i1 false)
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 0), align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %34 = load i32, i32* @DVASPECT_CONTENT, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 3
  store i32 -1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 4
  %37 = load i32, i32* @TYMED_HGLOBAL, align 4
  store i32 %37, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = bitcast i32** %10 to i32*
  %40 = call i32 @IShellFolder_GetUIObjectOf(i32* %38, i32 0, i32 1, i32* %6, i32* @IID_IDataObject, i32 0, i32* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i64 @SUCCEEDED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %110

44:                                               ; preds = %28
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @IDataObject_GetData(i32* %45, %struct.TYPE_17__* %12, %struct.TYPE_16__* %11)
  store i32 %46, i32* %13, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @IDataObject_Release(i32* %47)
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @SUCCEEDED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %109

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = load i32, i32* @hGlobal, align 4
  %56 = call i32 %54(i32 %55)
  %57 = call i32 @GlobalLock(i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* @SEM_FAILCRITICALERRORS, align 4
  %59 = call i32 @SetErrorMode(i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @GetFileExInfoStandard, align 4
  %62 = call i64 @GetFileAttributesExW(i32 %60, i32 %61, %struct.TYPE_15__* %9)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %64
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %86, %64
  br label %96

96:                                               ; preds = %95, %52
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @SetErrorMode(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %100 = load i32 (i32)*, i32 (i32)** %99, align 8
  %101 = load i32, i32* @hGlobal, align 4
  %102 = call i32 %100(i32 %101)
  %103 = call i32 @GlobalUnlock(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %105 = load i32 (i32)*, i32 (i32)** %104, align 8
  %106 = load i32, i32* @hGlobal, align 4
  %107 = call i32 %105(i32 %106)
  %108 = call i32 @GlobalFree(i32 %107)
  br label %109

109:                                              ; preds = %96, %44
  br label %110

110:                                              ; preds = %109, %28
  br label %111

111:                                              ; preds = %110, %20
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @SFGAO_FOLDER, align 4
  %114 = load i32, i32* @SFGAO_HASSUBFOLDER, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %111
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @SFGAO_READONLY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @SFGAO_COMPRESSED, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* @FILE_ATTRIBUTE_COMPRESSED, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %135
  ret void
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SHGetDataFromIDListW(i32*, i32, i32, %struct.TYPE_14__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @IShellFolder_GetUIObjectOf(i32*, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IDataObject_GetData(i32*, %struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @IDataObject_Release(i32*) #1

declare dso_local i32 @GlobalLock(i32) #1

declare dso_local i32 @SetErrorMode(i32) #1

declare dso_local i64 @GetFileAttributesExW(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @GlobalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
