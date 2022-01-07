; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_SetupWinPE.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_SetupWinPE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"amd64\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"minint\00", align 1
@__const.SetupWinPE.basedir = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"\\minint\\txtsetup.sif\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\\minint\\system32\\\00", align 1
@__const.SetupWinPE.patch_str_org = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [19 x i8] c"\\i386\\txtsetup.sif\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\\i386\\system32\\\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\\amd64\\txtsetup.sif\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\\amd64\\system32\\\00", align 1
@__const.SetupWinPE.patch_str_rep = private unnamed_addr constant [2 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)]], align 16
@.str.9 = private unnamed_addr constant [13 x i8] c"$win_nt$.~bt\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"rdisk(0)\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@img_report = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@WINPE_AMD64 = common dso_local global i32 0, align 4
@WINPE_MININT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [52 x i8] c"SetupSourceDevice = \22\\device\\harddisk%d\\partition1\22\00", align 1
@hDiskID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"%c:\\%s\\ntdetect.com\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"%c:\\ntdetect.com\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"%c:\\%s\\txtsetup.sif\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%c:\\txtsetup.sif\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Did not copy %s as %s: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"[SetupData]\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Failed to add SetupSourceDevice in %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Successfully added '%s' to %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"%c:\\%s\\setupldr.bin\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"%c:\\BOOTMGR\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"Detected \\minint directory with /minint option: nothing to patch\0A\00", align 1
@WINPE_I386 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [76 x i8] c"Detected \\minint directory only but no /minint option: not sure what to do\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [36 x i8] c"Could not open %s for patching: %s\0A\00", align 1
@INVALID_FILE_SIZE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [36 x i8] c"Could not get size for file %s: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Could not read file %s: %s\0A\00", align 1
@FILE_BEGIN = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [30 x i8] c"Could not rewind file %s: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Patching file %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"  0x00002060: 0x74 0x03 -> 0xEB 0x1A (disable Win2k3 CRC check)\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"  0x%08X: '%s' -> '%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"  0x%08X: '%s' -> 'rdisk(%c)'\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"  0x%08X: '%s' -> '%s%s'\0A\00", align 1
@WRITE_RETRIES = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [34 x i8] c"Could not write patched file: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @SetupWinPE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetupWinPE(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [64 x i8], align 16
  %4 = alloca [32 x i8], align 16
  %5 = alloca [3 x i8*], align 16
  %6 = alloca [2 x i8*], align 16
  %7 = alloca [2 x [2 x i8*]], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8 %0, i8* %2, align 1
  %20 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([3 x i8*]* @__const.SetupWinPE.basedir to i8*), i64 24, i1 false)
  %21 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([2 x i8*]* @__const.SetupWinPE.patch_str_org to i8*), i64 16, i1 false)
  %22 = bitcast [2 x [2 x i8*]]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([2 x [2 x i8*]]* @__const.SetupWinPE.patch_str_rep to i8*), i64 32, i1 false)
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  %23 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  %24 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %24, i64* %12, align 8
  store i32 0, i32* %17, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %18, align 4
  store i8* null, i8** %19, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 0), align 8
  %27 = load i32, i32* @WINPE_AMD64, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @WINPE_AMD64, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 1, i32* %17, align 4
  br label %40

32:                                               ; preds = %1
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 0), align 8
  %34 = load i32, i32* @WINPE_MININT, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @WINPE_MININT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 2, i32* %17, align 4
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %39, %31
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %42 = load i32, i32* @hDiskID, align 4
  %43 = call i32 @ComboBox_GetCurSel(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = call i32 (i8*, i8*, i8, ...) @static_sprintf(i8* %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i8 signext %44)
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %47 = load i8, i8* %2, align 1
  %48 = load i32, i32* %17, align 4
  %49 = sdiv i32 %48, 2
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i8*, i8, ...) @static_sprintf(i8* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8 signext %47, i8* %53)
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %56 = load i8, i8* %2, align 1
  %57 = call i32 (i8*, i8*, i8, ...) @static_sprintf(i8* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8 signext %56)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @CopyFileA(i8* %58, i8* %59, i32 %60)
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 1), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %98, label %64

