; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c__GetDriveLettersAndType.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c__GetDriveLettersAndType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@__const._GetDriveLettersAndType.logical_drive = private unnamed_addr constant [7 x i8] c"\\\\.\\#:\00", align 1
@NtQueryVolumeInformationFile = common dso_local global i32 0, align 4
@Ntdll = common dso_local global i32 0, align 4
@DRIVE_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"GetLogicalDriveStrings failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"GetLogicalDriveStrings: Buffer too small (required %d vs. %d)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DRIVE_REMOVABLE = common dso_local global i64 0, align 8
@DRIVE_FIXED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"\\\\.\\%c:\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FileFsDeviceInformation = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i64 0, align 8
@FILE_FLOPPY_DISKETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64*)* @_GetDriveLettersAndType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_GetDriveLettersAndType(i32 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [105 x i8], align 16
  %17 = alloca [7 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %20 = bitcast [7 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const._GetDriveLettersAndType.logical_drive, i32 0, i32 0), i64 7, i1 false)
  %21 = load i32, i32* @NtQueryVolumeInformationFile, align 4
  %22 = load i32, i32* @Ntdll, align 4
  %23 = call i32 @PF_INIT(i32 %21, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i64*, i64** %6, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @DRIVE_UNKNOWN, align 8
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @CheckDriveIndex(i32 %36)
  %38 = getelementptr inbounds [105 x i8], [105 x i8]* %16, i64 0, i64 0
  %39 = call i32 @GetLogicalDriveStringsA(i32 105, i8* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = call i32 (...) @WindowsErrorString()
  %44 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %149

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %47, 105
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 105)
  br label %149

52:                                               ; preds = %45
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %8, align 4
  %54 = getelementptr inbounds [105 x i8], [105 x i8]* %16, i64 0, i64 0
  store i8* %54, i8** %15, align 8
  br label %55

55:                                               ; preds = %142, %52
  %56 = load i8*, i8** %15, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %148

59:                                               ; preds = %55
  %60 = load i8*, i8** %15, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @isalpha(i8 signext %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %142

65:                                               ; preds = %59
  %66 = load i8*, i8** %15, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = call i64 @toupper(i32 %68)
  %70 = trunc i64 %69 to i8
  %71 = load i8*, i8** %15, align 8
  store i8 %70, i8* %71, align 1
  %72 = load i8*, i8** %15, align 8
  %73 = call i64 @GetDriveTypeA(i8* %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @DRIVE_REMOVABLE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %65
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @DRIVE_FIXED, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %142

82:                                               ; preds = %77, %65
  %83 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @static_sprintf(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8 signext %86)
  %88 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %89 = load i32, i32* @GENERIC_READ, align 4
  %90 = load i32, i32* @FILE_SHARE_READ, align 4
  %91 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @OPEN_EXISTING, align 4
  %94 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %95 = call i64 @CreateFileA(i8* %88, i32 %89, i32 %92, i32* null, i32 %93, i32 %94, i32* null)
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %82
  br label %142

100:                                              ; preds = %82
  %101 = load i64, i64* %9, align 8
  %102 = load i32, i32* @FileFsDeviceInformation, align 4
  %103 = call i64 @pfNtQueryVolumeInformationFile(i64 %101, i32* %11, %struct.TYPE_3__* %12, i32 4, i32 %102)
  %104 = load i64, i64* @NO_ERROR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @FILE_FLOPPY_DISKETTE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %142

113:                                              ; preds = %106, %100
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %116 = call i32 @GetDriveNumber(i64 %114, i8* %115)
  store i32 %116, i32* %14, align 4
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @safe_closehandle(i64 %117)
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %113
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %8, align 4
  %124 = load i8*, i8** %5, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i8*, i8** %15, align 8
  %128 = load i8, i8* %127, align 1
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 %128, i8* %133, align 1
  br label %134

134:                                              ; preds = %126, %122
  %135 = load i64*, i64** %6, align 8
  %136 = icmp ne i64* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i64, i64* %10, align 8
  %139 = load i64*, i64** %6, align 8
  store i64 %138, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %113
  br label %142

142:                                              ; preds = %141, %112, %99, %81, %64
  %143 = load i8*, i8** %15, align 8
  %144 = call i64 @safe_strlen(i8* %143)
  %145 = add nsw i64 %144, 1
  %146 = load i8*, i8** %15, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 %145
  store i8* %147, i8** %15, align 8
  br label %55

148:                                              ; preds = %55
  br label %149

149:                                              ; preds = %148, %49, %42
  %150 = load i8*, i8** %5, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  store i8 0, i8* %156, align 1
  br label %157

157:                                              ; preds = %152, %149
  %158 = load i32, i32* %8, align 4
  ret i32 %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PF_INIT(i32, i32) #2

declare dso_local i32 @CheckDriveIndex(i32) #2

declare dso_local i32 @GetLogicalDriveStringsA(i32, i8*) #2

declare dso_local i32 @uprintf(i8*, i32, ...) #2

declare dso_local i32 @WindowsErrorString(...) #2

declare dso_local i32 @isalpha(i8 signext) #2

declare dso_local i64 @toupper(i32) #2

declare dso_local i64 @GetDriveTypeA(i8*) #2

declare dso_local i32 @static_sprintf(i8*, i8*, i8 signext) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @pfNtQueryVolumeInformationFile(i64, i32*, %struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @GetDriveNumber(i64, i8*) #2

declare dso_local i32 @safe_closehandle(i64) #2

declare dso_local i64 @safe_strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
