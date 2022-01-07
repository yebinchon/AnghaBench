; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_register_typelib.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_register_typelib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_WOW64_32KEY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TKIND_INTERFACE = common dso_local global i64 0, align 8
@TYPEFLAG_FDISPATCHABLE = common dso_local global i32 0, align 4
@TYPEFLAG_FOLEAUTOMATION = common dso_local global i32 0, align 4
@TKIND_DISPATCH = common dso_local global i64 0, align 8
@TYPEFLAG_FDUAL = common dso_local global i32 0, align 4
@TKIND_RECORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Starting %s typelib registration tests\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"User typelib registration functions are not available\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@REGKIND_NONE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@TYPE_E_REGISTRYACCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"Insufficient privileges to register typelib in the registry\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%d: got kind %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%d: got flags %04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Interface\\%s\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"%d: got %d\0A\00", align 1
@is_win64 = common dso_local global i64 0, align 8
@LIBID_register_test = common dso_local global i32 0, align 4
@LOCALE_NEUTRAL = common dso_local global i32 0, align 4
@SYS_WIN64 = common dso_local global i32 0, align 4
@SYS_WIN32 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"Interface registry remains in %s (%d)\0A\00", align 1
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_register_typelib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_register_typelib(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [40 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca [40 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [14 x %struct.anon], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_4__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_4__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %2, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %4, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %5, align 8
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %9, align 8
  %34 = load i32, i32* @KEY_WOW64_32KEY, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %17, align 8
  %36 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* %18, i64 0, i64 0
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  %38 = load i64, i64* @TKIND_INTERFACE, align 8
  store i64 %38, i64* %37, align 16
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 1
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %36, i64 1
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  %42 = load i64, i64* @TKIND_INTERFACE, align 8
  store i64 %42, i64* %41, align 16
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 1
  %44 = load i32, i32* @TYPEFLAG_FDISPATCHABLE, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %40, i64 1
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  %47 = load i64, i64* @TKIND_INTERFACE, align 8
  store i64 %47, i64* %46, align 16
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 1
  %49 = load i32, i32* @TYPEFLAG_FOLEAUTOMATION, align 4
  store i32 %49, i32* %48, align 8
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %45, i64 1
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 0
  %52 = load i64, i64* @TKIND_INTERFACE, align 8
  store i64 %52, i64* %51, align 16
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 1
  %54 = load i32, i32* @TYPEFLAG_FDISPATCHABLE, align 4
  %55 = load i32, i32* @TYPEFLAG_FOLEAUTOMATION, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %53, align 8
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %50, i64 1
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0
  %59 = load i64, i64* @TKIND_DISPATCH, align 8
  store i64 %59, i64* %58, align 16
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 1
  %61 = load i32, i32* @TYPEFLAG_FDUAL, align 4
  store i32 %61, i32* %60, align 8
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %57, i64 1
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 0
  %64 = load i64, i64* @TKIND_DISPATCH, align 8
  store i64 %64, i64* %63, align 16
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 1
  %66 = load i32, i32* @TYPEFLAG_FDUAL, align 4
  store i32 %66, i32* %65, align 8
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %62, i64 1
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 0
  %69 = load i64, i64* @TKIND_DISPATCH, align 8
  store i64 %69, i64* %68, align 16
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 1
  %71 = load i32, i32* @TYPEFLAG_FDISPATCHABLE, align 4
  %72 = load i32, i32* @TYPEFLAG_FDUAL, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %70, align 8
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %67, i64 1
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 0
  %76 = load i64, i64* @TKIND_DISPATCH, align 8
  store i64 %76, i64* %75, align 16
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 1
  %78 = load i32, i32* @TYPEFLAG_FDISPATCHABLE, align 4
  %79 = load i32, i32* @TYPEFLAG_FDUAL, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %77, align 8
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %74, i64 1
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 0
  %83 = load i64, i64* @TKIND_DISPATCH, align 8
  store i64 %83, i64* %82, align 16
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 1
  %85 = load i32, i32* @TYPEFLAG_FDISPATCHABLE, align 4
  store i32 %85, i32* %84, align 8
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %81, i64 1
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %86, i32 0, i32 0
  %88 = load i64, i64* @TKIND_DISPATCH, align 8
  store i64 %88, i64* %87, align 16
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %86, i32 0, i32 1
  %90 = load i32, i32* @TYPEFLAG_FDISPATCHABLE, align 4
  store i32 %90, i32* %89, align 8
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %86, i64 1
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0
  %93 = load i64, i64* @TKIND_DISPATCH, align 8
  store i64 %93, i64* %92, align 16
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 1
  %95 = load i32, i32* @TYPEFLAG_FDISPATCHABLE, align 4
  store i32 %95, i32* %94, align 8
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %91, i64 1
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 0
  %98 = load i64, i64* @TKIND_INTERFACE, align 8
  store i64 %98, i64* %97, align 16
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 1
  %100 = load i32, i32* @TYPEFLAG_FDISPATCHABLE, align 4
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %96, i64 1
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 0
  %103 = load i64, i64* @TKIND_INTERFACE, align 8
  store i64 %103, i64* %102, align 16
  %104 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 1
  %105 = load i32, i32* @TYPEFLAG_FDISPATCHABLE, align 4
  store i32 %105, i32* %104, align 8
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %101, i64 1
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 0
  %108 = load i64, i64* @TKIND_RECORD, align 8
  store i64 %108, i64* %107, align 16
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 1
  store i32 0, i32* %109, align 8
  %110 = load i64, i64* %2, align 8
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %114 = call i32 @trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %113)
  %115 = load i64, i64* %2, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %1
  br i1 true, label %120, label %118

118:                                              ; preds = %117
  %119 = call i32 @win_skip(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %506

120:                                              ; preds = %117, %1
  br i1 true, label %121, label %124

121:                                              ; preds = %120
  %122 = call i32 (...) @GetCurrentProcess()
  %123 = call i32 @pIsWow64Process(i32 %122, i64* %17)
  br label %124

124:                                              ; preds = %121, %120
  %125 = call i8* @create_test_typelib(i32 3)
  store i8* %125, i8** %6, align 8
  %126 = load i32, i32* @CP_ACP, align 4
  %127 = load i8*, i8** %6, align 8
  %128 = load i32, i32* @MAX_PATH, align 4
  %129 = call i32 @MultiByteToWideChar(i32 %126, i32 0, i8* %127, i32 -1, i32* %30, i32 %128)
  %130 = load i32, i32* @REGKIND_NONE, align 4
  %131 = call i32 @LoadTypeLibEx(i32* %30, i32 %130, i32** %7)
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @S_OK, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %3, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load i64, i64* %2, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %124
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @RegisterTypeLib(i32* %141, i32* %30, i32* null)
  store i32 %142, i32* %3, align 4
  br label %146

143:                                              ; preds = %124
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @pRegisterTypeLibForUser(i32* %144, i32* %30, i32* null)
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @TYPE_E_REGISTRYACCESS, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = call i32 @win_skip(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @ITypeLib_Release(i32* %152)
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @DeleteFileA(i8* %154)
  store i32 1, i32* %19, align 4
  br label %506

156:                                              ; preds = %146
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @S_OK, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %3, align 4
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @ITypeLib_GetTypeInfoCount(i32* %163)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %165, 14
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %13, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  store i32 0, i32* %14, align 4
  br label %170

170:                                              ; preds = %377, %156
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %380

174:                                              ; preds = %170
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @ITypeLib_GetTypeInfo(i32* %175, i32 %176, i32** %20)
  store i32 %177, i32* %3, align 4
  %178 = load i32, i32* %3, align 4
  %179 = load i32, i32* @S_OK, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %3, align 4
  %183 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  %184 = load i32*, i32** %20, align 8
  %185 = call i32 @ITypeInfo_GetTypeAttr(i32* %184, %struct.TYPE_4__** %21)
  store i32 %185, i32* %3, align 4
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* @S_OK, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %3, align 4
  %191 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* %18, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.anon, %struct.anon* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 16
  %200 = icmp eq i64 %194, %199
  %201 = zext i1 %200 to i32
  %202 = load i32, i32* %14, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %202, i64 %205)
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* %18, i64 0, i64 %211
  %213 = getelementptr inbounds %struct.anon, %struct.anon* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %209, %214
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %14, align 4
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %217, i32 %220)
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @TKIND_DISPATCH, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %293

227:                                              ; preds = %174
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @TYPEFLAG_FDUAL, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %293

234:                                              ; preds = %227
  %235 = load i32*, i32** %20, align 8
  %236 = call i32 @ITypeInfo_GetRefTypeOfImplType(i32* %235, i32 -1, i32* %22)
  store i32 %236, i32* %3, align 4
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* @S_OK, align 4
  %239 = icmp eq i32 %237, %238
  %240 = zext i1 %239 to i32
  %241 = load i32, i32* %3, align 4
  %242 = call i32 (i32, i8*, ...) @ok(i32 %240, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %241)
  %243 = load i32*, i32** %20, align 8
  %244 = load i32, i32* %22, align 4
  %245 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %243, i32 %244, i32** %23)
  store i32 %245, i32* %3, align 4
  %246 = load i32, i32* %3, align 4
  %247 = load i32, i32* @S_OK, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %3, align 4
  %251 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  %252 = load i32*, i32** %23, align 8
  %253 = call i32 @ITypeInfo_GetTypeAttr(i32* %252, %struct.TYPE_4__** %24)
  store i32 %253, i32* %3, align 4
  %254 = load i32, i32* %3, align 4
  %255 = load i32, i32* @S_OK, align 4
  %256 = icmp eq i32 %254, %255
  %257 = zext i1 %256 to i32
  %258 = load i32, i32* %3, align 4
  %259 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %258)
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @TKIND_INTERFACE, align 8
  %264 = icmp eq i64 %262, %263
  %265 = zext i1 %264 to i32
  %266 = load i32, i32* %14, align 4
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %266, i64 %269)
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* %18, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.anon, %struct.anon* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @TYPEFLAG_FOLEAUTOMATION, align 4
  %280 = or i32 %278, %279
  %281 = icmp eq i32 %273, %280
  %282 = zext i1 %281 to i32
  %283 = load i32, i32* %14, align 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %283, i32 %286)
  %288 = load i32*, i32** %23, align 8
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %290 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %288, %struct.TYPE_4__* %289)
  %291 = load i32*, i32** %23, align 8
  %292 = call i32 @ITypeInfo_Release(i32* %291)
  br label %293

