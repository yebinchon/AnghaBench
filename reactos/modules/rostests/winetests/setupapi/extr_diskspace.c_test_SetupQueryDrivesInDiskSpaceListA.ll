; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupQueryDrivesInDiskSpaceListA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupQueryDrivesInDiskSpaceListA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@SPDSL_IGNORE_DISK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Expected SetupCreateDiskSpaceListA to return a valid handle\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Expected SetupQueryDrivesInDiskSpaceListA to succeed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Expected size 1, got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"F:\\random-file.dat\00", align 1
@FILEOP_COPY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Expected SetupAddToDiskSpaceListA to succeed\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"G:\\random-file.dat\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"G:\\random-file2.dat\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"X:\\random-file.dat\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Expected size 10, got %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Expected SetupQueryDrivesInDiskSpaceListA to fail\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Expected size 4, got %u\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [69 x i8] c"Expected GetLastError() to return ERROR_INSUFFICIENT_BUFFER, got %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Expected size 7, got %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"f:\00g:\00x:\00\00\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Device list does not match\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"Expected SetupDestroyDiskSpaceList to succeed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupQueryDrivesInDiskSpaceListA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupQueryDrivesInDiskSpaceListA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @SPDSL_IGNORE_DISK, align 4
  %11 = call i32* @SetupCreateDiskSpaceListA(i32* null, i32 0, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @SetupQueryDrivesInDiskSpaceListA(i32* %16, i8* null, i32 0, i32* null)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @SetupQueryDrivesInDiskSpaceListA(i32* %20, i8* null, i32 0, i32* %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @FILEOP_COPY, align 4
  %31 = call i32 @SetupAddToDiskSpaceListA(i32* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %30, i32 0, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @FILEOP_COPY, align 4
  %36 = call i32 @SetupAddToDiskSpaceListA(i32* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %35, i32 0, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @FILEOP_COPY, align 4
  %41 = call i32 @SetupAddToDiskSpaceListA(i32* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %40, i32 0, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @FILEOP_COPY, align 4
  %46 = call i32 @SetupAddToDiskSpaceListA(i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %45, i32 0, i32 0)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @SetupQueryDrivesInDiskSpaceListA(i32* %49, i8* null, i32 0, i32* %4)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 10
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %56)
  store i32 0, i32* %4, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @SetupQueryDrivesInDiskSpaceListA(i32* %58, i8* %9, i32 0, i32* %4)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 4
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %68)
  %70 = call i32 (...) @GetLastError()
  %71 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 (...) @GetLastError()
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0), i32 %74)
  store i32 0, i32* %4, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @SetupQueryDrivesInDiskSpaceListA(i32* %76, i8* %9, i32 4, i32* %4)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 7
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %4, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %86)
  %88 = call i32 (...) @GetLastError()
  %89 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 (...) @GetLastError()
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0), i32 %92)
  store i32 0, i32* %4, align 4
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @SetupQueryDrivesInDiskSpaceListA(i32* %94, i8* %9, i32 7, i32* %4)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %101, 10
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %4, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %104)
  %106 = call i32 (...) @GetLastError()
  %107 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 (...) @GetLastError()
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0), i32 %110)
  store i32 0, i32* %4, align 4
  %112 = trunc i64 %7 to i32
  %113 = call i32 @memset(i8* %9, i32 255, i32 %112)
  %114 = load i32*, i32** %3, align 8
  %115 = trunc i64 %7 to i32
  %116 = call i32 @SetupQueryDrivesInDiskSpaceListA(i32* %114, i8* %9, i32 %115, i32* %4)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* %4, align 4
  %120 = icmp eq i32 %119, 10
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %4, align 4
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  %124 = call i32 @memcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %9, i32 10)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %129 = trunc i64 %7 to i32
  %130 = call i32 @memset(i8* %9, i32 255, i32 %129)
  %131 = load i32*, i32** %3, align 8
  %132 = trunc i64 %7 to i32
  %133 = call i32 @SetupQueryDrivesInDiskSpaceListA(i32* %131, i8* %9, i32 %132, i32* null)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %136 = call i32 @memcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %9, i32 10)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @SetupDestroyDiskSpaceList(i32* %141)
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  %144 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %144)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @SetupCreateDiskSpaceListA(i32*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SetupQueryDrivesInDiskSpaceListA(i32*, i8*, i32, i32*) #2

declare dso_local i32 @SetupAddToDiskSpaceListA(i32*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @SetupDestroyDiskSpaceList(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
