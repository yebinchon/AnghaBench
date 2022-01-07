; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_openfile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_openfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"welcome.msg\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FTP_TRANSFER_TYPE_ASCII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Expected FtpOpenFileA to fail\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Expected ERROR_INVALID_HANDLE, got %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@ERROR_INTERNET_EXTENDED_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [83 x i8] c"Expected ERROR_INTERNET_EXTENDED_ERROR or ERROR_INVALID_PARAMETER (win98), got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Expected FtpOpenFileA to succeed\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"new_directory_deadbeef\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"Expected FtpCreateDirectoryA to fail\0A\00", align 1
@ERROR_FTP_TRANSFER_IN_PROGRESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [49 x i8] c"Expected ERROR_FTP_TRANSFER_IN_PROGRESS, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"non_existent_file_deadbeef\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Expected FtpDeleteFileA to fail\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"should_be_non_existing_deadbeef\00", align 1
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FTP_TRANSFER_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"Expected FtpGetFileA to fail\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"now_existing_local\00", align 1
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"Error creating a local file : %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"non_existing_remote\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Expected FtpPutFileA to fail\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"should_be_non_existing_deadbeef_dir\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Expected FtpRemoveDirectoryA to fail\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Expected FtpRenameFileA to fail\0A\00", align 1
@ERROR_INTERNET_INCORRECT_HANDLE_TYPE = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [55 x i8] c"Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_openfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_openfile(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = call i32 @SetLastError(i32 -559038737)
  %11 = load i32, i32* @GENERIC_READ, align 4
  %12 = load i32, i32* @FTP_TRANSFER_TYPE_ASCII, align 4
  %13 = call i32* @FtpOpenFileA(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 0)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i64 (...) @GetLastError()
  %20 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @InternetCloseHandle(i32* %25)
  %27 = call i32 @SetLastError(i32 -559038737)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @GENERIC_READ, align 4
  %30 = load i32, i32* @FTP_TRANSFER_TYPE_ASCII, align 4
  %31 = call i32* @FtpOpenFileA(i32* %28, i8* null, i32 %29, i32 %30, i32 0)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i64 (...) @GetLastError()
  %38 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @InternetCloseHandle(i32* %43)
  %45 = call i32 @SetLastError(i32 -559038737)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @FTP_TRANSFER_TYPE_ASCII, align 4
  %48 = call i32* @FtpOpenFileA(i32* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 %47, i32 0)
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @InternetCloseHandle(i32* %60)
  %62 = call i32 @SetLastError(i32 -559038737)
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @GENERIC_READ, align 4
  %65 = load i32, i32* @GENERIC_WRITE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FTP_TRANSFER_TYPE_ASCII, align 4
  %68 = call i32* @FtpOpenFileA(i32* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 0)
  store i32* %68, i32** %5, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = icmp ne i32* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i64 (...) @GetLastError()
  %75 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @InternetCloseHandle(i32* %80)
  %82 = call i32 @SetLastError(i32 -559038737)
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* @GENERIC_READ, align 4
  %85 = call i32* @FtpOpenFileA(i32* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %84, i32 -1, i32 0)
  store i32* %85, i32** %5, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = icmp ne i32* %86, null
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %91 = call i64 (...) @GetLastError()
  %92 = load i64, i64* @ERROR_INTERNET_EXTENDED_ERROR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %2
  %95 = call i64 (...) @GetLastError()
  %96 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %94, %2
  %99 = phi i1 [ true, %2 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  %101 = call i64 (...) @GetLastError()
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @InternetCloseHandle(i32* %103)
  %105 = call i32 @SetLastError(i32 -559038737)
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* @GENERIC_READ, align 4
  %108 = load i32, i32* @FTP_TRANSFER_TYPE_ASCII, align 4
  %109 = call i32* @FtpOpenFileA(i32* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %108, i32 0)
  store i32* %109, i32** %5, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = icmp ne i32* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %114 = call i64 (...) @GetLastError()
  %115 = load i64, i64* @ERROR_SUCCESS, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %98
  %118 = call i64 (...) @GetLastError()
  %119 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @broken(i32 %121)
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %117, %98
  %125 = phi i1 [ true, %98 ], [ %123, %117 ]
  %126 = zext i1 %125 to i32
  %127 = call i64 (...) @GetLastError()
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %127)
  %129 = load i32*, i32** %5, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %343

