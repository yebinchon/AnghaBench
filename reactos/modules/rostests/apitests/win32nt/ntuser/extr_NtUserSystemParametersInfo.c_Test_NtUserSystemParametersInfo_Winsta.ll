; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_NtUserSystemParametersInfo_Winsta.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_NtUserSystemParametersInfo_Winsta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@READ_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hwinstaOld=%p, hwinsta=%p\0A\00", align 1
@SPI_GETBEEP = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@SPI_SETBEEP = common dso_local global i32 0, align 4
@ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION = common dso_local global i64 0, align 8
@SPI_GETMOUSE = common dso_local global i32 0, align 4
@SPI_SETMOUSE = common dso_local global i32 0, align 4
@SPI_GETBORDER = common dso_local global i32 0, align 4
@SPI_SETBORDER = common dso_local global i32 0, align 4
@SPI_GETKEYBOARDSPEED = common dso_local global i32 0, align 4
@SPI_SETKEYBOARDSPEED = common dso_local global i32 0, align 4
@SPI_ICONHORIZONTALSPACING = common dso_local global i32 0, align 4
@SPI_GETSCREENSAVETIMEOUT = common dso_local global i32 0, align 4
@SPI_SETSCREENSAVETIMEOUT = common dso_local global i32 0, align 4
@SPI_GETKEYBOARDCUES = common dso_local global i32 0, align 4
@SPI_SETKEYBOARDCUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_NtUserSystemParametersInfo_Winsta() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [20 x i32], align 16
  %4 = alloca i32, align 4
  %5 = call i32 (...) @GetProcessWindowStation()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @READ_CONTROL, align 4
  %7 = call i32 @CreateWindowStation(i32* null, i32 0, i32 %6, i32* null)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @SetProcessWindowStation(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* @SPI_GETBEEP, align 4
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %15 = call i64 @SystemParametersInfoA(i32 %13, i32 0, i32* %14, i32 0)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @TEST(i32 %17)
  %19 = call i64 (...) @GetLastError()
  %20 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @TEST(i32 %22)
  %24 = load i32, i32* @SPI_SETBEEP, align 4
  %25 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %26 = call i64 @SystemParametersInfoA(i32 %24, i32 0, i32* %25, i32 0)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST(i32 %28)
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST(i32 %33)
  %35 = load i32, i32* @SPI_GETMOUSE, align 4
  %36 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %37 = call i64 @SystemParametersInfoA(i32 %35, i32 0, i32* %36, i32 0)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST(i32 %39)
  %41 = call i64 (...) @GetLastError()
  %42 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @TEST(i32 %44)
  %46 = load i32, i32* @SPI_SETMOUSE, align 4
  %47 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %48 = call i64 @SystemParametersInfoA(i32 %46, i32 0, i32* %47, i32 0)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @TEST(i32 %50)
  %52 = call i64 (...) @GetLastError()
  %53 = load i64, i64* @ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST(i32 %55)
  %57 = load i32, i32* @SPI_GETBORDER, align 4
  %58 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %59 = call i64 @SystemParametersInfoA(i32 %57, i32 0, i32* %58, i32 0)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @TEST(i32 %61)
  %63 = call i64 (...) @GetLastError()
  %64 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @TEST(i32 %66)
  %68 = load i32, i32* @SPI_SETBORDER, align 4
  %69 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %70 = call i64 @SystemParametersInfoA(i32 %68, i32 0, i32* %69, i32 0)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @TEST(i32 %72)
  %74 = call i64 (...) @GetLastError()
  %75 = load i64, i64* @ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @TEST(i32 %77)
  %79 = load i32, i32* @SPI_GETKEYBOARDSPEED, align 4
  %80 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %81 = call i64 @SystemParametersInfoA(i32 %79, i32 0, i32* %80, i32 0)
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @TEST(i32 %83)
  %85 = call i64 (...) @GetLastError()
  %86 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @TEST(i32 %88)
  %90 = load i32, i32* @SPI_SETKEYBOARDSPEED, align 4
  %91 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %92 = call i64 @SystemParametersInfoA(i32 %90, i32 0, i32* %91, i32 0)
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @TEST(i32 %94)
  %96 = call i64 (...) @GetLastError()
  %97 = load i64, i64* @ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @TEST(i32 %99)
  %101 = load i32, i32* @SPI_ICONHORIZONTALSPACING, align 4
  %102 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %103 = call i64 @SystemParametersInfoA(i32 %101, i32 0, i32* %102, i32 0)
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @TEST(i32 %105)
  %107 = call i64 (...) @GetLastError()
  %108 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @TEST(i32 %110)
  %112 = load i32, i32* @SPI_ICONHORIZONTALSPACING, align 4
  %113 = call i64 @SystemParametersInfoA(i32 %112, i32 32, i32* null, i32 0)
  %114 = icmp eq i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @TEST(i32 %115)
  %117 = call i64 (...) @GetLastError()
  %118 = load i64, i64* @ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @TEST(i32 %120)
  %122 = load i32, i32* @SPI_GETSCREENSAVETIMEOUT, align 4
  %123 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %124 = call i64 @SystemParametersInfoA(i32 %122, i32 0, i32* %123, i32 0)
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @TEST(i32 %126)
  %128 = call i64 (...) @GetLastError()
  %129 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @TEST(i32 %131)
  %133 = load i32, i32* @SPI_SETSCREENSAVETIMEOUT, align 4
  %134 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %135 = call i64 @SystemParametersInfoA(i32 %133, i32 0, i32* %134, i32 0)
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @TEST(i32 %137)
  %139 = call i64 (...) @GetLastError()
  %140 = load i64, i64* @ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @TEST(i32 %142)
  %144 = load i32, i32* @SPI_GETKEYBOARDCUES, align 4
  %145 = call i64 @SystemParametersInfoA(i32 %144, i32 0, i32* %4, i32 0)
  %146 = icmp eq i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @TEST(i32 %147)
  %149 = call i64 (...) @GetLastError()
  %150 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @TEST(i32 %152)
  %154 = load i32, i32* @SPI_SETKEYBOARDCUES, align 4
  %155 = call i64 @SystemParametersInfoA(i32 %154, i32 0, i32* inttoptr (i64 1 to i32*), i32 0)
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @TEST(i32 %157)
  %159 = call i64 (...) @GetLastError()
  %160 = load i64, i64* @ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @TEST(i32 %162)
  %164 = load i32, i32* %2, align 4
  %165 = call i32 @SetProcessWindowStation(i32 %164)
  ret void
}

declare dso_local i32 @GetProcessWindowStation(...) #1

declare dso_local i32 @CreateWindowStation(i32*, i32, i32, i32*) #1

declare dso_local i32 @SetProcessWindowStation(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @TEST(i32) #1

declare dso_local i64 @SystemParametersInfoA(i32, i32, i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
