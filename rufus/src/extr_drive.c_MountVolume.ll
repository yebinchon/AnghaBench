; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_MountVolume.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_MountVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@groot_name = common dso_local global i32 0, align 4
@groot_len = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"%s is already mounted as %C: instead of %C: - Will now use this target instead...\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ERROR_DIR_NOT_EMPTY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"%s is already mounted, but volume GUID could not be checked: %s\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"%s is mounted, but volume GUID doesn't match:\0D\0A  expected %s, got %s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s is already mounted as %C:\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Retrying after dismount...\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Warning: Could not delete volume mountpoint: %s\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"%s was remounted as %C: (second time lucky!)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MountVolume(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [52 x i8], align 16
  %7 = alloca [27 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast [27 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 27, i1 false)
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 63
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @groot_name, align 4
  %24 = load i32, i32* @groot_len, align 4
  %25 = call i64 @strncmp(i8* %22, i32 %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %15, %12, %2
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %142

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %32 = call i64 @GetVolumePathNamesForVolumeNameA(i8* %30, i8* %31, i32 27, i32* %8)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %39 = load i8, i8* %38, align 16
  %40 = sext i8 %39 to i32
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %49 = load i8, i8* %48, align 16
  %50 = sext i8 %49 to i32
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %50, i32 %54)
  %56 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %57 = load i8, i8* %56, align 16
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %3, align 4
  br label %142

61:                                               ; preds = %37, %34, %29
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @SetVolumeMountPointA(i8* %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %140, label %66

66:                                               ; preds = %61
  %67 = call i64 (...) @GetLastError()
  %68 = load i64, i64* @ERROR_DIR_NOT_EMPTY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %138

70:                                               ; preds = %66
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  %73 = call i64 @GetVolumeNameForVolumeMountPointA(i8* %71, i8* %72, i32 52)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  %77 = call signext i8 (...) @WindowsErrorString()
  %78 = sext i8 %77 to i32
  %79 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %76, i32 %78)
  br label %99

80:                                               ; preds = %70
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  %83 = call i64 @safe_strcmp(i8* %81, i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i8*, i8** %4, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  %89 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i8* %86, i8* %87, i8* %88)
  br label %98

90:                                               ; preds = %80
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %91, i32 %95)
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %142

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %75
  %100 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @DeleteVolumeMountPointA(i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = call signext i8 (...) @WindowsErrorString()
  %106 = sext i8 %105 to i32
  %107 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i8*, i8** %4, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = call i64 @SetVolumeMountPointA(i8* %109, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @TRUE, align 4
  store i32 %114, i32* %3, align 4
  br label %142

115:                                              ; preds = %108
  %116 = call i64 (...) @GetLastError()
  %117 = load i64, i64* @ERROR_DIR_NOT_EMPTY, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %115
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  %122 = call i64 @GetVolumeNameForVolumeMountPointA(i8* %120, i8* %121, i32 52)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %119
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  %127 = call i64 @safe_strcmp(i8* %125, i8* %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load i8*, i8** %5, align 8
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %130, i32 %134)
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %3, align 4
  br label %142

137:                                              ; preds = %124, %119, %115
  br label %138

138:                                              ; preds = %137, %66
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %3, align 4
  br label %142

140:                                              ; preds = %61
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %138, %129, %113, %90, %46, %27
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i64 @GetVolumePathNamesForVolumeNameA(i8*, i8*, i32, i32*) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i64 @SetVolumeMountPointA(i8*, i8*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @GetVolumeNameForVolumeMountPointA(i8*, i8*, i32) #2

declare dso_local signext i8 @WindowsErrorString(...) #2

declare dso_local i64 @safe_strcmp(i8*, i8*) #2

declare dso_local i32 @DeleteVolumeMountPointA(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