131:                                              ; preds = %124
  %132 = call i32 @SetLastError(i32 -559038737)
  %133 = load i32*, i32** %3, align 8
  %134 = call i64 @FtpCreateDirectoryA(i32* %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i64 %134, i64* %6, align 8
  %135 = call i64 (...) @GetLastError()
  store i64 %135, i64* %7, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* @FALSE, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* @ERROR_FTP_TRANSFER_IN_PROGRESS, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %151, label %144

144:                                              ; preds = %131
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* @ERROR_INTERNET_EXTENDED_ERROR, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i64 @broken(i32 %148)
  %150 = icmp ne i64 %149, 0
  br label %151

151:                                              ; preds = %144, %131
  %152 = phi i1 [ true, %131 ], [ %150, %144 ]
  %153 = zext i1 %152 to i32
  %154 = load i64, i64* %7, align 8
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %154)
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @trace_extended_error(i64 %156)
  %158 = call i32 @SetLastError(i32 -559038737)
  %159 = load i32*, i32** %3, align 8
  %160 = call i64 @FtpDeleteFileA(i32* %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  store i64 %160, i64* %6, align 8
  %161 = call i64 (...) @GetLastError()
  store i64 %161, i64* %7, align 8
  %162 = load i64, i64* %6, align 8
  %163 = load i64, i64* @FALSE, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @ERROR_FTP_TRANSFER_IN_PROGRESS, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %177, label %170

170:                                              ; preds = %151
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* @ERROR_INTERNET_EXTENDED_ERROR, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i64 @broken(i32 %174)
  %176 = icmp ne i64 %175, 0
  br label %177

177:                                              ; preds = %170, %151
  %178 = phi i1 [ true, %151 ], [ %176, %170 ]
  %179 = zext i1 %178 to i32
  %180 = load i64, i64* %7, align 8
  %181 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %180)
  %182 = load i64, i64* %7, align 8
  %183 = call i32 @trace_extended_error(i64 %182)
  %184 = call i32 @SetLastError(i32 -559038737)
  %185 = load i32*, i32** %3, align 8
  %186 = load i64, i64* @FALSE, align 8
  %187 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %188 = load i32, i32* @FTP_TRANSFER_TYPE_UNKNOWN, align 4
  %189 = call i64 @FtpGetFileA(i32* %185, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i64 %186, i32 %187, i32 %188, i32 0)
  store i64 %189, i64* %6, align 8
  %190 = call i64 (...) @GetLastError()
  store i64 %190, i64* %7, align 8
  %191 = load i64, i64* %6, align 8
  %192 = load i64, i64* @FALSE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %201, label %194

194:                                              ; preds = %177
  %195 = load i64, i64* %6, align 8
  %196 = load i64, i64* @TRUE, align 8
  %197 = icmp eq i64 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i64 @broken(i32 %198)
  %200 = icmp ne i64 %199, 0
  br label %201

201:                                              ; preds = %194, %177
  %202 = phi i1 [ true, %177 ], [ %200, %194 ]
  %203 = zext i1 %202 to i32
  %204 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %205 = load i64, i64* %7, align 8
  %206 = load i64, i64* @ERROR_FTP_TRANSFER_IN_PROGRESS, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %215, label %208

208:                                              ; preds = %201
  %209 = load i64, i64* %7, align 8
  %210 = load i64, i64* @ERROR_SUCCESS, align 8
  %211 = icmp eq i64 %209, %210
  %212 = zext i1 %211 to i32
  %213 = call i64 @broken(i32 %212)
  %214 = icmp ne i64 %213, 0
  br label %215

215:                                              ; preds = %208, %201
  %216 = phi i1 [ true, %201 ], [ %214, %208 ]
  %217 = zext i1 %216 to i32
  %218 = load i64, i64* %7, align 8
  %219 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %218)
  %220 = call i32 @DeleteFileA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %221 = call i32 @SetLastError(i32 -559038737)
  %222 = load i32*, i32** %3, align 8
  %223 = load i32, i32* @GENERIC_READ, align 4
  %224 = load i32, i32* @FTP_TRANSFER_TYPE_ASCII, align 4
  %225 = call i32* @FtpOpenFileA(i32* %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %223, i32 %224, i32 0)
  store i32* %225, i32** %8, align 8
  %226 = call i64 (...) @GetLastError()
  store i64 %226, i64* %7, align 8
  %227 = load i64, i64* %6, align 8
  %228 = load i64, i64* @FALSE, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %237, label %230

230:                                              ; preds = %215
  %231 = load i64, i64* %6, align 8
  %232 = load i64, i64* @TRUE, align 8
  %233 = icmp eq i64 %231, %232
  %234 = zext i1 %233 to i32
  %235 = call i64 @broken(i32 %234)
  %236 = icmp ne i64 %235, 0
  br label %237

