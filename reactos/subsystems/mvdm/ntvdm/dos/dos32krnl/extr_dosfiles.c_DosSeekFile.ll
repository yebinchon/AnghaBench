; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosSeekFile.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosSeekFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"DosSeekFile: FileHandle 0x%04X, Offset 0x%08X, Origin 0x%02X\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@FILE_INFO_DEVICE = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@FILE_CURRENT = common dso_local global i32 0, align 4
@FILE_END = common dso_local global i32 0, align 4
@ERROR_INVALID_FUNCTION = common dso_local global i64 0, align 8
@INVALID_SET_FILE_POINTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DosSeekFile(i64 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.TYPE_3__* @DosGetHandleFileDescriptor(i64 %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %12, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @DPRINT(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %21 = icmp eq %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  store i64 %23, i64* %5, align 8
  br label %76

24:                                               ; preds = %4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FILE_INFO_DEVICE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %32, i64* %5, align 8
  br label %76

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @FILE_BEGIN, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @FILE_CURRENT, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @FILE_END, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @ERROR_INVALID_FUNCTION, align 8
  store i64 %46, i64* %5, align 8
  br label %76

47:                                               ; preds = %41, %37, %33
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @SetFilePointer(i32 %50, i32 %51, i32* null, i32 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @INVALID_SET_FILE_POINTER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = call i64 (...) @GetLastError()
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %57, %47
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %5, align 8
  br label %76

65:                                               ; preds = %59
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i64, i64* %11, align 8
  %73 = load i64*, i64** %9, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %74, %63, %45, %31, %22
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local %struct.TYPE_3__* @DosGetHandleFileDescriptor(i64) #1

declare dso_local i32 @DPRINT(i8*, i64, i32, i32) #1

declare dso_local i64 @SetFilePointer(i32, i32, i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
