; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLInstallDriverEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLInstallDriverEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ODBC_CONFIG_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WINE ODBC Driver\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"CPTimeout=59\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"SQLConfigDriver returned %d\0A\00", align 1
@ODBC_ERROR_COMPONENT_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"SQLConfigDriver returned %d, %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"WINE ODBC Driver\00Driver=sample.dll\00Setup=sample.dll\00\00\00", align 1
@ODBC_INSTALL_COMPLETE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"SQLInstallDriverEx failed\0A\00", align 1
@ODBC_ERROR_WRITING_SYSINFO_FAILED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"not enough privileges\0A\00", align 1
@SQL_NO_DATA = common dso_local global i32 0, align 4
@SQL_SUCCESS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"SQLInstallDriverEx failed %d, %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"invalid path %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"CPTimeout=59\00NoWrite=60\00\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"SQLConfigDriver failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"SQLConfigDriver failed %d, %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"WINE ODBC Driver Path\00Driver=sample.dll\00Setup=sample.dll\00\00\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"c:\\temp\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"WINE ODBC Driver Path\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"SQLConfigDriver successful\0A\00", align 1
@ODBC_ERROR_INVALID_KEYWORD_VALUE = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"NoWrite=60;xxxx=555\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [44 x i8] c"Software\\ODBC\\ODBCINST.INI\\WINE ODBC Driver\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"RegOpenKeyExW failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"\\sample.dll\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Driver\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"CPTimeout\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"59\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"invalid value %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"NoWrite\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [49 x i8] c"Software\\ODBC\\ODBCINST.INI\\WINE ODBC Driver Path\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"60;xxxx=555\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [24 x i8] c"SQLRemoveDriver failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"SQLRemoveDriver failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SQLInstallDriverEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SQLInstallDriverEx() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [1000 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %1, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %2, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %8, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = call i32 @GetSystemDirectoryA(i8* %23, i32 %24)
  %26 = load i32, i32* @ODBC_CONFIG_DRIVER, align 4
  %27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %28 = call i32 @SQLConfigDriver(i32* null, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 1000, i32* null)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = call i32 @SQLInstallerErrorW(i32 1, i64* %8, i32* null, i32 0, i32* null)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %0
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @ODBC_ERROR_COMPONENT_NOT_FOUND, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %38, %0
  %43 = phi i1 [ false, %0 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %45, i64 %46)
  %48 = load i32, i32* @MAX_PATH, align 4
  %49 = load i32, i32* @ODBC_INSTALL_COMPLETE, align 4
  %50 = call i32 @SQLInstallDriverEx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* null, i8* %20, i32 %48, i32* %4, i32 %49, i32* null)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %53 = call i32 @SQLInstallerErrorW(i32 1, i64* %8, i32* null, i32 0, i32* null)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %42
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @ODBC_ERROR_WRITING_SYSINFO_FAILED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @win_skip(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %346

62:                                               ; preds = %56, %42
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @SQL_NO_DATA, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @SQL_SUCCESS, align 8
  %72 = icmp eq i64 %70, %71
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi i1 [ true, %62 ], [ %74, %73 ]
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %6, align 4
  %79 = load i64, i64* %8, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %78, i64 %79)
  %81 = call i32 @strcmp(i8* %20, i8* %23)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %20)
  %86 = load i32, i32* @ODBC_CONFIG_DRIVER, align 4
  %87 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %88 = call i32 @SQLConfigDriver(i32* null, i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %87, i32 1000, i32* null)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %91 = call i32 @SQLInstallerErrorW(i32 1, i64* %8, i32* null, i32 0, i32* null)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @SQL_NO_DATA, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %75
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @SQL_SUCCESS, align 8
  %101 = icmp eq i64 %99, %100
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i1 [ false, %95 ], [ %101, %98 ]
  br label %104