64:                                               ; preds = %40
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %66 = load i8, i8* %2, align 1
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, i8*, i8, ...) @static_sprintf(i8* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8 signext %66, i8* %70)
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %73 = load i8, i8* %2, align 1
  %74 = call i32 (i8*, i8*, i8, ...) @static_sprintf(i8* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8 signext %73)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i32 @CopyFileA(i8* %75, i8* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %64
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %83 = call i8* (...) @WindowsErrorString()
  %84 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* %81, i8* %82, i8* %83)
  br label %85

85:                                               ; preds = %80, %64
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32* @insert_section_data(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* %87, i32 %88)
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %93 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i8* %92)
  br label %429

94:                                               ; preds = %85
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %97 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %95, i8* %96)
  br label %98

98:                                               ; preds = %94, %40
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %100 = load i8, i8* %2, align 1
  %101 = load i32, i32* %17, align 4
  %102 = sdiv i32 %101, 2
  %103 = mul nsw i32 2, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i8*, i8*, i8, ...) @static_sprintf(i8* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8 signext %100, i8* %106)
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %109 = load i8, i8* %2, align 1
  %110 = call i32 (i8*, i8*, i8, ...) @static_sprintf(i8* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8 signext %109)
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i32 @CopyFileA(i8* %111, i8* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %98
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %119 = call i8* (...) @WindowsErrorString()
  %120 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* %117, i8* %118, i8* %119)
  br label %121

121:                                              ; preds = %116, %98
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 0), align 8
  %123 = load i32, i32* @WINPE_MININT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %121
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 1), align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i64 0, i64 0))
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %18, align 4
  br label %142

132:                                              ; preds = %126
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 0), align 8
  %134 = load i32, i32* @WINPE_I386, align 4
  %135 = load i32, i32* @WINPE_AMD64, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %133, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %132
  %140 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.23, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %132
  br label %142

142:                                              ; preds = %141, %129
  br label %429

143:                                              ; preds = %121
  %144 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %145 = load i32, i32* @GENERIC_READ, align 4
  %146 = load i32, i32* @GENERIC_WRITE, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @FILE_SHARE_READ, align 4
  %149 = load i32, i32* @OPEN_EXISTING, align 4
  %150 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %151 = call i64 @CreateFileA(i8* %144, i32 %147, i32 %148, i32* null, i32 %149, i32 %150, i32* null)
  store i64 %151, i64* %12, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %143
  %156 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %157 = call i8* (...) @WindowsErrorString()
  %158 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* %156, i8* %157)
  br label %429

159:                                              ; preds = %143
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @GetFileSize(i64 %160, i32* null)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @INVALID_FILE_SIZE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %167 = call i8* (...) @WindowsErrorString()
  %168 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i8* %166, i8* %167)
  br label %429

169:                                              ; preds = %159
  %170 = load i32, i32* %15, align 4
  %171 = call i64 @malloc(i32 %170)
  %172 = inttoptr i64 %171 to i8*
  store i8* %172, i8** %19, align 8
  %173 = load i8*, i8** %19, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %429

176:                                              ; preds = %169
  %177 = load i64, i64* %12, align 8
  %178 = load i8*, i8** %19, align 8
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @ReadFile(i64 %177, i8* %178, i32 %179, i32* %16, i32* null)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %182, %176
  %187 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %188 = call i8* (...) @WindowsErrorString()
  %189 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i8* %187, i8* %188)
  br label %429

190:                                              ; preds = %182
  %191 = load i64, i64* %12, align 8
  %192 = load i32, i32* @FILE_BEGIN, align 4
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %194 = bitcast %struct.TYPE_5__* %193 to i64*
  %195 = load i64, i64* %194, align 4
  %196 = call i32 @SetFilePointerEx(i64 %191, i64 %195, i32* null, i32 %192)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %190
  %199 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %200 = call i8* (...) @WindowsErrorString()
  %201 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i8* %199, i8* %200)
  br label %429

202:                                              ; preds = %190
  %203 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %204 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i8* %203)
  %205 = load i32, i32* %15, align 4
  %206 = icmp sgt i32 %205, 8289
  br i1 %206, label %207, label %225

207:                                              ; preds = %202
  %208 = load i8*, i8** %19, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 8288
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 116
  br i1 %212, label %213, label %225

213:                                              ; preds = %207
  %214 = load i8*, i8** %19, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 8289
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 3
  br i1 %218, label %219, label %225

