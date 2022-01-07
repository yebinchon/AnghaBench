; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_reg.c_test_notify.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_reg.c_test_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i64 }

@winetestpath = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"NtOpenKey Failed: 0x%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CreateEvent failed: %u\0A\00", align 1
@REG_NOTIFY_CHANGE_NAME = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"NtNotifyChangeKey returned %x\0A\00", align 1
@STATUS_TIMEOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"NtWaitForSingleObject returned %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"test_subkey\00", align 1
@GENERIC_ALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"NtCreateKey failed: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"NtDeleteSubkey failed: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"NtNotifyChangeMultipleKeys not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_notify() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32*], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = call i32 @InitializeObjectAttributes(%struct.TYPE_7__* %1, i32* @winetestpath, i32 0, i32 0, i32 0)
  %10 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %11 = call i64 @pNtOpenKey(i32** %5, i32 %10, %struct.TYPE_7__* %1)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @STATUS_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32* @CreateEventW(i32* null, i32 %18, i32 %19, i32* null)
  %21 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  store i32* %20, i32** %21, align 16
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %23 = load i32*, i32** %22, align 16
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32* @CreateEventW(i32* null, i32 %28, i32 %29, i32* null)
  %31 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  store i32* %30, i32** %31, align 8
  %32 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 (...) @GetLastError()
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %40 = load i32*, i32** %39, align 16
  %41 = load i32, i32* @REG_NOTIFY_CHANGE_NAME, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i64 @pNtNotifyChangeKey(i32* %38, i32* %40, i32* null, i32* null, i32* %3, i32 %41, i32 %42, i32* null, i32 0, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @STATUS_PENDING, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @REG_NOTIFY_CHANGE_NAME, align 4
  %55 = load i32, i32* @FALSE, align 4
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i64 @pNtNotifyChangeKey(i32* %51, i32* %53, i32* null, i32* null, i32* %3, i32 %54, i32 %55, i32* null, i32 0, i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @STATUS_PENDING, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %66 = load i32*, i32** %65, align 16
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i64 @pNtWaitForSingleObject(i32* %66, i32 %67, %struct.TYPE_8__* %2)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @STATUS_TIMEOUT, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i64 @pNtWaitForSingleObject(i32* %76, i32 %77, %struct.TYPE_8__* %2)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @STATUS_TIMEOUT, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32* %85, i32** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32* %4, i32** %87, align 8
  %88 = call i32 @pRtlCreateUnicodeStringFromAsciiz(i32* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* @GENERIC_ALL, align 4
  %90 = call i64 @pNtCreateKey(i32** %7, i32 %89, %struct.TYPE_7__* %1, i32 0, i32 0, i32 0, i32 0)
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @STATUS_SUCCESS, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %95)
  %97 = call i32 @pRtlFreeUnicodeString(i32* %4)
  %98 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %99 = load i32*, i32** %98, align 16
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i64 @pNtWaitForSingleObject(i32* %99, i32 %100, %struct.TYPE_8__* %2)
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @STATUS_SUCCESS, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  %108 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @FALSE, align 4
  %111 = call i64 @pNtWaitForSingleObject(i32* %109, i32 %110, %struct.TYPE_8__* %2)
  store i64 %111, i64* %8, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* @STATUS_SUCCESS, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %116)
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %120 = load i32*, i32** %119, align 16
  %121 = load i32, i32* @FALSE, align 4
  %122 = load i32, i32* @TRUE, align 4
  %123 = call i64 @pNtNotifyChangeKey(i32* %118, i32* %120, i32* null, i32* null, i32* %3, i32 0, i32 %121, i32* null, i32 0, i32 %122)
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* @STATUS_PENDING, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @FALSE, align 4
  %134 = load i32, i32* @TRUE, align 4
  %135 = call i64 @pNtNotifyChangeKey(i32* %130, i32* %132, i32* null, i32* null, i32* %3, i32 0, i32 %133, i32* null, i32 0, i32 %134)
  store i64 %135, i64* %8, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* @STATUS_PENDING, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @ok(i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %140)
  %142 = load i32*, i32** %7, align 8
  %143 = call i64 @pNtDeleteKey(i32* %142)
  store i64 %143, i64* %8, align 8
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* @STATUS_SUCCESS, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %8, align 8
  %149 = call i32 @ok(i32 %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %148)
  %150 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %151 = load i32*, i32** %150, align 16
  %152 = load i32, i32* @FALSE, align 4
  %153 = call i64 @pNtWaitForSingleObject(i32* %151, i32 %152, %struct.TYPE_8__* %2)
  store i64 %153, i64* %8, align 8
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* @STATUS_SUCCESS, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i64, i64* %8, align 8
  %159 = call i32 @ok(i32 %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %158)
  %160 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* @FALSE, align 4
  %163 = call i64 @pNtWaitForSingleObject(i32* %161, i32 %162, %struct.TYPE_8__* %2)
  store i64 %163, i64* %8, align 8
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* @STATUS_SUCCESS, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %168)
  %170 = load i32*, i32** %7, align 8
  %171 = call i32 @pNtClose(i32* %170)
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %174 = load i32*, i32** %173, align 16
  %175 = load i32, i32* @FALSE, align 4
  %176 = load i32, i32* @TRUE, align 4
  %177 = call i64 @pNtNotifyChangeKey(i32* %172, i32* %174, i32* null, i32* null, i32* %3, i32 0, i32 %175, i32* null, i32 0, i32 %176)
  store i64 %177, i64* %8, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* @STATUS_PENDING, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i64, i64* %8, align 8
  %183 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %182)
  %184 = load i32*, i32** %5, align 8
  %185 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* @FALSE, align 4
  %188 = load i32, i32* @TRUE, align 4
  %189 = call i64 @pNtNotifyChangeKey(i32* %184, i32* %186, i32* null, i32* null, i32* %3, i32 0, i32 %187, i32* null, i32 0, i32 %188)
  store i64 %189, i64* %8, align 8
  %190 = load i64, i64* %8, align 8
  %191 = load i64, i64* @STATUS_PENDING, align 8
  %192 = icmp eq i64 %190, %191
  %193 = zext i1 %192 to i32
  %194 = load i64, i64* %8, align 8
  %195 = call i32 @ok(i32 %193, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %194)
  %196 = load i32*, i32** %5, align 8
  %197 = call i32 @pNtClose(i32* %196)
  %198 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %199 = load i32*, i32** %198, align 16
  %200 = load i32, i32* @FALSE, align 4
  %201 = call i64 @pNtWaitForSingleObject(i32* %199, i32 %200, %struct.TYPE_8__* %2)
  store i64 %201, i64* %8, align 8
  %202 = load i64, i64* %8, align 8
  %203 = load i64, i64* @STATUS_SUCCESS, align 8
  %204 = icmp eq i64 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i64, i64* %8, align 8
  %207 = call i32 @ok(i32 %205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %206)
  %208 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* @FALSE, align 4
  %211 = call i64 @pNtWaitForSingleObject(i32* %209, i32 %210, %struct.TYPE_8__* %2)
  store i64 %211, i64* %8, align 8
  %212 = load i64, i64* %8, align 8
  %213 = load i64, i64* @STATUS_SUCCESS, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i64, i64* %8, align 8
  %217 = call i32 @ok(i32 %215, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %216)
  br i1 true, label %218, label %287