293:                                              ; preds = %234, %227, %174
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 2
  %296 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %297 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %298 = call i32 @ARRAY_SIZE(i32* %297)
  %299 = call i32 @StringFromGUID2(i32* %295, i32* %296, i32 %298)
  %300 = load i32, i32* @CP_ACP, align 4
  %301 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %302 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %303 = call i32 @WideCharToMultiByte(i32 %300, i32 0, i32* %301, i32 -1, i8* %302, i32 40, i32* null, i32* null)
  %304 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %305 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %304)
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @TKIND_INTERFACE, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %318

311:                                              ; preds = %293
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @TYPEFLAG_FOLEAUTOMATION, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %311, %293
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @TKIND_DISPATCH, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %318, %311
  %325 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %325, i32* %12, align 4
  br label %328

326:                                              ; preds = %318
  %327 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  store i32 %327, i32* %12, align 4
  br label %328

328:                                              ; preds = %326, %324
  %329 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %330 = load i32, i32* @KEY_READ, align 4
  %331 = call i32 @RegOpenKeyExA(i32 %329, i8* %33, i32 0, i32 %330, i32* %15)
  store i32 %331, i32* %11, align 4
  %332 = load i32, i32* %11, align 4
  %333 = load i32, i32* %12, align 4
  %334 = icmp eq i32 %332, %333
  %335 = zext i1 %334 to i32
  %336 = load i32, i32* %14, align 4
  %337 = load i32, i32* %11, align 4
  %338 = call i32 (i32, i8*, ...) @ok(i32 %335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %336, i32 %337)
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* @ERROR_SUCCESS, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %345