219:                                              ; preds = %213
  %220 = load i8*, i8** %19, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 8288
  store i8 -21, i8* %221, align 1
  %222 = load i8*, i8** %19, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 8289
  store i8 26, i8* %223, align 1
  %224 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i64 0, i64 0))
  br label %225

225:                                              ; preds = %219, %213, %207, %202
  store i32 1, i32* %13, align 4
  br label %226

226:                                              ; preds = %302, %225
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* %15, align 4
  %229 = sub nsw i32 %228, 32
  %230 = icmp slt i32 %227, %229
  br i1 %230, label %231, label %305

231:                                              ; preds = %226
  store i32 0, i32* %14, align 4
  br label %232

232:                                              ; preds = %298, %231
  %233 = load i32, i32* %14, align 4
  %234 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %235 = call i32 @ARRAYSIZE(i8** %234)
  %236 = icmp slt i32 %233, %235
  br i1 %236, label %237, label %301

237:                                              ; preds = %232
  %238 = load i8*, i8** %19, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @strlen(i8* %249)
  %251 = sub nsw i32 %250, 1
  %252 = call i64 @safe_strnicmp(i8* %241, i8* %245, i32 %251)
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %297

254:                                              ; preds = %237
  %255 = load i32, i32* %13, align 4
  %256 = load i8*, i8** %19, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  %260 = load i32, i32* %17, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [2 x [2 x i8*]], [2 x [2 x i8*]]* %7, i64 0, i64 %261
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [2 x i8*], [2 x i8*]* %262, i64 0, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 %255, i8* %259, i8* %266)
  %268 = load i8*, i8** %19, align 8
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i32, i32* %17, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [2 x [2 x i8*]], [2 x [2 x i8*]]* %7, i64 0, i64 %273
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [2 x i8*], [2 x i8*]* %274, i64 0, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @strcpy(i8* %271, i8* %278)
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %281
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @strlen(i8* %283)
  %285 = load i32, i32* %17, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [2 x [2 x i8*]], [2 x [2 x i8*]]* %7, i64 0, i64 %286
  %288 = load i32, i32* %14, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [2 x i8*], [2 x i8*]* %287, i64 0, i64 %289
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @strlen(i8* %291)
  %293 = call i64 @max(i32 %284, i32 %292)
  %294 = trunc i64 %293 to i32
  %295 = load i32, i32* %13, align 4
  %296 = add nsw i32 %295, %294
  store i32 %296, i32* %13, align 4
  br label %297

297:                                              ; preds = %254, %237
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %14, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %14, align 4
  br label %232

301:                                              ; preds = %232
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %13, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %13, align 4
  br label %226

305:                                              ; preds = %226
  %306 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @img_report, i32 0, i32 1), align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %417, label %308

308:                                              ; preds = %305
  store i32 0, i32* %13, align 4
  br label %309

309:                                              ; preds = %413, %308
  %310 = load i32, i32* %13, align 4
  %311 = load i32, i32* %15, align 4
  %312 = sub nsw i32 %311, 32
  %313 = icmp slt i32 %310, %312
  br i1 %313, label %314, label %416

314:                                              ; preds = %309
  %315 = load i8*, i8** %19, align 8
  %316 = load i32, i32* %13, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %315, i64 %317
  %319 = load i8*, i8** %9, align 8
  %320 = load i8*, i8** %9, align 8
  %321 = call i32 @strlen(i8* %320)
  %322 = sub nsw i32 %321, 1
  %323 = call i64 @safe_strnicmp(i8* %318, i8* %319, i32 %322)
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %345

325:                                              ; preds = %314
  %326 = load i32, i32* @hDiskID, align 4
  %327 = call i32 @ComboBox_GetCurSel(i32 %326)
  %328 = add nsw i32 48, %327
  %329 = trunc i32 %328 to i8
  %330 = load i8*, i8** %19, align 8
  %331 = load i32, i32* %13, align 4
  %332 = add nsw i32 %331, 6
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, i8* %330, i64 %333
  store i8 %329, i8* %334, align 1
  %335 = load i32, i32* %13, align 4
  %336 = load i8*, i8** %9, align 8
  %337 = load i8*, i8** %19, align 8
  %338 = load i32, i32* %13, align 4
  %339 = add nsw i32 %338, 6
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %337, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i32 %335, i8* %336, i32 %343)
  br label %345

