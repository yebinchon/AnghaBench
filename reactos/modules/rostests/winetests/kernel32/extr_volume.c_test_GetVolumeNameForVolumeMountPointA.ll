; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetVolumeNameForVolumeMountPointA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetVolumeNameForVolumeMountPointA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@__const.test_GetVolumeNameForVolumeMountPointA.path = private unnamed_addr constant [4 x i8] c"c:\\\00", align 1
@.str = private unnamed_addr constant [23 x i8] c"GetTempPathA error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"temp path should fit into MAX_PATH\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"GetVolumeNameForVolumeMountPointA succeeded\0A\00", align 1
@ERROR_FILENAME_EXCED_RANGE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"wrong error, last=%d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"GetVolumeNameForVolumeMountPointA failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\\\\?\\Volume{\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"GetVolumeNameForVolumeMountPointA failed to return valid string <%s>\0A\00", align 1
@.str.7 = private unnamed_addr constant [110 x i8] c"GetVolumeNameForVolumeMountPointA failed, wrong error returned, was %d, should be ERROR_FILENAME_EXCED_RANGE\0A\00", align 1
@ERROR_NOT_A_REPARSE_POINT = common dso_local global i32 0, align 4
@ERROR_INVALID_FUNCTION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"GetVolumeNameForVolumeMountPointA failed on %s, last=%d\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetVolumeNameForVolumeMountPointA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetVolumeNameForVolumeMountPointA() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = bitcast [4 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_GetVolumeNameForVolumeMountPointA.path, i32 0, i32 0), i64 4, i1 false)
  store i64 %9, i64* %5, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = call i64 @GetTempPathA(i32 %16, i8* %15)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %30 = call i64 @pGetVolumeNameForVolumeMountPointA(i8* %29, i8* %11, i64 0)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @FALSE, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 (...) @GetLastError()
  %37 = load i32, i32* @ERROR_FILENAME_EXCED_RANGE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %0
  %40 = call i32 (...) @GetLastError()
  %41 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %39, %0
  %44 = phi i1 [ true, %0 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @pGetVolumeNameForVolumeMountPointA(i8* %48, i8* %11, i64 %49)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @TRUE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i8* %11)
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %62 = call i64 @pGetVolumeNameForVolumeMountPointA(i8* %61, i8* %11, i64 10)
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @FALSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %43
  %67 = call i32 (...) @GetLastError()
  %68 = load i32, i32* @ERROR_FILENAME_EXCED_RANGE, align 4
  %69 = icmp eq i32 %67, %68
  br label %70

70:                                               ; preds = %66, %43
  %71 = phi i1 [ false, %43 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 (...) @GetLastError()
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = load i64, i64* %5, align 8
  %76 = call i64 @pGetVolumeNameForVolumeMountPointA(i8* %15, i8* %11, i64 %75)
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* %1, align 8
  %78 = load i64, i64* @FALSE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = call i32 (...) @GetLastError()
  %82 = load i32, i32* @ERROR_NOT_A_REPARSE_POINT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = call i32 (...) @GetLastError()
  %86 = load i32, i32* @ERROR_INVALID_FUNCTION, align 4
  %87 = icmp eq i32 %85, %86
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ true, %80 ], [ %87, %84 ]
  br label %90

90:                                               ; preds = %88, %70
  %91 = phi i1 [ false, %70 ], [ %89, %88 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 (...) @GetLastError()
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i8* %15, i32 %93)
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %109, %90
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 %99, 122
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %103 = load i64, i64* %5, align 8
  %104 = call i64 @QueryDosDeviceA(i8* %102, i8* %11, i64 %103)
  store i64 %104, i64* %1, align 8
  %105 = load i64, i64* %1, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  br label %113

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = add i8 %111, 1
  store i8 %112, i8* %110, align 1
  br label %96

113:                                              ; preds = %107, %96
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sle i32 %116, 122
  br i1 %117, label %118, label %153

118:                                              ; preds = %113
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 92, i8* %119, align 1
  %120 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %121 = load i64, i64* %5, align 8
  %122 = call i64 @pGetVolumeNameForVolumeMountPointA(i8* %120, i8* %11, i64 %121)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* %1, align 8
  %124 = load i64, i64* @FALSE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = call i32 (...) @GetLastError()
  %128 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %129 = icmp eq i32 %127, %128
  br label %130

130:                                              ; preds = %126, %118
  %131 = phi i1 [ false, %118 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  %133 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %134 = call i32 (...) @GetLastError()
  %135 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i8* %133, i32 %134)
  %136 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 0, i8* %136, align 1
  %137 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %138 = load i64, i64* %5, align 8
  %139 = call i64 @pGetVolumeNameForVolumeMountPointA(i8* %137, i8* %11, i64 %138)
  store i64 %139, i64* %1, align 8
  %140 = load i64, i64* %1, align 8
  %141 = load i64, i64* @FALSE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %130
  %144 = call i32 (...) @GetLastError()
  %145 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %146 = icmp eq i32 %144, %145
  br label %147

147:                                              ; preds = %143, %130
  %148 = phi i1 [ false, %130 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  %150 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %151 = call i32 (...) @GetLastError()
  %152 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i8* %150, i32 %151)
  br label %153

153:                                              ; preds = %147, %113
  %154 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %154)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @GetTempPathA(i32, i8*) #3

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i64 @pGetVolumeNameForVolumeMountPointA(i8*, i8*, i64) #3

declare dso_local i32 @strncmp(i8*, i8*, i32) #3

declare dso_local i64 @QueryDosDeviceA(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