237:                                              ; preds = %230, %215
  %238 = phi i1 [ true, %215 ], [ %236, %230 ]
  %239 = zext i1 %238 to i32
  %240 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %241 = load i64, i64* %7, align 8
  %242 = load i64, i64* @ERROR_FTP_TRANSFER_IN_PROGRESS, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %251, label %244

244:                                              ; preds = %237
  %245 = load i64, i64* %7, align 8
  %246 = load i64, i64* @ERROR_SUCCESS, align 8
  %247 = icmp eq i64 %245, %246
  %248 = zext i1 %247 to i32
  %249 = call i64 @broken(i32 %248)
  %250 = icmp ne i64 %249, 0
  br label %251

251:                                              ; preds = %244, %237
  %252 = phi i1 [ true, %237 ], [ %250, %244 ]
  %253 = zext i1 %252 to i32
  %254 = load i64, i64* %7, align 8
  %255 = call i32 (i32, i8*, ...) @ok(i32 %253, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %254)
  %256 = load i32*, i32** %8, align 8
  %257 = call i32 @InternetCloseHandle(i32* %256)
  %258 = call i32 @SetLastError(i32 -559038737)
  %259 = load i32, i32* @GENERIC_WRITE, align 4
  %260 = load i32, i32* @CREATE_ALWAYS, align 4
  %261 = call i32* @CreateFileA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %259, i32 0, i32* null, i32 %260, i32 0, i32* null)
  store i32* %261, i32** %9, align 8
  %262 = load i32*, i32** %9, align 8
  %263 = icmp ne i32* %262, null
  %264 = zext i1 %263 to i32
  %265 = call i64 (...) @GetLastError()
  %266 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i64 %265)
  %267 = load i32*, i32** %9, align 8
  %268 = call i32 @CloseHandle(i32* %267)
  %269 = call i32 @SetLastError(i32 -559038737)
  %270 = load i32*, i32** %3, align 8
  %271 = load i32, i32* @FTP_TRANSFER_TYPE_UNKNOWN, align 4
  %272 = call i64 @FtpPutFileA(i32* %270, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %271, i32 0)
  store i64 %272, i64* %6, align 8
  %273 = call i64 (...) @GetLastError()
  store i64 %273, i64* %7, align 8
  %274 = load i64, i64* %6, align 8
  %275 = load i64, i64* @FALSE, align 8
  %276 = icmp eq i64 %274, %275
  %277 = zext i1 %276 to i32
  %278 = call i32 (i32, i8*, ...) @ok(i32 %277, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %279 = load i64, i64* %7, align 8
  %280 = load i64, i64* @ERROR_FTP_TRANSFER_IN_PROGRESS, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %289, label %282

282:                                              ; preds = %251
  %283 = load i64, i64* %7, align 8
  %284 = load i64, i64* @ERROR_INTERNET_EXTENDED_ERROR, align 8
  %285 = icmp eq i64 %283, %284
  %286 = zext i1 %285 to i32
  %287 = call i64 @broken(i32 %286)
  %288 = icmp ne i64 %287, 0
  br label %289

289:                                              ; preds = %282, %251
  %290 = phi i1 [ true, %251 ], [ %288, %282 ]
  %291 = zext i1 %290 to i32
  %292 = load i64, i64* %7, align 8
  %293 = call i32 (i32, i8*, ...) @ok(i32 %291, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %292)
  %294 = call i32 @DeleteFileA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %295 = call i32 @SetLastError(i32 -559038737)
  %296 = load i32*, i32** %3, align 8
  %297 = call i64 @FtpRemoveDirectoryA(i32* %296, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  store i64 %297, i64* %6, align 8
  %298 = call i64 (...) @GetLastError()
  store i64 %298, i64* %7, align 8
  %299 = load i64, i64* %6, align 8
  %300 = load i64, i64* @FALSE, align 8
  %301 = icmp eq i64 %299, %300
  %302 = zext i1 %301 to i32
  %303 = call i32 (i32, i8*, ...) @ok(i32 %302, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  %304 = load i64, i64* %7, align 8
  %305 = load i64, i64* @ERROR_FTP_TRANSFER_IN_PROGRESS, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %314, label %307

307:                                              ; preds = %289
  %308 = load i64, i64* %7, align 8
  %309 = load i64, i64* @ERROR_INTERNET_EXTENDED_ERROR, align 8
  %310 = icmp eq i64 %308, %309
  %311 = zext i1 %310 to i32
  %312 = call i64 @broken(i32 %311)
  %313 = icmp ne i64 %312, 0
  br label %314

314:                                              ; preds = %307, %289
  %315 = phi i1 [ true, %289 ], [ %313, %307 ]
  %316 = zext i1 %315 to i32
  %317 = load i64, i64* %7, align 8
  %318 = call i32 (i32, i8*, ...) @ok(i32 %316, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %317)
  %319 = call i32 @SetLastError(i32 -559038737)
  %320 = load i32*, i32** %3, align 8
  %321 = call i64 @FtpRenameFileA(i32* %320, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  store i64 %321, i64* %6, align 8
  %322 = call i64 (...) @GetLastError()
  store i64 %322, i64* %7, align 8
  %323 = load i64, i64* %6, align 8
  %324 = load i64, i64* @FALSE, align 8
  %325 = icmp eq i64 %323, %324
  %326 = zext i1 %325 to i32
  %327 = call i32 (i32, i8*, ...) @ok(i32 %326, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %328 = load i64, i64* %7, align 8
  %329 = load i64, i64* @ERROR_FTP_TRANSFER_IN_PROGRESS, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %338, label %331

331:                                              ; preds = %314
  %332 = load i64, i64* %7, align 8
  %333 = load i64, i64* @ERROR_INTERNET_EXTENDED_ERROR, align 8
  %334 = icmp eq i64 %332, %333
  %335 = zext i1 %334 to i32
  %336 = call i64 @broken(i32 %335)
  %337 = icmp ne i64 %336, 0
  br label %338

338:                                              ; preds = %331, %314
  %339 = phi i1 [ true, %314 ], [ %337, %331 ]
  %340 = zext i1 %339 to i32
  %341 = load i64, i64* %7, align 8
  %342 = call i32 (i32, i8*, ...) @ok(i32 %340, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %341)
  br label %343

343:                                              ; preds = %338, %124
  %344 = load i32*, i32** %5, align 8
  %345 = call i32 @InternetCloseHandle(i32* %344)
  %346 = call i32 @SetLastError(i32 -559038737)
  %347 = load i32*, i32** %4, align 8
  %348 = load i32, i32* @GENERIC_READ, align 4
  %349 = call i32* @FtpOpenFileA(i32* %347, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %348, i32 5, i32 0)
  store i32* %349, i32** %5, align 8
  %350 = load i32*, i32** %5, align 8
  %351 = icmp ne i32* %350, null
  %352 = xor i1 %351, true
  %353 = zext i1 %352 to i32
  %354 = call i32 (i32, i8*, ...) @ok(i32 %353, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %355 = call i64 (...) @GetLastError()
  %356 = load i64, i64* @ERROR_INTERNET_INCORRECT_HANDLE_TYPE, align 8
  %357 = icmp eq i64 %355, %356
  %358 = zext i1 %357 to i32
  %359 = call i64 (...) @GetLastError()
  %360 = call i32 (i32, i8*, ...) @ok(i32 %358, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i64 %359)
  %361 = load i32*, i32** %5, align 8
  %362 = call i32 @InternetCloseHandle(i32* %361)
  %363 = call i32 @SetLastError(i32 -559038737)
  %364 = load i32*, i32** %4, align 8
  %365 = load i32, i32* @GENERIC_READ, align 4
  %366 = load i32, i32* @FTP_TRANSFER_TYPE_ASCII, align 4
  %367 = call i32* @FtpOpenFileA(i32* %364, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %365, i32 %366, i32 0)
  store i32* %367, i32** %5, align 8
  %368 = load i32*, i32** %5, align 8
  %369 = icmp eq i32* %368, null
  %370 = zext i1 %369 to i32
  %371 = call i32 (i32, i8*, ...) @ok(i32 %370, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %372 = call i64 (...) @GetLastError()
  %373 = load i64, i64* @ERROR_INTERNET_INCORRECT_HANDLE_TYPE, align 8
  %374 = icmp eq i64 %372, %373
  %375 = zext i1 %374 to i32
  %376 = call i64 (...) @GetLastError()
  %377 = call i32 (i32, i8*, ...) @ok(i32 %375, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i64 %376)
  %378 = load i32*, i32** %5, align 8
  %379 = call i32 @InternetCloseHandle(i32* %378)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @FtpOpenFileA(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @FtpCreateDirectoryA(i32*, i8*) #1

declare dso_local i32 @trace_extended_error(i64) #1

declare dso_local i64 @FtpDeleteFileA(i32*, i8*) #1

declare dso_local i64 @FtpGetFileA(i32*, i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32* @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i64 @FtpPutFileA(i32*, i8*, i8*, i32, i32) #1

declare dso_local i64 @FtpRemoveDirectoryA(i32*, i8*) #1

declare dso_local i64 @FtpRenameFileA(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