342:                                              ; preds = %328
  %343 = load i32, i32* %15, align 4
  %344 = call i32 @RegCloseKey(i32 %343)
  br label %345

345:                                              ; preds = %342, %328
  %346 = load i64, i64* @is_win64, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %351, label %348

348:                                              ; preds = %345
  %349 = load i64, i64* %17, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %371

351:                                              ; preds = %348, %345
  %352 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %353 = load i32, i32* @KEY_READ, align 4
  %354 = load i32, i32* %16, align 4
  %355 = or i32 %353, %354
  %356 = call i32 @RegOpenKeyExA(i32 %352, i8* %33, i32 0, i32 %355, i32* %15)
  store i32 %356, i32* %11, align 4
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* %12, align 4
  %359 = icmp eq i32 %357, %358
  %360 = zext i1 %359 to i32
  %361 = load i32, i32* %14, align 4
  %362 = load i32, i32* %11, align 4
  %363 = call i32 (i32, i8*, ...) @ok(i32 %360, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %361, i32 %362)
  %364 = load i32, i32* %11, align 4
  %365 = load i32, i32* @ERROR_SUCCESS, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %351
  %368 = load i32, i32* %15, align 4
  %369 = call i32 @RegCloseKey(i32 %368)
  br label %370

370:                                              ; preds = %367, %351
  br label %371