104:                                              ; preds = %102, %75
  %105 = phi i1 [ true, %75 ], [ %103, %102 ]
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %6, align 4
  %108 = load i64, i64* %8, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %107, i64 %108)
  %110 = load i32, i32* @MAX_PATH, align 4
  %111 = load i32, i32* @ODBC_INSTALL_COMPLETE, align 4
  %112 = call i32 @SQLInstallDriverEx(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %20, i32 %110, i32* %4, i32 %111, i32* null)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %115 = call i32 @SQLInstallerErrorW(i32 1, i64* %8, i32* null, i32 0, i32* null)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @SQL_NO_DATA, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %128, label %119

119:                                              ; preds = %104
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* @SQL_SUCCESS, align 8
  %125 = icmp eq i64 %123, %124
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i1 [ false, %119 ], [ %125, %122 ]
  br label %128

128:                                              ; preds = %126, %104
  %129 = phi i1 [ true, %104 ], [ %127, %126 ]
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %6, align 4
  %132 = load i64, i64* %8, align 8
  %133 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %131, i64 %132)
  %134 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %20)
  %139 = load i32, i32* @ODBC_CONFIG_DRIVER, align 4
  %140 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %141 = call i32 @SQLConfigDriver(i32* null, i32 %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %140, i32 1000, i32* null)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %147 = call i32 @SQLInstallerErrorW(i32 1, i64* %8, i32* null, i32 0, i32* null)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %128
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* @ODBC_ERROR_INVALID_KEYWORD_VALUE, align 8
  %153 = icmp eq i64 %151, %152
  br label %154

154:                                              ; preds = %150, %128
  %155 = phi i1 [ false, %128 ], [ %153, %150 ]
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %6, align 4
  %158 = load i64, i64* %8, align 8
  %159 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %157, i64 %158)
  %160 = load i32, i32* @ODBC_CONFIG_DRIVER, align 4
  %161 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %162 = call i32 @SQLConfigDriver(i32* null, i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* %161, i32 1000, i32* null)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %165 = call i32 @SQLInstallerErrorW(i32 1, i64* %8, i32* null, i32 0, i32* null)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @SQL_NO_DATA, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %178, label %169

169:                                              ; preds = %154
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i64, i64* %8, align 8
  %174 = load i64, i64* @SQL_SUCCESS, align 8
  %175 = icmp eq i64 %173, %174
  br label %176

176:                                              ; preds = %172, %169
  %177 = phi i1 [ false, %169 ], [ %175, %172 ]
  br label %178

178:                                              ; preds = %176, %154
  %179 = phi i1 [ true, %154 ], [ %177, %176 ]
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %6, align 4
  %182 = load i64, i64* %8, align 8
  %183 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %181, i64 %182)
  %184 = load i32, i32* %5, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %327

186:                                              ; preds = %178
  store i64 3735928559, i64* %13, align 8
  %187 = load i32, i32* @MAX_PATH, align 4
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %14, align 8
  %189 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %190 = load i32, i32* @KEY_READ, align 4
  %191 = call i64 @RegOpenKeyExA(i32 %189, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 0, i32 %190, i32* %9)
  store i64 %191, i64* %10, align 8
  %192 = load i64, i64* %10, align 8
  %193 = load i64, i64* @ERROR_SUCCESS, align 8
  %194 = icmp eq i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* @ERROR_SUCCESS, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %275

