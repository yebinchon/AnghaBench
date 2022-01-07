; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosCreateFile.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosCreateFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, i32, i32 (%struct.TYPE_12__*)* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [77 x i8] c"DosCreateFile: FilePath \22%s\22, CreationDisposition 0x%04X, Attributes 0x%04X\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_TOO_MANY_OPEN_FILES = common dso_local global i64 0, align 8
@FILE_INFO_DEVICE = common dso_local global i32 0, align 4
@Sda = common dso_local global %struct.TYPE_13__* null, align 8
@INVALID_DOS_HANDLE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DosCreateFile(i64* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @DPRINT(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i64 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.TYPE_12__* @DosGetDevice(i32 %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %11, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %22 = icmp ne %struct.TYPE_12__* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_12__*)* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %33 = call i32 %31(%struct.TYPE_12__* %32)
  br label %34

34:                                               ; preds = %28, %23
  br label %55

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @GENERIC_READ, align 4
  %38 = load i32, i32* @GENERIC_WRITE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @FILE_SHARE_READ, align 4
  %41 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @CreateFileA(i32 %36, i32 %39, i32 %44, i32* null, i32 %45, i64 %46, i32* null)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = call i32 (...) @GetLastError()
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %5, align 8
  br label %134

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %34
  %56 = call i32 (...) @DosFindFreeDescriptor()
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 255
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @CloseHandle(i64 %60)
  %62 = load i64, i64* @ERROR_TOO_MANY_OPEN_FILES, align 8
  store i64 %62, i64* %5, align 8
  br label %134

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  %65 = call %struct.TYPE_11__* @DosGetFileDescriptor(i32 %64)
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %14, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %67 = call i32 @RtlZeroMemory(%struct.TYPE_11__* %66, i32 32)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @RtlFillMemory(i32 %70, i32 4, i8 signext 32)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %73 = icmp ne %struct.TYPE_12__* %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %63
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FILE_INFO_DEVICE, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @RtlCopyMemory(i32 %89, i32 %93, i32 %97)
  br label %115

99:                                               ; preds = %63
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @GetFileAttributesA(i32 %100)
  %102 = call i32 @LOBYTE(i32 %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @GetFileSize(i64 %105, i32* null)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %114 = call i32 @StoreNameInSft(i32 %112, %struct.TYPE_11__* %113)
  br label %115

115:                                              ; preds = %99, %74
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Sda, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i64 @DosOpenHandle(i32 %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @INVALID_DOS_HANDLE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %115
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @CloseHandle(i64 %127)
  %129 = load i64, i64* @ERROR_TOO_MANY_OPEN_FILES, align 8
  store i64 %129, i64* %5, align 8
  br label %134

130:                                              ; preds = %115
  %131 = load i64, i64* %12, align 8
  %132 = load i64*, i64** %6, align 8
  store i64 %131, i64* %132, align 8
  %133 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %133, i64* %5, align 8
  br label %134

134:                                              ; preds = %130, %126, %59, %51
  %135 = load i64, i64* %5, align 8
  ret i64 %135
}

declare dso_local i32 @DPRINT(i8*, i32, i32, i64) #1

declare dso_local %struct.TYPE_12__* @DosGetDevice(i32) #1

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i64, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DosFindFreeDescriptor(...) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local %struct.TYPE_11__* @DosGetFileDescriptor(i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @RtlFillMemory(i32, i32, i8 signext) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @GetFileAttributesA(i32) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i32 @StoreNameInSft(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @DosOpenHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