371:                                              ; preds = %370, %348
  %372 = load i32*, i32** %20, align 8
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %374 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %372, %struct.TYPE_4__* %373)
  %375 = load i32*, i32** %20, align 8
  %376 = call i32 @ITypeInfo_Release(i32* %375)
  br label %377

377:                                              ; preds = %371
  %378 = load i32, i32* %14, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %14, align 4
  br label %170

380:                                              ; preds = %170
  %381 = load i64, i64* %2, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %394

383:                                              ; preds = %380
  %384 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %385 = load i64, i64* @is_win64, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %383
  %388 = load i32, i32* @SYS_WIN64, align 4
  br label %391

389:                                              ; preds = %383
  %390 = load i32, i32* @SYS_WIN32, align 4
  br label %391

391:                                              ; preds = %389, %387
  %392 = phi i32 [ %388, %387 ], [ %390, %389 ]
  %393 = call i32 @UnRegisterTypeLib(i32* @LIBID_register_test, i32 1, i32 0, i32 %384, i32 %392)
  store i32 %393, i32* %3, align 4
  br label %405

394:                                              ; preds = %380
  %395 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %396 = load i64, i64* @is_win64, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %394
  %399 = load i32, i32* @SYS_WIN64, align 4
  br label %402

400:                                              ; preds = %394
  %401 = load i32, i32* @SYS_WIN32, align 4
  br label %402

402:                                              ; preds = %400, %398
  %403 = phi i32 [ %399, %398 ], [ %401, %400 ]
  %404 = call i32 @pUnRegisterTypeLibForUser(i32* @LIBID_register_test, i32 1, i32 0, i32 %395, i32 %403)
  store i32 %404, i32* %3, align 4
  br label %405

405:                                              ; preds = %402, %391
  %406 = load i32, i32* %3, align 4
  %407 = load i32, i32* @S_OK, align 4
  %408 = icmp eq i32 %406, %407
  %409 = zext i1 %408 to i32
  %410 = load i32, i32* %3, align 4
  %411 = call i32 (i32, i8*, ...) @ok(i32 %409, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %410)
  store i32 0, i32* %14, align 4
  br label %412

412:                                              ; preds = %498, %405
  %413 = load i32, i32* %14, align 4
  %414 = load i32, i32* %13, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %501

416:                                              ; preds = %412
  %417 = load i32*, i32** %7, align 8
  %418 = load i32, i32* %14, align 4
  %419 = call i32 @ITypeLib_GetTypeInfo(i32* %417, i32 %418, i32** %25)
  store i32 %419, i32* %3, align 4
  %420 = load i32, i32* %3, align 4
  %421 = load i32, i32* @S_OK, align 4
  %422 = icmp eq i32 %420, %421
  %423 = zext i1 %422 to i32
  %424 = load i32, i32* %3, align 4
  %425 = call i32 (i32, i8*, ...) @ok(i32 %423, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %424)
  %426 = load i32*, i32** %25, align 8
  %427 = call i32 @ITypeInfo_GetTypeAttr(i32* %426, %struct.TYPE_4__** %26)
  store i32 %427, i32* %3, align 4
  %428 = load i32, i32* %3, align 4
  %429 = load i32, i32* @S_OK, align 4
  %430 = icmp eq i32 %428, %429
  %431 = zext i1 %430 to i32
  %432 = load i32, i32* %3, align 4
  %433 = call i32 (i32, i8*, ...) @ok(i32 %431, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %432)
  %434 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @TKIND_INTERFACE, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %439, label %446

