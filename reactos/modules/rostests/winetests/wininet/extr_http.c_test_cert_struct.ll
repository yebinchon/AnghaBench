; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_cert_struct.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_test_cert_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@INTERNET_OPTION_SECURITY_CERTIFICATE_STRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"InternetQueryOption failed: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"size = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"lpszSubjectInfo = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"lpszIssuerInfo = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"lpszSignatureAlgName = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"lpszEncryptionAlgName = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"lpszProtocolName = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"dwKeySize = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*)* @test_cert_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cert_struct(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = call i32 @memset(%struct.TYPE_8__* %5, i32 5, i32 24)
  store i32 24, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @INTERNET_OPTION_SECURITY_CERTIFICATE_STRUCT, align 4
  %11 = call i32 @InternetQueryOptionA(i32 %9, i32 %10, %struct.TYPE_8__* %5, i32* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %16, 24
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcmp(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcmp(i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %70, 128
  br i1 %71, label %72, label %76

72:                                               ; preds = %2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = icmp sle i32 %74, 256
  br label %76

76:                                               ; preds = %72, %2
  %77 = phi i1 [ false, %2 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = call i32 @release_cert_info(%struct.TYPE_8__* %5)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @InternetQueryOptionA(i32, i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @release_cert_info(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