200:                                              ; preds = %186
  %201 = load i32, i32* @MAX_PATH, align 4
  %202 = zext i32 %201 to i64
  %203 = call i8* @llvm.stacksave()
  store i8* %203, i8** %15, align 8
  %204 = alloca i8, i64 %202, align 16
  store i64 %202, i64* %16, align 8
  %205 = call i32 @strcpy(i8* %204, i8* %23)
  %206 = call i32 @strcat(i8* %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %207 = trunc i64 %18 to i32
  %208 = call i32 @memset(i8* %20, i32 0, i32 %207)
  %209 = load i32, i32* %9, align 4
  %210 = bitcast i8* %20 to i32*
  %211 = call i64 @RegQueryValueExA(i32 %209, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32* null, i64* %13, i32* %210, i64* %14)
  store i64 %211, i64* %10, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load i64, i64* @ERROR_SUCCESS, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i64, i64* %10, align 8
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 %216)
  %218 = load i64, i64* %13, align 8
  %219 = load i64, i64* @REG_SZ, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i64, i64* %13, align 8
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 %222)
  %224 = load i64, i64* %14, align 8
  %225 = call i64 @strlen(i8* %204)
  %226 = add nsw i64 %225, 1
  %227 = icmp eq i64 %224, %226
  %228 = zext i1 %227 to i32
  %229 = load i64, i64* %14, align 8
  %230 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 %229)
  %231 = call i32 @strcmp(i8* %20, i8* %204)
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %20)
  %236 = load i32, i32* %9, align 4
  %237 = bitcast i8* %20 to i32*
  %238 = call i64 @RegQueryValueExA(i32 %236, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32* null, i64* %13, i32* %237, i64* %14)
  store i64 %238, i64* %10, align 8
  %239 = load i64, i64* %10, align 8
  %240 = load i64, i64* @ERROR_SUCCESS, align 8
  %241 = icmp eq i64 %239, %240
  %242 = zext i1 %241 to i32
  %243 = load i64, i64* %10, align 8
  %244 = call i32 (i32, i8*, ...) @ok(i32 %242, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 %243)
  %245 = load i64, i64* %13, align 8
  %246 = load i64, i64* @REG_SZ, align 8
  %247 = icmp eq i64 %245, %246
  %248 = zext i1 %247 to i32
  %249 = load i64, i64* %13, align 8
  %250 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 %249)
  %251 = load i64, i64* %14, align 8
  %252 = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %253 = add nsw i64 %252, 1
  %254 = icmp eq i64 %251, %253
  %255 = zext i1 %254 to i32
  %256 = load i64, i64* %14, align 8
  %257 = call i32 (i32, i8*, ...) @ok(i32 %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 %256)
  %258 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %259 = icmp ne i32 %258, 0
  %260 = xor i1 %259, true
  %261 = zext i1 %260 to i32
  %262 = call i32 (i32, i8*, ...) @ok(i32 %261, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* %20)
  %263 = load i32, i32* %9, align 4
  %264 = bitcast i8* %20 to i32*
  %265 = call i64 @RegQueryValueExA(i32 %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32* null, i64* %13, i32* %264, i64* %14)
  store i64 %265, i64* %10, align 8
  %266 = load i64, i64* %10, align 8
  %267 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %268 = icmp eq i64 %266, %267
  %269 = zext i1 %268 to i32
  %270 = load i64, i64* %10, align 8
  %271 = call i32 (i32, i8*, ...) @ok(i32 %269, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 %270)
  %272 = load i32, i32* %9, align 4
  %273 = call i32 @RegCloseKey(i32 %272)
  %274 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %274)
  br label %275

275:                                              ; preds = %200, %186
  %276 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %277 = load i32, i32* @KEY_READ, align 4
  %278 = call i64 @RegOpenKeyExA(i32 %276, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.28, i64 0, i64 0), i32 0, i32 %277, i32* %9)
  store i64 %278, i64* %10, align 8
  %279 = load i64, i64* %10, align 8
  %280 = load i64, i64* @ERROR_SUCCESS, align 8
  %281 = icmp eq i64 %279, %280
  %282 = zext i1 %281 to i32
  %283 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %284 = load i64, i64* %10, align 8
  %285 = load i64, i64* @ERROR_SUCCESS, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %326

