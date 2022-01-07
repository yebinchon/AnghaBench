; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_store.c_testSystemStore.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_store.c_testSystemStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testSystemStore.baskslashW = internal constant [2 x i8] c"\\\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@CERT_STORE_PROV_SYSTEM = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %08x\0A\00", align 1
@CERT_SYSTEM_STORE_LOCAL_MACHINE = common dso_local global i32 0, align 4
@CERT_SYSTEM_STORE_CURRENT_USER = common dso_local global i32 0, align 4
@MyA = common dso_local global i8* null, align 8
@MyW = common dso_local global i8* null, align 8
@CERT_STORE_OPEN_EXISTING_FLAG = common dso_local global i32 0, align 4
@CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"RegCreateKeyEx failed: %d\0A\00", align 1
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@ERROR_FILE_EXISTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Expected ERROR_FILE_EXISTS, got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"CertOpenStore failed: %08x\0A\00", align 1
@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"CertAddStoreToCollection failed: %08x\0A\00", align 1
@BogusW = common dso_local global i8* null, align 8
@CERT_STORE_DELETE_FLAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"Didn't expect a store to be returned when deleting\0A\00", align 1
@BogusPathW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testSystemStore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testSystemStore() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %13 = call i64 @CertOpenStore(i32 %12, i32 0, i32 0, i32 0, i8* null)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = call i64 (...) @GetLastError()
  %18 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %16, %0
  %21 = phi i1 [ false, %0 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %26 = load i32, i32* @CERT_SYSTEM_STORE_LOCAL_MACHINE, align 4
  %27 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %28 = or i32 %26, %27
  %29 = load i8*, i8** @MyA, align 8
  %30 = call i64 @CertOpenStore(i32 %25, i32 0, i32 0, i32 %28, i8* %29)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %20
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %20
  %38 = phi i1 [ false, %20 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %43 = load i32, i32* @CERT_SYSTEM_STORE_LOCAL_MACHINE, align 4
  %44 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %45 = or i32 %43, %44
  %46 = load i8*, i8** @MyW, align 8
  %47 = call i64 @CertOpenStore(i32 %42, i32 0, i32 0, i32 %45, i8* %46)
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %1, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %37
  %51 = call i64 (...) @GetLastError()
  %52 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %50, %37
  %55 = phi i1 [ false, %37 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 (...) @GetLastError()
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %60 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %61 = load i32, i32* @CERT_STORE_OPEN_EXISTING_FLAG, align 4
  %62 = or i32 %60, %61
  %63 = load i8*, i8** @MyA, align 8
  %64 = call i64 @CertOpenStore(i32 %59, i32 0, i32 0, i32 %62, i8* %63)
  store i64 %64, i64* %1, align 8
  %65 = load i64, i64* %1, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %54
  %68 = call i64 (...) @GetLastError()
  %69 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %67, %54
  %72 = phi i1 [ false, %54 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 (...) @GetLastError()
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH, align 4
  %77 = call i32 @lstrcpyW(i8* %11, i32 %76)
  %78 = call i32 @lstrcatW(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @testSystemStore.baskslashW, i64 0, i64 0))
  %79 = load i8*, i8** @MyW, align 8
  %80 = call i32 @lstrcatW(i8* %11, i8* %79)
  %81 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %82 = load i32, i32* @KEY_READ, align 4
  %83 = call i32 @RegCreateKeyExW(i32 %81, i8* %11, i32 0, i32* null, i32 0, i32 %82, i32* null, i32* %4, i32* null)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %71
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @RegCloseKey(i32 %93)
  br label %95

95:                                               ; preds = %92, %71
  %96 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %97 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %98 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %99 = or i32 %97, %98
  %100 = load i8*, i8** @MyW, align 8
  %101 = call i64 @CertOpenStore(i32 %96, i32 0, i32 0, i32 %99, i8* %100)
  store i64 %101, i64* %1, align 8
  %102 = load i64, i64* %1, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %95
  %105 = call i64 (...) @GetLastError()
  %106 = load i64, i64* @ERROR_FILE_EXISTS, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %104, %95
  %109 = phi i1 [ false, %95 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = call i64 (...) @GetLastError()
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %111)
  %113 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %114 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %115 = load i32, i32* @CERT_STORE_OPEN_EXISTING_FLAG, align 4
  %116 = or i32 %114, %115
  %117 = load i8*, i8** @MyW, align 8
  %118 = call i64 @CertOpenStore(i32 %113, i32 0, i32 0, i32 %116, i8* %117)
  store i64 %118, i64* %1, align 8
  %119 = load i64, i64* %1, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i64 (...) @GetLastError()
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %122)
  %124 = load i64, i64* %1, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %108
  %127 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %128 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %129 = call i64 @CertOpenStore(i32 %127, i32 0, i32 0, i32 %128, i8* null)
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %6, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load i64, i64* %1, align 8
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @CertAddStoreToCollection(i64 %133, i64 %134, i32 0, i32 0)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i64 (...) @GetLastError()
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %137)
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @CertCloseStore(i64 %139, i32 0)
  br label %141

141:                                              ; preds = %132, %126
  %142 = load i64, i64* %1, align 8
  %143 = call i32 @CertCloseStore(i64 %142, i32 0)
  br label %144

144:                                              ; preds = %141, %108
  %145 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %146 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %147 = load i32, i32* @CERT_STORE_OPEN_EXISTING_FLAG, align 4
  %148 = or i32 %146, %147
  %149 = load i8*, i8** @BogusW, align 8
  %150 = call i64 @CertOpenStore(i32 %145, i32 0, i32 0, i32 %148, i8* %149)
  store i64 %150, i64* %1, align 8
  %151 = load i64, i64* %1, align 8
  %152 = icmp ne i64 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i64 (...) @GetLastError()
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %155)
  %157 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %158 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %159 = load i8*, i8** @BogusW, align 8
  %160 = call i64 @CertOpenStore(i32 %157, i32 0, i32 0, i32 %158, i8* %159)
  store i64 %160, i64* %1, align 8
  %161 = load i64, i64* %1, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i64 (...) @GetLastError()
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %164)
  %166 = load i64, i64* %1, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %144
  %169 = load i64, i64* %1, align 8
  %170 = call i32 @CertCloseStore(i64 %169, i32 0)
  br label %171

171:                                              ; preds = %168, %144
  %172 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %173 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %174 = load i32, i32* @CERT_STORE_DELETE_FLAG, align 4
  %175 = or i32 %173, %174
  %176 = load i8*, i8** @BogusW, align 8
  %177 = call i64 @CertOpenStore(i32 %172, i32 0, i32 0, i32 %175, i8* %176)
  store i64 %177, i64* %1, align 8
  %178 = load i64, i64* %1, align 8
  %179 = icmp ne i64 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %183 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %184 = load i32, i32* @BogusPathW, align 4
  %185 = call i32 @RegDeleteKeyW(i32 %183, i32 %184)
  %186 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %186)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CertOpenStore(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @lstrcpyW(i8*, i32) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @CertAddStoreToCollection(i64, i64, i32, i32) #2

declare dso_local i32 @CertCloseStore(i64, i32) #2

declare dso_local i32 @RegDeleteKeyW(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
