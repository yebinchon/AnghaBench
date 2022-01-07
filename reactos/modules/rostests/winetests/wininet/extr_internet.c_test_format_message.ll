; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_format_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_format_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@ERROR_INTERNET_TIMEOUT = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_NEUTRAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"FormatMessageA returned %d\0A\00", align 1
@FORMAT_MESSAGE_FROM_HMODULE = common dso_local global i32 0, align 4
@ERROR_INTERNET_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERROR_INTERNET_INVALID_URL = common dso_local global i32 0, align 4
@ERROR_INTERNET_UNRECOGNIZED_SCHEME = common dso_local global i32 0, align 4
@ERROR_INTERNET_NAME_NOT_RESOLVED = common dso_local global i32 0, align 4
@ERROR_INTERNET_INVALID_OPERATION = common dso_local global i32 0, align 4
@ERROR_INTERNET_OPERATION_CANCELLED = common dso_local global i32 0, align 4
@ERROR_INTERNET_ITEM_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_INTERNET_CANNOT_CONNECT = common dso_local global i32 0, align 4
@ERROR_INTERNET_CONNECTION_ABORTED = common dso_local global i32 0, align 4
@ERROR_INTERNET_SEC_CERT_DATE_INVALID = common dso_local global i32 0, align 4
@ERROR_INTERNET_SEC_CERT_CN_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_format_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_format_message(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [256 x i32], align 16
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %6 = load i32, i32* @ERROR_INTERNET_TIMEOUT, align 4
  %7 = load i32, i32* @LANG_NEUTRAL, align 4
  %8 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %9 = call i32 @MAKELANGID(i32 %7, i32 %8)
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %11 = call i64 @FormatMessageA(i32 %5, i32* null, i32 %6, i32 %9, i32* %10, i32 1024, i32* null)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @ERROR_INTERNET_TIMEOUT, align 4
  %20 = load i32, i32* @LANG_NEUTRAL, align 4
  %21 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %22 = call i32 @MAKELANGID(i32 %20, i32 %21)
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %24 = call i64 @FormatMessageA(i32 %17, i32* %18, i32 %19, i32 %22, i32* %23, i32 1024, i32* null)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @ERROR_INTERNET_INTERNAL_ERROR, align 4
  %33 = load i32, i32* @LANG_NEUTRAL, align 4
  %34 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %35 = call i32 @MAKELANGID(i32 %33, i32 %34)
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %37 = call i64 @FormatMessageA(i32 %30, i32* %31, i32 %32, i32 %35, i32* %36, i32 1024, i32* null)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @ERROR_INTERNET_INVALID_URL, align 4
  %46 = load i32, i32* @LANG_NEUTRAL, align 4
  %47 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %48 = call i32 @MAKELANGID(i32 %46, i32 %47)
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %50 = call i64 @FormatMessageA(i32 %43, i32* %44, i32 %45, i32 %48, i32* %49, i32 1024, i32* null)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @ERROR_INTERNET_UNRECOGNIZED_SCHEME, align 4
  %59 = load i32, i32* @LANG_NEUTRAL, align 4
  %60 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %61 = call i32 @MAKELANGID(i32 %59, i32 %60)
  %62 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %63 = call i64 @FormatMessageA(i32 %56, i32* %57, i32 %58, i32 %61, i32* %62, i32 1024, i32* null)
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* %3, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* @ERROR_INTERNET_NAME_NOT_RESOLVED, align 4
  %72 = load i32, i32* @LANG_NEUTRAL, align 4
  %73 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %74 = call i32 @MAKELANGID(i32 %72, i32 %73)
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %76 = call i64 @FormatMessageA(i32 %69, i32* %70, i32 %71, i32 %74, i32* %75, i32 1024, i32* null)
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* @ERROR_INTERNET_INVALID_OPERATION, align 4
  %85 = load i32, i32* @LANG_NEUTRAL, align 4
  %86 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %87 = call i32 @MAKELANGID(i32 %85, i32 %86)
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %89 = call i64 @FormatMessageA(i32 %82, i32* %83, i32 %84, i32 %87, i32* %88, i32 1024, i32* null)
  store i64 %89, i64* %3, align 8
  %90 = load i64, i64* %3, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %1
  %93 = load i64, i64* %3, align 8
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @broken(i32 %96)
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %92, %1
  %100 = phi i1 [ true, %1 ], [ %98, %92 ]
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %3, align 8
  %103 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %102)
  %104 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %105 = load i32*, i32** %2, align 8
  %106 = load i32, i32* @ERROR_INTERNET_OPERATION_CANCELLED, align 4
  %107 = load i32, i32* @LANG_NEUTRAL, align 4
  %108 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %109 = call i32 @MAKELANGID(i32 %107, i32 %108)
  %110 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %111 = call i64 @FormatMessageA(i32 %104, i32* %105, i32 %106, i32 %109, i32* %110, i32 1024, i32* null)
  store i64 %111, i64* %3, align 8
  %112 = load i64, i64* %3, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* %3, align 8
  %116 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* @ERROR_INTERNET_ITEM_NOT_FOUND, align 4
  %120 = load i32, i32* @LANG_NEUTRAL, align 4
  %121 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %122 = call i32 @MAKELANGID(i32 %120, i32 %121)
  %123 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %124 = call i64 @FormatMessageA(i32 %117, i32* %118, i32 %119, i32 %122, i32* %123, i32 1024, i32* null)
  store i64 %124, i64* %3, align 8
  %125 = load i64, i64* %3, align 8
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %3, align 8
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %128)
  %130 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %131 = load i32*, i32** %2, align 8
  %132 = load i32, i32* @ERROR_INTERNET_CANNOT_CONNECT, align 4
  %133 = load i32, i32* @LANG_NEUTRAL, align 4
  %134 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %135 = call i32 @MAKELANGID(i32 %133, i32 %134)
  %136 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %137 = call i64 @FormatMessageA(i32 %130, i32* %131, i32 %132, i32 %135, i32* %136, i32 1024, i32* null)
  store i64 %137, i64* %3, align 8
  %138 = load i64, i64* %3, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = load i64, i64* %3, align 8
  %142 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %141)
  %143 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %144 = load i32*, i32** %2, align 8
  %145 = load i32, i32* @ERROR_INTERNET_CONNECTION_ABORTED, align 4
  %146 = load i32, i32* @LANG_NEUTRAL, align 4
  %147 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %148 = call i32 @MAKELANGID(i32 %146, i32 %147)
  %149 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %150 = call i64 @FormatMessageA(i32 %143, i32* %144, i32 %145, i32 %148, i32* %149, i32 1024, i32* null)
  store i64 %150, i64* %3, align 8
  %151 = load i64, i64* %3, align 8
  %152 = icmp ne i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = load i64, i64* %3, align 8
  %155 = call i32 @ok(i32 %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %154)
  %156 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %157 = load i32*, i32** %2, align 8
  %158 = load i32, i32* @ERROR_INTERNET_SEC_CERT_DATE_INVALID, align 4
  %159 = load i32, i32* @LANG_NEUTRAL, align 4
  %160 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %161 = call i32 @MAKELANGID(i32 %159, i32 %160)
  %162 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %163 = call i64 @FormatMessageA(i32 %156, i32* %157, i32 %158, i32 %161, i32* %162, i32 1024, i32* null)
  store i64 %163, i64* %3, align 8
  %164 = load i64, i64* %3, align 8
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %3, align 8
  %168 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %167)
  %169 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %170 = load i32*, i32** %2, align 8
  %171 = load i32, i32* @ERROR_INTERNET_SEC_CERT_CN_INVALID, align 4
  %172 = load i32, i32* @LANG_NEUTRAL, align 4
  %173 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %174 = call i32 @MAKELANGID(i32 %172, i32 %173)
  %175 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %176 = call i64 @FormatMessageA(i32 %169, i32* %170, i32 %171, i32 %174, i32* %175, i32 1024, i32* null)
  store i64 %176, i64* %3, align 8
  %177 = load i64, i64* %3, align 8
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = load i64, i64* %3, align 8
  %181 = call i32 @ok(i32 %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %180)
  ret void
}

declare dso_local i64 @FormatMessageA(i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