218:                                              ; preds = %0
  %219 = call i32 @InitializeObjectAttributes(%struct.TYPE_7__* %1, i32* @winetestpath, i32 0, i32 0, i32 0)
  %220 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %221 = call i64 @pNtOpenKey(i32** %5, i32 %220, %struct.TYPE_7__* %1)
  store i64 %221, i64* %8, align 8
  %222 = load i64, i64* %8, align 8
  %223 = load i64, i64* @STATUS_SUCCESS, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = load i64, i64* %8, align 8
  %227 = call i32 @ok(i32 %225, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %226)
  %228 = load i32*, i32** %5, align 8
  %229 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %230 = load i32*, i32** %229, align 16
  %231 = load i32, i32* @REG_NOTIFY_CHANGE_NAME, align 4
  %232 = load i32, i32* @FALSE, align 4
  %233 = load i32, i32* @TRUE, align 4
  %234 = call i64 @pNtNotifyChangeMultipleKeys(i32* %228, i32 0, i32* null, i32* %230, i32* null, i32* null, i32* %3, i32 %231, i32 %232, i32* null, i32 0, i32 %233)
  store i64 %234, i64* %8, align 8
  %235 = load i64, i64* %8, align 8
  %236 = load i64, i64* @STATUS_PENDING, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i64, i64* %8, align 8
  %240 = call i32 @ok(i32 %238, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %239)
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i64 0, i64* %241, align 8
  %242 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %243 = load i32*, i32** %242, align 16
  %244 = load i32, i32* @FALSE, align 4
  %245 = call i64 @pNtWaitForSingleObject(i32* %243, i32 %244, %struct.TYPE_8__* %2)
  store i64 %245, i64* %8, align 8
  %246 = load i64, i64* %8, align 8
  %247 = load i64, i64* @STATUS_TIMEOUT, align 8
  %248 = icmp eq i64 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i64, i64* %8, align 8
  %251 = call i32 @ok(i32 %249, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %250)
  %252 = load i32*, i32** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32* %252, i32** %253, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32* %4, i32** %254, align 8
  %255 = call i32 @pRtlCreateUnicodeStringFromAsciiz(i32* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %256 = load i32, i32* @GENERIC_ALL, align 4
  %257 = call i64 @pNtCreateKey(i32** %7, i32 %256, %struct.TYPE_7__* %1, i32 0, i32 0, i32 0, i32 0)
  store i64 %257, i64* %8, align 8
  %258 = load i64, i64* %8, align 8
  %259 = load i64, i64* @STATUS_SUCCESS, align 8
  %260 = icmp eq i64 %258, %259
  %261 = zext i1 %260 to i32
  %262 = load i64, i64* %8, align 8
  %263 = call i32 @ok(i32 %261, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %262)
  %264 = call i32 @pRtlFreeUnicodeString(i32* %4)
  %265 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %266 = load i32*, i32** %265, align 16
  %267 = load i32, i32* @FALSE, align 4
  %268 = call i64 @pNtWaitForSingleObject(i32* %266, i32 %267, %struct.TYPE_8__* %2)
  store i64 %268, i64* %8, align 8
  %269 = load i64, i64* %8, align 8
  %270 = load i64, i64* @STATUS_SUCCESS, align 8
  %271 = icmp eq i64 %269, %270
  %272 = zext i1 %271 to i32
  %273 = load i64, i64* %8, align 8
  %274 = call i32 @ok(i32 %272, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %273)
  %275 = load i32*, i32** %7, align 8
  %276 = call i64 @pNtDeleteKey(i32* %275)
  store i64 %276, i64* %8, align 8
  %277 = load i64, i64* %8, align 8
  %278 = load i64, i64* @STATUS_SUCCESS, align 8
  %279 = icmp eq i64 %277, %278
  %280 = zext i1 %279 to i32
  %281 = load i64, i64* %8, align 8
  %282 = call i32 @ok(i32 %280, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %281)
  %283 = load i32*, i32** %7, align 8
  %284 = call i32 @pNtClose(i32* %283)
  %285 = load i32*, i32** %5, align 8
  %286 = call i32 @pNtClose(i32* %285)
  br label %289

287:                                              ; preds = %0
  %288 = call i32 @win_skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %289

289:                                              ; preds = %287, %218
  %290 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %291 = load i32*, i32** %290, align 16
  %292 = call i32 @pNtClose(i32* %291)
  %293 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %294 = load i32*, i32** %293, align 8
  %295 = call i32 @pNtClose(i32* %294)
  ret void
}

declare dso_local i32 @InitializeObjectAttributes(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i64 @pNtOpenKey(i32**, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32* @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @pNtNotifyChangeKey(i32*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @pNtWaitForSingleObject(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pRtlCreateUnicodeStringFromAsciiz(i32*, i8*) #1

declare dso_local i64 @pNtCreateKey(i32**, i32, %struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @pRtlFreeUnicodeString(i32*) #1

declare dso_local i64 @pNtDeleteKey(i32*) #1

declare dso_local i32 @pNtClose(i32*) #1

declare dso_local i64 @pNtNotifyChangeMultipleKeys(i32*, i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @win_skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