345:                                              ; preds = %325, %314
  %346 = load i8*, i8** %19, align 8
  %347 = load i32, i32* %13, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i8*, i8** %8, align 8
  %351 = load i8*, i8** %8, align 8
  %352 = call i32 @strlen(i8* %351)
  %353 = sub nsw i32 %352, 1
  %354 = call i64 @safe_strnicmp(i8* %349, i8* %350, i32 %353)
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %412

356:                                              ; preds = %345
  %357 = load i32, i32* %13, align 4
  %358 = load i8*, i8** %19, align 8
  %359 = load i32, i32* %13, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, i8* %358, i64 %360
  %362 = load i32, i32* %17, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %363
  %365 = load i8*, i8** %364, align 8
  %366 = load i8*, i8** %19, align 8
  %367 = load i32, i32* %13, align 4
  %368 = load i8*, i8** %8, align 8
  %369 = call i32 @strlen(i8* %368)
  %370 = add nsw i32 %367, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %366, i64 %371
  %373 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i32 %357, i8* %361, i8* %365, i8* %372)
  %374 = load i8*, i8** %19, align 8
  %375 = load i32, i32* %13, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  %378 = load i32, i32* %17, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %379
  %381 = load i8*, i8** %380, align 8
  %382 = call i32 @strcpy(i8* %377, i8* %381)
  %383 = load i8*, i8** %19, align 8
  %384 = load i32, i32* %13, align 4
  %385 = load i8*, i8** %8, align 8
  %386 = call i32 @strlen(i8* %385)
  %387 = add nsw i32 %384, %386
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %383, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = load i8*, i8** %19, align 8
  %392 = load i32, i32* %13, align 4
  %393 = load i32, i32* %17, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %394
  %396 = load i8*, i8** %395, align 8
  %397 = call i32 @strlen(i8* %396)
  %398 = add nsw i32 %392, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %391, i64 %399
  store i8 %390, i8* %400, align 1
  %401 = load i8*, i8** %19, align 8
  %402 = load i32, i32* %13, align 4
  %403 = load i32, i32* %17, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %404
  %406 = load i8*, i8** %405, align 8
  %407 = call i32 @strlen(i8* %406)
  %408 = add nsw i32 %402, %407
  %409 = add nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8, i8* %401, i64 %410
  store i8 0, i8* %411, align 1
  br label %412

412:                                              ; preds = %356, %345
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %13, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %13, align 4
  br label %309

416:                                              ; preds = %309
  br label %417

417:                                              ; preds = %416, %305
  %418 = load i64, i64* %12, align 8
  %419 = load i8*, i8** %19, align 8
  %420 = load i32, i32* %15, align 4
  %421 = load i32, i32* @WRITE_RETRIES, align 4
  %422 = call i32 @WriteFileWithRetry(i64 %418, i8* %419, i32 %420, i32* %16, i32 %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %417
  %425 = call i8* (...) @WindowsErrorString()
  %426 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i8* %425)
  br label %429

427:                                              ; preds = %417
  %428 = load i32, i32* @TRUE, align 4
  store i32 %428, i32* %18, align 4
  br label %429

429:                                              ; preds = %427, %424, %198, %186, %175, %165, %155, %142, %91
  %430 = load i64, i64* %12, align 8
  %431 = call i32 @safe_closehandle(i64 %430)
  %432 = load i8*, i8** %19, align 8
  %433 = call i32 @safe_free(i8* %432)
  %434 = load i32, i32* %18, align 4
  ret i32 %434
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @static_sprintf(i8*, i8*, i8 signext, ...) #2

declare dso_local i32 @ComboBox_GetCurSel(i32) #2

declare dso_local i32 @CopyFileA(i8*, i8*, i32) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i8* @WindowsErrorString(...) #2

declare dso_local i32* @insert_section_data(i8*, i8*, i8*, i32) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @GetFileSize(i64, i32*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @SetFilePointerEx(i64, i64, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i8**) #2

declare dso_local i64 @safe_strnicmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @max(i32, i32) #2

declare dso_local i32 @WriteFileWithRetry(i64, i8*, i32, i32*, i32) #2

declare dso_local i32 @safe_closehandle(i64) #2

declare dso_local i32 @safe_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
