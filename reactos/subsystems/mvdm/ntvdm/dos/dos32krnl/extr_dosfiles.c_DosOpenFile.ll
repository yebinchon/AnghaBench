; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosOpenFile.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosOpenFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, i32, i32 (%struct.TYPE_15__*)* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [53 x i8] c"DosOpenFile: FilePath \22%s\22, AccessShareModes 0x%04X\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_TOO_MANY_OPEN_FILES = common dso_local global i64 0, align 8
@FILE_INFO_DEVICE = common dso_local global i32 0, align 4
@Sda = common dso_local global %struct.TYPE_16__* null, align 8
@INVALID_DOS_HANDLE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DosOpenFile(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @DPRINT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_15__* @DosGetDevice(i32 %20)
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %9, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  %27 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_15__*)* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 3
  %32 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = call i32 %32(%struct.TYPE_15__* %33)
  br label %35

35:                                               ; preds = %29, %24
  br label %93

36:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 3
  switch i32 %39, label %48 [
    i32 0, label %40
    i32 1, label %42
    i32 2, label %44
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* @GENERIC_READ, align 4
  store i32 %41, i32* %13, align 4
  br label %50

42:                                               ; preds = %36
  %43 = load i32, i32* @GENERIC_WRITE, align 4
  store i32 %43, i32* %13, align 4
  br label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @GENERIC_READ, align 4
  %46 = load i32, i32* @GENERIC_WRITE, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %13, align 4
  br label %50

48:                                               ; preds = %36
  %49 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %49, i64* %4, align 8
  br label %175

50:                                               ; preds = %44, %42, %40
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 4
  %53 = and i32 %52, 7
  switch i32 %53, label %69 [
    i32 0, label %54
    i32 1, label %60
    i32 2, label %61
    i32 3, label %63
    i32 4, label %65
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* @FILE_SHARE_READ, align 4
  %56 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %14, align 4
  br label %71

60:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %71

61:                                               ; preds = %50
  %62 = load i32, i32* @FILE_SHARE_READ, align 4
  store i32 %62, i32* %14, align 4
  br label %71

63:                                               ; preds = %50
  %64 = load i32, i32* @FILE_SHARE_WRITE, align 4
  store i32 %64, i32* %14, align 4
  br label %71

65:                                               ; preds = %50
  %66 = load i32, i32* @FILE_SHARE_READ, align 4
  %67 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %14, align 4
  br label %71

69:                                               ; preds = %50
  %70 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %70, i64* %4, align 8
  br label %175

71:                                               ; preds = %65, %63, %61, %60, %54
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 128
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 16, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load i32, i32* %15, align 4
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @OPEN_EXISTING, align 4
  %84 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %85 = call i64 @CreateFileA(i32 %80, i32 %81, i32 %82, %struct.TYPE_13__* %16, i32 %83, i32 %84, i32* null)
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %71
  %90 = call i32 (...) @GetLastError()
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %4, align 8
  br label %175

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %35
  %94 = call i32 (...) @DosFindFreeDescriptor()
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %95, 255
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @CloseHandle(i64 %98)
  %100 = load i64, i64* @ERROR_TOO_MANY_OPEN_FILES, align 8
  store i64 %100, i64* %4, align 8
  br label %175

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = call %struct.TYPE_14__* @DosGetFileDescriptor(i32 %102)
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %12, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %105 = call i32 @RtlZeroMemory(%struct.TYPE_14__* %104, i32 40)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @RtlFillMemory(i32 %108, i32 4, i8 signext 32)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = icmp ne %struct.TYPE_15__* %110, null
  br i1 %111, label %112, label %137

112:                                              ; preds = %101
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @FILE_INFO_DEVICE, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @RtlCopyMemory(i32 %127, i32 %131, i32 %135)
  br label %156

137:                                              ; preds = %101
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @GetFileAttributesA(i32 %141)
  %143 = call i32 @LOBYTE(i32 %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load i64, i64* %8, align 8
  %147 = call i32 @GetFileSize(i64 %146, i32* null)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  store i64 %150, i64* %152, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %155 = call i32 @StoreNameInSft(i32 %153, %struct.TYPE_14__* %154)
  br label %156

156:                                              ; preds = %137, %112
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Sda, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call i64 @DosOpenHandle(i32 %162)
  store i64 %163, i64* %10, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* @INVALID_DOS_HANDLE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %156
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @CloseHandle(i64 %168)
  %170 = load i64, i64* @ERROR_TOO_MANY_OPEN_FILES, align 8
  store i64 %170, i64* %4, align 8
  br label %175

171:                                              ; preds = %156
  %172 = load i64, i64* %10, align 8
  %173 = load i64*, i64** %5, align 8
  store i64 %172, i64* %173, align 8
  %174 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %174, i64* %4, align 8
  br label %175

175:                                              ; preds = %171, %167, %97, %89, %69, %48
  %176 = load i64, i64* %4, align 8
  ret i64 %176
}

declare dso_local i32 @DPRINT(i8*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @DosGetDevice(i32) #1

declare dso_local i64 @CreateFileA(i32, i32, i32, %struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DosFindFreeDescriptor(...) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local %struct.TYPE_14__* @DosGetFileDescriptor(i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @RtlFillMemory(i32, i32, i8 signext) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @GetFileAttributesA(i32) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i32 @StoreNameInSft(i32, %struct.TYPE_14__*) #1

declare dso_local i64 @DosOpenHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