439:                                              ; preds = %416
  %440 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 8
  %443 = load i32, i32* @TYPEFLAG_FOLEAUTOMATION, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %452, label %446

446:                                              ; preds = %439, %416
  %447 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @TKIND_DISPATCH, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %492

452:                                              ; preds = %446, %439
  %453 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 2
  %455 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %456 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %457 = call i32 @ARRAY_SIZE(i32* %456)
  %458 = call i32 @StringFromGUID2(i32* %454, i32* %455, i32 %457)
  %459 = load i32, i32* @CP_ACP, align 4
  %460 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %461 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %462 = call i32 @WideCharToMultiByte(i32 %459, i32 0, i32* %460, i32 -1, i8* %461, i32 40, i32* null, i32* null)
  %463 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %464 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %463)
  %465 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %466 = load i32, i32* @KEY_READ, align 4
  %467 = call i32 @RegOpenKeyExA(i32 %465, i8* %33, i32 0, i32 %466, i32* %15)
  store i32 %467, i32* %11, align 4
  %468 = load i32, i32* %11, align 4
  %469 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %470 = icmp eq i32 %468, %469
  %471 = zext i1 %470 to i32
  %472 = load i32, i32* %14, align 4
  %473 = call i32 (i32, i8*, ...) @ok(i32 %471, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %33, i32 %472)
  %474 = load i64, i64* @is_win64, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %452
  %477 = load i64, i64* %17, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %491

479:                                              ; preds = %476, %452
  %480 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %481 = load i32, i32* @KEY_READ, align 4
  %482 = load i32, i32* %16, align 4
  %483 = or i32 %481, %482
  %484 = call i32 @RegOpenKeyExA(i32 %480, i8* %33, i32 0, i32 %483, i32* %15)
  store i32 %484, i32* %11, align 4
  %485 = load i32, i32* %11, align 4
  %486 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %487 = icmp eq i32 %485, %486
  %488 = zext i1 %487 to i32
  %489 = load i32, i32* %14, align 4
  %490 = call i32 (i32, i8*, ...) @ok(i32 %488, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %33, i32 %489)
  br label %491

491:                                              ; preds = %479, %476
  br label %492

492:                                              ; preds = %491, %446
  %493 = load i32*, i32** %25, align 8
  %494 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %495 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %493, %struct.TYPE_4__* %494)
  %496 = load i32*, i32** %25, align 8
  %497 = call i32 @ITypeInfo_Release(i32* %496)
  br label %498

498:                                              ; preds = %492
  %499 = load i32, i32* %14, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %14, align 4
  br label %412

501:                                              ; preds = %412
  %502 = load i32*, i32** %7, align 8
  %503 = call i32 @ITypeLib_Release(i32* %502)
  %504 = load i8*, i8** %6, align 8
  %505 = call i32 @DeleteFileA(i8* %504)
  store i32 0, i32* %19, align 4
  br label %506

506:                                              ; preds = %501, %150, %118
  %507 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %507)
  %508 = load i32, i32* %19, align 4
  switch i32 %508, label %510 [
    i32 0, label %509
    i32 1, label %509
  ]

509:                                              ; preds = %506, %506
  ret void

510:                                              ; preds = %506
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace(i8*, i8*) #2

declare dso_local i32 @pUnRegisterTypeLibForUser(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @pIsWow64Process(i32, i64*) #2

declare dso_local i32 @GetCurrentProcess(...) #2

declare dso_local i8* @create_test_typelib(i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @LoadTypeLibEx(i32*, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @RegisterTypeLib(i32*, i32*, i32*) #2

declare dso_local i32 @pRegisterTypeLibForUser(i32*, i32*, i32*) #2

declare dso_local i32 @ITypeLib_Release(i32*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @ITypeLib_GetTypeInfoCount(i32*) #2

declare dso_local i32 @ITypeLib_GetTypeInfo(i32*, i32, i32**) #2

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_4__**) #2

declare dso_local i32 @ITypeInfo_GetRefTypeOfImplType(i32*, i32, i32*) #2

declare dso_local i32 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #2

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @ITypeInfo_Release(i32*) #2

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @UnRegisterTypeLib(i32*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
