; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_store.c_testSystemRegStore.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_store.c_testSystemRegStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CERT_STORE_PROV_SYSTEM_REGISTRY = common dso_local global i32 0, align 4
@CERT_SYSTEM_STORE_CURRENT_USER = common dso_local global i32 0, align 4
@CERT_STORE_OPEN_EXISTING_FLAG = common dso_local global i32 0, align 4
@MyW = common dso_local global i32* null, align 8
@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@BogusW = common dso_local global i32* null, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"CertOpenStore failed: %08x\0A\00", align 1
@CERT_STORE_DELETE_FLAG = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@BogusPathW = common dso_local global i32 0, align 4
@CERT_SYSTEM_STORE_LOCAL_MACHINE = common dso_local global i32 0, align 4
@MyA = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testSystemRegStore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testSystemRegStore() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CERT_STORE_PROV_SYSTEM_REGISTRY, align 4
  %5 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %6 = load i32, i32* @CERT_STORE_OPEN_EXISTING_FLAG, align 4
  %7 = or i32 %5, %6
  %8 = load i32*, i32** @MyW, align 8
  %9 = call i64 @CertOpenStore(i32 %4, i32 0, i32 0, i32 %7, i32* %8)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %150

13:                                               ; preds = %0
  %14 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %15 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %16 = call i64 @CertOpenStore(i32 %14, i32 0, i32 0, i32 %15, i32* null)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @CertAddStoreToCollection(i64 %20, i64 %21, i32 0, i32 0)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = call i64 (...) @GetLastError()
  %27 = load i64, i64* @E_INVALIDARG, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i1 [ false, %19 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 (...) @GetLastError()
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @CertCloseStore(i64 %34, i32 0)
  br label %36

36:                                               ; preds = %29, %13
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @CertCloseStore(i64 %37, i32 0)
  %39 = load i32, i32* @CERT_STORE_PROV_SYSTEM_REGISTRY, align 4
  %40 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %41 = load i32, i32* @CERT_STORE_OPEN_EXISTING_FLAG, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** @BogusW, align 8
  %44 = call i64 @CertOpenStore(i32 %39, i32 0, i32 0, i32 %42, i32* %43)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = call i64 (...) @GetLastError()
  %49 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %36
  %52 = phi i1 [ false, %36 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 (...) @GetLastError()
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @CERT_STORE_PROV_SYSTEM_REGISTRY, align 4
  %57 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %58 = load i32*, i32** @BogusW, align 8
  %59 = call i64 @CertOpenStore(i32 %56, i32 0, i32 0, i32 %57, i32* %58)
  store i64 %59, i64* %1, align 8
  %60 = load i64, i64* %1, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 (...) @GetLastError()
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load i64, i64* %1, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load i64, i64* %1, align 8
  %69 = call i32 @CertCloseStore(i64 %68, i32 0)
  br label %70

70:                                               ; preds = %67, %51
  %71 = load i32, i32* @CERT_STORE_PROV_SYSTEM_REGISTRY, align 4
  %72 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %73 = load i32, i32* @CERT_STORE_DELETE_FLAG, align 4
  %74 = or i32 %72, %73
  %75 = load i32*, i32** @BogusW, align 8
  %76 = call i64 @CertOpenStore(i32 %71, i32 0, i32 0, i32 %74, i32* %75)
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* %1, align 8
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 (...) @GetLastError()
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %84 = load i32, i32* @BogusPathW, align 4
  %85 = call i32 @RegDeleteKeyW(i32 %83, i32 %84)
  %86 = load i32, i32* @CERT_STORE_PROV_SYSTEM_REGISTRY, align 4
  %87 = call i64 @CertOpenStore(i32 %86, i32 0, i32 0, i32 0, i32* null)
  store i64 %87, i64* %1, align 8
  %88 = load i64, i64* %1, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %70
  %91 = call i64 (...) @GetLastError()
  %92 = load i64, i64* @E_INVALIDARG, align 8
  %93 = icmp eq i64 %91, %92
  br label %94

94:                                               ; preds = %90, %70
  %95 = phi i1 [ false, %70 ], [ %93, %90 ]
  %96 = zext i1 %95 to i32
  %97 = call i64 (...) @GetLastError()
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @CERT_STORE_PROV_SYSTEM_REGISTRY, align 4
  %100 = load i32, i32* @CERT_SYSTEM_STORE_LOCAL_MACHINE, align 4
  %101 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %102 = or i32 %100, %101
  %103 = load i32*, i32** @MyA, align 8
  %104 = call i64 @CertOpenStore(i32 %99, i32 0, i32 0, i32 %102, i32* %103)
  store i64 %104, i64* %1, align 8
  %105 = load i64, i64* %1, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %94
  %108 = call i64 (...) @GetLastError()
  %109 = load i64, i64* @E_INVALIDARG, align 8
  %110 = icmp eq i64 %108, %109
  br label %111

111:                                              ; preds = %107, %94
  %112 = phi i1 [ false, %94 ], [ %110, %107 ]
  %113 = zext i1 %112 to i32
  %114 = call i64 (...) @GetLastError()
  %115 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* @CERT_STORE_PROV_SYSTEM_REGISTRY, align 4
  %117 = load i32, i32* @CERT_SYSTEM_STORE_LOCAL_MACHINE, align 4
  %118 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %119 = or i32 %117, %118
  %120 = load i32*, i32** @MyW, align 8
  %121 = call i64 @CertOpenStore(i32 %116, i32 0, i32 0, i32 %119, i32* %120)
  store i64 %121, i64* %1, align 8
  %122 = load i64, i64* %1, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %111
  %125 = call i64 (...) @GetLastError()
  %126 = load i64, i64* @E_INVALIDARG, align 8
  %127 = icmp eq i64 %125, %126
  br label %128

128:                                              ; preds = %124, %111
  %129 = phi i1 [ false, %111 ], [ %127, %124 ]
  %130 = zext i1 %129 to i32
  %131 = call i64 (...) @GetLastError()
  %132 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %131)
  %133 = load i32, i32* @CERT_STORE_PROV_SYSTEM_REGISTRY, align 4
  %134 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %135 = load i32, i32* @CERT_STORE_OPEN_EXISTING_FLAG, align 4
  %136 = or i32 %134, %135
  %137 = load i32*, i32** @MyA, align 8
  %138 = call i64 @CertOpenStore(i32 %133, i32 0, i32 0, i32 %136, i32* %137)
  store i64 %138, i64* %1, align 8
  %139 = load i64, i64* %1, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %128
  %142 = call i64 (...) @GetLastError()
  %143 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %144 = icmp eq i64 %142, %143
  br label %145

145:                                              ; preds = %141, %128
  %146 = phi i1 [ false, %128 ], [ %144, %141 ]
  %147 = zext i1 %146 to i32
  %148 = call i64 (...) @GetLastError()
  %149 = call i32 @ok(i32 %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %148)
  br label %150

150:                                              ; preds = %145, %12
  ret void
}

declare dso_local i64 @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CertAddStoreToCollection(i64, i64, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CertCloseStore(i64, i32) #1

declare dso_local i32 @RegDeleteKeyW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
