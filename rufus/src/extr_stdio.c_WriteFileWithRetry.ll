; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdio.c_WriteFileWithRetry.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdio.c_WriteFileWithRetry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@FILE_CURRENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Warning: Could not read file pointer %s\00", align 1
@FILE_BEGIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not set file pointer - Aborting\00", align 1
@LastWriteError = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@large_drive = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Warning: Possible short write\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Wrote %d bytes but requested %d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Write error %s\00", align 1
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Retrying in %d seconds...\00", align 1
@WRITE_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_WRITE_FAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WriteFileWithRetry(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = bitcast %struct.TYPE_6__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @FILE_CURRENT, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %20 = bitcast %struct.TYPE_5__* %19 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i64 @SetFilePointerEx(i32 %17, i64 %21, %struct.TYPE_6__* %14, i32 %18)
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = call i32 (...) @WindowsErrorString()
  %27 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %5
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %28
  store i32 1, i32* %12, align 4
  br label %33

33:                                               ; preds = %105, %32
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %108

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @FILE_BEGIN, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %44 = bitcast %struct.TYPE_5__* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = call i64 @SetFilePointerEx(i32 %41, i64 %45, %struct.TYPE_6__* null, i32 %42)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %108

50:                                               ; preds = %40, %37
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call i64 @WriteFile(i32 %51, i32 %52, i32 %53, i32* %54, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %50
  store i32 0, i32* @LastWriteError, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %6, align 8
  br label %123

64:                                               ; preds = %57
  %65 = load i64, i64* @large_drive, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i64, i64* @TRUE, align 8
  store i64 %73, i64* %6, align 8
  br label %123

74:                                               ; preds = %67, %64
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77)
  br label %88

79:                                               ; preds = %50
  %80 = call i32 (...) @WindowsErrorString()
  %81 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %83 = load i32, i32* @FACILITY_STORAGE, align 4
  %84 = call i32 @FAC(i32 %83)
  %85 = or i32 %82, %84
  %86 = call i32 (...) @GetLastError()
  %87 = or i32 %85, %86
  store i32 %87, i32* @LastWriteError, align 4
  br label %88

88:                                               ; preds = %79, %74
  %89 = load i64, i64* %13, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  br label %108

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i32, i32* @WRITE_TIMEOUT, align 4
  %98 = sdiv i32 %97, 1000
  %99 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @WRITE_TIMEOUT, align 4
  %101 = load i64, i64* @FALSE, align 8
  %102 = call i32 @CheckDriveAccess(i32 %100, i64 %101)
  %103 = call i32 @Sleep(i32 %102)
  br label %104

104:                                              ; preds = %96, %92
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %33

108:                                              ; preds = %91, %48, %33
  %109 = call i32 (...) @GetLastError()
  %110 = call i64 @SCODE_CODE(i32 %109)
  %111 = load i64, i64* @ERROR_SUCCESS, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %115 = load i32, i32* @FACILITY_STORAGE, align 4
  %116 = call i32 @FAC(i32 %115)
  %117 = or i32 %114, %116
  %118 = load i32, i32* @ERROR_WRITE_FAULT, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @SetLastError(i32 %119)
  br label %121

121:                                              ; preds = %113, %108
  %122 = load i64, i64* @FALSE, align 8
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %121, %71, %62
  %124 = load i64, i64* %6, align 8
  ret i64 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @SetFilePointerEx(i32, i64, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i32 @WindowsErrorString(...) #2

declare dso_local i64 @WriteFile(i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @FAC(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i32 @CheckDriveAccess(i32, i64) #2

declare dso_local i64 @SCODE_CODE(i32) #2

declare dso_local i32 @SetLastError(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