287:                                              ; preds = %275
  store i64 %18, i64* %14, align 8
  %288 = load i32, i32* %9, align 4
  %289 = bitcast i8* %20 to i32*
  %290 = call i64 @RegQueryValueExA(i32 %288, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32* null, i64* %13, i32* %289, i64* %14)
  store i64 %290, i64* %10, align 8
  %291 = load i64, i64* %10, align 8
  %292 = load i64, i64* @ERROR_SUCCESS, align 8
  %293 = icmp eq i64 %291, %292
  %294 = zext i1 %293 to i32
  %295 = load i64, i64* %10, align 8
  %296 = call i32 (i32, i8*, ...) @ok(i32 %294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 %295)
  %297 = load i64, i64* %13, align 8
  %298 = load i64, i64* @REG_SZ, align 8
  %299 = icmp eq i64 %297, %298
  %300 = zext i1 %299 to i32
  %301 = load i64, i64* %13, align 8
  %302 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 %301)
  %303 = load i64, i64* %14, align 8
  %304 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %305 = add nsw i64 %304, 1
  %306 = icmp eq i64 %303, %305
  %307 = zext i1 %306 to i32
  %308 = load i64, i64* %14, align 8
  %309 = call i32 (i32, i8*, ...) @ok(i32 %307, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 %308)
  %310 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  %313 = zext i1 %312 to i32
  %314 = call i32 (i32, i8*, ...) @ok(i32 %313, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* %20)
  %315 = load i32, i32* %9, align 4
  %316 = bitcast i8* %20 to i32*
  %317 = call i64 @RegQueryValueExA(i32 %315, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32* null, i64* %13, i32* %316, i64* %14)
  store i64 %317, i64* %10, align 8
  %318 = load i64, i64* %10, align 8
  %319 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %320 = icmp eq i64 %318, %319
  %321 = zext i1 %320 to i32
  %322 = load i64, i64* %10, align 8
  %323 = call i32 (i32, i8*, ...) @ok(i32 %321, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 %322)
  %324 = load i32, i32* %9, align 4
  %325 = call i32 @RegCloseKey(i32 %324)
  br label %326

326:                                              ; preds = %287, %275
  br label %327

327:                                              ; preds = %326, %178
  store i64 100, i64* %7, align 8
  %328 = load i32, i32* @FALSE, align 4
  %329 = call i32 @SQLRemoveDriver(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %328, i64* %7)
  store i32 %329, i32* %5, align 4
  %330 = load i32, i32* %5, align 4
  %331 = call i32 (i32, i8*, ...) @ok(i32 %330, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0))
  %332 = load i64, i64* %7, align 8
  %333 = icmp eq i64 %332, 0
  %334 = zext i1 %333 to i32
  %335 = load i64, i64* %7, align 8
  %336 = call i32 (i32, i8*, ...) @ok(i32 %334, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i64 %335)
  store i64 100, i64* %7, align 8
  %337 = load i32, i32* @FALSE, align 4
  %338 = call i32 @SQLRemoveDriver(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %337, i64* %7)
  store i32 %338, i32* %5, align 4
  %339 = load i32, i32* %5, align 4
  %340 = call i32 (i32, i8*, ...) @ok(i32 %339, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0))
  %341 = load i64, i64* %7, align 8
  %342 = icmp eq i64 %341, 0
  %343 = zext i1 %342 to i32
  %344 = load i64, i64* %7, align 8
  %345 = call i32 (i32, i8*, ...) @ok(i32 %343, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i64 %344)
  store i32 0, i32* %12, align 4
  br label %346

346:                                              ; preds = %327, %60
  %347 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %347)
  %348 = load i32, i32* %12, align 4
  switch i32 %348, label %350 [
    i32 0, label %349
    i32 1, label %349
  ]

349:                                              ; preds = %346, %346
  ret void

350:                                              ; preds = %346
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSystemDirectoryA(i8*, i32) #2

declare dso_local i32 @SQLConfigDriver(i32*, i32, i8*, i8*, i8*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SQLInstallerErrorW(i32, i64*, i32*, i32, i32*) #2

declare dso_local i32 @SQLInstallDriverEx(i8*, i8*, i8*, i32, i32*, i32, i32*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i64*, i32*, i64*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @SQLRemoveDriver(i8*, i32, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
