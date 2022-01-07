; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosWriteFile.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosWriteFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i64, i32*)* }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"DosWriteFile: FileHandle 0x%04X, Count 0x%04X\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@FILE_INFO_DEVICE = common dso_local global i32 0, align 4
@ERROR_INVALID_FUNCTION = common dso_local global i32 0, align 4
@EmulatorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DosWriteFile(i32 %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca [8192 x i32], align 16
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_6__* @DosGetHandleFileDescriptor(i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @DPRINT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  store i32 %25, i32* %5, align 4
  br label %135

26:                                               ; preds = %4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FILE_INFO_DEVICE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_7__* @DosGetDriverNode(i32 %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %13, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_7__*, i64, i32*)*, i32 (%struct.TYPE_7__*, i64, i32*)** %39, align 8
  %41 = icmp ne i32 (%struct.TYPE_7__*, i64, i32*)* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ERROR_INVALID_FUNCTION, align 4
  store i32 %43, i32* %5, align 4
  br label %135

44:                                               ; preds = %33
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_7__*, i64, i32*)*, i32 (%struct.TYPE_7__*, i64, i32*)** %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 %47(%struct.TYPE_7__* %48, i64 %49, i32* %8)
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %133

53:                                               ; preds = %26
  store i64 0, i64* %14, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SetEndOfFile(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = call i64 (...) @GetLastError()
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32*, i32** %9, align 8
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %135

68:                                               ; preds = %53
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ule i64 %70, 32768
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = getelementptr inbounds [8192 x i32], [8192 x i32]* %12, i64 0, i64 0
  store i32* %73, i32** %15, align 8
  br label %82

74:                                               ; preds = %68
  %75 = call i32 (...) @RtlGetProcessHeap()
  %76 = load i32, i32* %8, align 4
  %77 = call i32* @RtlAllocateHeap(i32 %75, i32 0, i32 %76)
  store i32* %77, i32** %15, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = icmp ne i32* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  br label %82

82:                                               ; preds = %74, %72
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @HIWORD(i64 %83)
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @LOWORD(i64 %85)
  %87 = call i32 @TO_LINEAR(i32 %84, i32 %86)
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @EmulatorReadMemory(i32* @EmulatorContext, i32 %87, i32* %88, i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @WriteFile(i32 %93, i32* %94, i32 %95, i64* %14, i32* null)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %82
  %99 = load i64, i64* %14, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %106, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %98
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %98
  br label %121

118:                                              ; preds = %82
  %119 = call i64 (...) @GetLastError()
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %118, %117
  %122 = load i64, i64* %14, align 8
  %123 = call i32 @LOWORD(i64 %122)
  %124 = load i32*, i32** %9, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %15, align 8
  %126 = getelementptr inbounds [8192 x i32], [8192 x i32]* %12, i64 0, i64 0
  %127 = icmp ne i32* %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = call i32 (...) @RtlGetProcessHeap()
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @RtlFreeHeap(i32 %129, i32 0, i32* %130)
  br label %132

132:                                              ; preds = %128, %121
  br label %133

133:                                              ; preds = %132, %44
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %65, %42, %24
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.TYPE_6__* @DosGetHandleFileDescriptor(i32) #1

declare dso_local i32 @DPRINT(i8*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @DosGetDriverNode(i32) #1

declare dso_local i32 @SetEndOfFile(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @EmulatorReadMemory(i32*, i32, i32*, i32) #1

declare dso_local i32 @TO_LINEAR(i32, i32) #1

declare dso_local i32 @HIWORD(i64) #1

declare dso_local i32 @LOWORD(i64) #1

declare dso_local i64 @WriteFile(i32, i32*, i32, i64*, i32*) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
