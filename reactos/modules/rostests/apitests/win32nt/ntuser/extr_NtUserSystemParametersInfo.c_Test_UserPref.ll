; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_UserPref.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_UserPref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_DESKTOP = common dso_local global i32 0, align 4
@VAL_PREFMASK = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_UserPref(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @NtUserSystemParametersInfo(i32 %12, i32 0, i32* %7, i32 0)
  store i32 4, i32* %11, align 4
  %14 = load i32, i32* @KEY_DESKTOP, align 4
  %15 = load i32, i32* @VAL_PREFMASK, align 4
  %16 = call i64 @QueryUserRegValueW(i32 %14, i32 %15, i32* %10, i32* %11, i32* null)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %19 = call i32 @NtUserSystemParametersInfo(i32 %17, i32 0, i32* null, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @NtUserSystemParametersInfo(i32 %20, i32 0, i32* %8, i32 0)
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @TEST(i32 %24)
  store i32 4, i32* %11, align 4
  %26 = load i32, i32* @KEY_DESKTOP, align 4
  %27 = load i32, i32* @VAL_PREFMASK, align 4
  %28 = call i64 @QueryUserRegValueW(i32 %26, i32 %27, i32* %9, i32* %11, i32* null)
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = icmp eq i32 %42, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @TEST(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @NtUserSystemParametersInfo(i32 %50, i32 0, i32* inttoptr (i64 1 to i32*), i32 0)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @NtUserSystemParametersInfo(i32 %52, i32 0, i32* %8, i32 0)
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @TEST(i32 %56)
  store i32 4, i32* %11, align 4
  %58 = load i32, i32* @KEY_DESKTOP, align 4
  %59 = load i32, i32* @VAL_PREFMASK, align 4
  %60 = call i64 @QueryUserRegValueW(i32 %58, i32 %59, i32* %9, i32* %11, i32* null)
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @TEST(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %6, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = icmp eq i32 %74, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @TEST(i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @NtUserSystemParametersInfo(i32 %82, i32 0, i32* inttoptr (i64 2 to i32*), i32 0)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @NtUserSystemParametersInfo(i32 %84, i32 0, i32* %8, i32 0)
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 1
  %88 = zext i1 %87 to i32
  %89 = call i32 @TEST(i32 %88)
  store i32 4, i32* %11, align 4
  %90 = load i32, i32* @KEY_DESKTOP, align 4
  %91 = load i32, i32* @VAL_PREFMASK, align 4
  %92 = call i64 @QueryUserRegValueW(i32 %90, i32 %91, i32* %9, i32* %11, i32* null)
  %93 = load i64, i64* @ERROR_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @TEST(i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @TEST(i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %6, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %6, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = icmp eq i32 %106, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @TEST(i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %116 = call i32 @NtUserSystemParametersInfo(i32 %114, i32 0, i32* inttoptr (i64 1 to i32*), i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @NtUserSystemParametersInfo(i32 %117, i32 0, i32* %8, i32 0)
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 1
  %121 = zext i1 %120 to i32
  %122 = call i32 @TEST(i32 %121)
  store i32 4, i32* %11, align 4
  %123 = load i32, i32* @KEY_DESKTOP, align 4
  %124 = load i32, i32* @VAL_PREFMASK, align 4
  %125 = call i64 @QueryUserRegValueW(i32 %123, i32 %124, i32* %9, i32* %11, i32* null)
  %126 = load i64, i64* @ERROR_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @TEST(i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %6, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @TEST(i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %6, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %6, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %141, %143
  %145 = icmp eq i32 %140, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @TEST(i32 %146)
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i32*
  %152 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %153 = call i32 @NtUserSystemParametersInfo(i32 %148, i32 0, i32* %151, i32 %152)
  ret void
}

declare dso_local i32 @NtUserSystemParametersInfo(i32, i32, i32*, i32) #1

declare dso_local i64 @QueryUserRegValueW(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
