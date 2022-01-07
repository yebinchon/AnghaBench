; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_do_test_about_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_do_test_about_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_test_about_protocol.blank_html = internal constant [15 x i32] [i32 65279, i32 60, i32 72, i32 84, i32 77, i32 76, i32 62, i32 60, i32 47, i32 72, i32 84, i32 77, i32 76, i32 62, i32 0], align 16
@do_test_about_protocol.test_html = internal constant [19 x i32] [i32 65279, i32 60, i32 72, i32 84, i32 77, i32 76, i32 62, i32 116, i32 101, i32 115, i32 116, i32 60, i32 47, i32 72, i32 84, i32 77, i32 76, i32 62, i32 0], align 16
@bindf = common dso_local global i32 0, align 4
@IID_IInternetProtocol = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not get IInternetProtocol: %08x\0A\00", align 1
@IID_IInternetPriority = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"QueryInterface(IInternetPriority) returned %08x, expected E_NOINTEFACE\0A\00", align 1
@about_blank_url = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"LockRequest failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Read failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cb=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Readed wrong data\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"UnlockRequest failed: %08x\0A\00", align 1
@about_test_url = common dso_local global i32 0, align 4
@about_res_url = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @do_test_about_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test_about_protocol(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [512 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* @bindf, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32** %5 to i8**
  %13 = call i32 @IClassFactory_CreateInstance(i32* %11, i32* null, i32* @IID_IInternetProtocol, i8** %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %9, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %159

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = bitcast i32** %6 to i8**
  %27 = call i32 @IInternetProtocol_QueryInterface(i32* %25, i32* @IID_IInternetPriority, i8** %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @E_NOINTERFACE, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @about_blank_url, align 4
  %36 = call i32 @protocol_start(i32* %34, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @IInternetProtocol_LockRequest(i32* %37, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @S_OK, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds [512 x i32], [512 x i32]* %7, i64 0, i64 0
  %47 = call i32 @IInternetProtocol_Read(i32* %45, i32* %46, i32 2048, i32* %8)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %55, 60
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds [512 x i32], [512 x i32]* %7, i64 0, i64 0
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @memcmp(i32* %60, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @do_test_about_protocol.blank_html, i64 0, i64 0), i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @IInternetProtocol_UnlockRequest(i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @S_OK, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @about_test_url, align 4
  %77 = call i32 @protocol_start(i32* %75, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @IInternetProtocol_LockRequest(i32* %78, i32 0)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @S_OK, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds [512 x i32], [512 x i32]* %7, i64 0, i64 0
  %88 = call i32 @IInternetProtocol_Read(i32* %86, i32* %87, i32 2048, i32* %8)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @S_OK, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp eq i64 %96, 76
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = getelementptr inbounds [512 x i32], [512 x i32]* %7, i64 0, i64 0
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @memcmp(i32* %101, i32* getelementptr inbounds ([19 x i32], [19 x i32]* @do_test_about_protocol.test_html, i64 0, i64 0), i32 %102)
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @IInternetProtocol_UnlockRequest(i32* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @S_OK, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* @about_res_url, align 4
  %118 = call i32 @protocol_start(i32* %116, i32 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @IInternetProtocol_LockRequest(i32* %119, i32 0)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @S_OK, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds [512 x i32], [512 x i32]* %7, i64 0, i64 0
  %129 = call i32 @IInternetProtocol_Read(i32* %127, i32* %128, i32 2048, i32* %8)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @S_OK, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %9, align 4
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp eq i64 %137, 60
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = getelementptr inbounds [512 x i32], [512 x i32]* %7, i64 0, i64 0
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @memcmp(i32* %142, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @do_test_about_protocol.blank_html, i64 0, i64 0), i32 %143)
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @IInternetProtocol_UnlockRequest(i32* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @S_OK, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %9, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @IInternetProtocol_Release(i32* %157)
  br label %159

159:                                              ; preds = %24, %23
  ret void
}

declare dso_local i32 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IInternetProtocol_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @protocol_start(i32*, i32) #1

declare dso_local i32 @IInternetProtocol_LockRequest(i32*, i32) #1

declare dso_local i32 @IInternetProtocol_Read(i32*, i32*, i32, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @IInternetProtocol_UnlockRequest(i32*) #1

declare dso_local i32 @IInternetProtocol_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
