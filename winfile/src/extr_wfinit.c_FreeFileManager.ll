; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinit.c_FreeFileManager.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinit.c_FreeFileManager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hThreadUpdate = common dso_local global i64 0, align 8
@bUpdateRun = common dso_local global i64 0, align 8
@CriticalSectionPath = common dso_local global i32 0, align 4
@hEventNetLoad = common dso_local global i32 0, align 4
@hEventAcledit = common dso_local global i32 0, align 4
@hEventUpdate = common dso_local global i32 0, align 4
@hEventUpdatePartial = common dso_local global i32 0, align 4
@ppDocBucket = common dso_local global i32 0, align 4
@ppProgBucket = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@hFont = common dso_local global i64 0, align 8
@hfontDriveList = common dso_local global i64 0, align 8
@bJAPAN = common dso_local global i64 0, align 8
@hFontStatus = common dso_local global i64 0, align 8
@hfmifsDll = common dso_local global i64 0, align 8
@hNTLanman = common dso_local global i64 0, align 8
@hMPR = common dso_local global i64 0, align 8
@hVersion = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FreeFileManager() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @hThreadUpdate, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i64, i64* @bUpdateRun, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = call i32 (...) @UpdateWaitQuit()
  %9 = load i64, i64* @hThreadUpdate, align 8
  %10 = call i32 @CloseHandle(i64 %9)
  br label %11

11:                                               ; preds = %7, %4, %0
  %12 = call i32 @DeleteCriticalSection(i32* @CriticalSectionPath)
  %13 = load i32, i32* @hEventNetLoad, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @hEventNetLoad, align 4
  %17 = sext i32 %16 to i64
  %18 = call i32 @CloseHandle(i64 %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* @hEventAcledit, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @hEventAcledit, align 4
  %24 = sext i32 %23 to i64
  %25 = call i32 @CloseHandle(i64 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* @hEventUpdate, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @hEventUpdate, align 4
  %31 = sext i32 %30 to i64
  %32 = call i32 @CloseHandle(i64 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @hEventUpdatePartial, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @hEventUpdatePartial, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 @CloseHandle(i64 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = call i32 (...) @DestroyWatchList()
  %42 = call i32 (...) @DestroyDirRead()
  %43 = call i32 (...) @D_Info()
  %44 = call i32 (...) @D_Type()
  %45 = call i32 (...) @D_Space()
  %46 = call i32 (...) @D_NetCon()
  %47 = call i32 (...) @D_VolInfo()
  %48 = load i32, i32* @ppDocBucket, align 4
  %49 = call i32 @DocDestruct(i32 %48)
  %50 = load i32, i32* @ppProgBucket, align 4
  %51 = call i32 @DocDestruct(i32 %50)
  br i1 true, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @lpfnRegisterPenApp(i32 1, i32 %53)
  br label %55

55:                                               ; preds = %52, %40
  %56 = call i32 (...) @DeleteBitmaps()
  %57 = load i64, i64* @hFont, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* @hFont, align 8
  %61 = call i32 @DeleteObject(i64 %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i64, i64* @hfontDriveList, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* @hfontDriveList, align 8
  %67 = call i32 @DeleteObject(i64 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i64, i64* @bJAPAN, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i64, i64* @hFontStatus, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* @hFontStatus, align 8
  %76 = call i32 @DeleteObject(i64 %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i64, i64* @hfmifsDll, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, i64* @hfmifsDll, align 8
  %83 = call i32 @FreeLibrary(i64 %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i64, i64* @hNTLanman, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* @hNTLanman, align 8
  %89 = call i32 @FreeLibrary(i64 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i64, i64* @hMPR, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* @hMPR, align 8
  %95 = call i32 @FreeLibrary(i64 %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i64, i64* @hVersion, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i64, i64* @hVersion, align 8
  %101 = call i32 @FreeLibrary(i64 %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = call i32 (...) @OleUninitialize()
  %104 = load i32, i32* %1, align 4
  ret i32 %104
}

declare dso_local i32 @UpdateWaitQuit(...) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @DeleteCriticalSection(i32*) #1

declare dso_local i32 @DestroyWatchList(...) #1

declare dso_local i32 @DestroyDirRead(...) #1

declare dso_local i32 @D_Info(...) #1

declare dso_local i32 @D_Type(...) #1

declare dso_local i32 @D_Space(...) #1

declare dso_local i32 @D_NetCon(...) #1

declare dso_local i32 @D_VolInfo(...) #1

declare dso_local i32 @DocDestruct(i32) #1

declare dso_local i32 @lpfnRegisterPenApp(i32, i32) #1

declare dso_local i32 @DeleteBitmaps(...) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @FreeLibrary(i64) #1

declare dso_local i32 @OleUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
