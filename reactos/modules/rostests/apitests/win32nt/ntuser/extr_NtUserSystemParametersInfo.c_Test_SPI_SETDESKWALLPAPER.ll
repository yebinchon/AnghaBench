; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETDESKWALLPAPER.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETDESKWALLPAPER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@SPI_GETDESKWALLPAPER = common dso_local global i32 0, align 4
@SPI_SETDESKWALLPAPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 116, i32 101, i32 115, i32 116, i32 46, i32 98, i32 109, i32 112, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 42, i32 35, i32 33, i32 33, i32 45, i32 38, i32 0], align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SPI_SETDESKWALLPAPER() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i64, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %13 = load i32, i32* @SPI_GETDESKWALLPAPER, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %13, i32 %14, i64* %9, i32 0)
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @TEST(i32 %17)
  %19 = call i32 (i64*, ...) @RtlInitUnicodeString(i64* %1, i64* %9)
  %20 = load i32, i32* @SPI_SETDESKWALLPAPER, align 4
  %21 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %20, i32 0, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i64 0, i64 0), i32 0)
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @TEST(i32 %23)
  %25 = load i32, i32* @SPI_GETDESKWALLPAPER, align 4
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %25, i32 %26, i64* %12, i32 0)
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST(i32 %29)
  %31 = getelementptr inbounds i64, i64* %12, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @TEST(i32 %34)
  %36 = call i32 (i64*, ...) @RtlInitUnicodeString(i64* %2, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @SPI_SETDESKWALLPAPER, align 4
  %38 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %37, i32 0, i64* %2, i32 0)
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @TEST(i32 %40)
  %42 = load i32, i32* @SPI_GETDESKWALLPAPER, align 4
  %43 = load i32, i32* @MAX_PATH, align 4
  %44 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %42, i32 %43, i64* %12, i32 0)
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @TEST(i32 %46)
  %48 = getelementptr inbounds i64, i64* %12, i64 0
  %49 = load i64, i64* %48, align 16
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @TEST(i32 %51)
  %53 = load i32, i32* @SPI_SETDESKWALLPAPER, align 4
  %54 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %53, i32 0, i8* null, i32 0)
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @TEST(i32 %56)
  %58 = load i32, i32* @SPI_GETDESKWALLPAPER, align 4
  %59 = load i32, i32* @MAX_PATH, align 4
  %60 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %58, i32 %59, i64* %12, i32 0)
  %61 = icmp eq i32 %60, 1
  %62 = zext i1 %61 to i32
  %63 = call i32 @TEST(i32 %62)
  %64 = call i64 (i64*, ...) @wcscmp(i64* %12, i64* %9)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @TEST(i32 %66)
  %68 = call i32 (i64*, ...) @RtlInitUnicodeString(i64* %2, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @SPI_SETDESKWALLPAPER, align 4
  %70 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %69, i32 0, i64* %2, i32 0)
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = call i32 @TEST(i32 %72)
  %74 = load i32, i32* @SPI_GETDESKWALLPAPER, align 4
  %75 = load i32, i32* @MAX_PATH, align 4
  %76 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %74, i32 %75, i64* %12, i32 0)
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @TEST(i32 %78)
  %80 = call i64 (i64*, ...) @wcscmp(i64* %12, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @.str.1, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @TEST(i32 %82)
  %84 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 0, i64* %84, align 16
  %85 = getelementptr inbounds i64, i64* %12, i64 1
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds i64, i64* %12, i64 2
  store i64 0, i64* %86, align 16
  %87 = load i32, i32* @SPI_GETDESKWALLPAPER, align 4
  %88 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %87, i32 3, i64* %12, i32 0)
  %89 = icmp eq i32 %88, 1
  %90 = zext i1 %89 to i32
  %91 = call i32 @TEST(i32 %90)
  %92 = getelementptr inbounds i64, i64* %12, i64 0
  %93 = load i64, i64* %92, align 16
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @TEST(i32 %95)
  %97 = getelementptr inbounds i64, i64* %12, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @TEST(i32 %100)
  %102 = getelementptr inbounds i64, i64* %12, i64 2
  %103 = load i64, i64* %102, align 16
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @TEST(i32 %105)
  %107 = call i32 @SetLastError(i32 -559038737)
  %108 = call i32 (i64*, ...) @RtlInitUnicodeString(i64* %2, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @SPI_SETDESKWALLPAPER, align 4
  %110 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %109, i32 0, i64* %2, i32 0)
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @TEST(i32 %112)
  %114 = call i64 (...) @GetLastError()
  %115 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @TEST(i32 %117)
  %119 = load i32, i32* @SPI_GETDESKWALLPAPER, align 4
  %120 = load i32, i32* @MAX_PATH, align 4
  %121 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %119, i32 %120, i64* %12, i32 0)
  %122 = icmp eq i32 %121, 1
  %123 = zext i1 %122 to i32
  %124 = call i32 @TEST(i32 %123)
  %125 = call i64 (i64*, ...) @wcscmp(i64* %12, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.2, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @TEST(i32 %127)
  %129 = load i32, i32* @SPI_SETDESKWALLPAPER, align 4
  %130 = load i32, i32* @MAX_PATH, align 4
  %131 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %132 = call i32 (i32, i32, ...) @NtUserSystemParametersInfo(i32 %129, i32 %130, i64* %1, i32 %131)
  %133 = icmp eq i32 %132, 1
  %134 = zext i1 %133 to i32
  %135 = call i32 @TEST(i32 %134)
  %136 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %136)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TEST(i32) #2

declare dso_local i32 @NtUserSystemParametersInfo(i32, i32, ...) #2

declare dso_local i32 @RtlInitUnicodeString(i64*, ...) #2

declare dso_local i64 @wcscmp(i64*, ...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
