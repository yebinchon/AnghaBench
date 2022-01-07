; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SetPixel.c_Test_SetPixel_Params.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SetPixel.c_Test_SetPixel_Params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SetPixel_Params() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @SetLastError(i32 0)
  %3 = call i32 @RGB(i32 255, i32 255, i32 255)
  %4 = call i32 @SetPixel(i64 0, i32 0, i32 0, i32 %3)
  %5 = call i32 @ok_long(i32 %4, i32 -1)
  %6 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %7 = call i32 @ok_err(i32 %6)
  %8 = call i64 @CreateICA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @SetLastError(i32 0)
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @SetPixel(i64 %14, i32 0, i32 0, i32 0)
  %16 = call i32 @ok_long(i32 %15, i32 -1)
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @RGB(i32 255, i32 255, i32 255)
  %19 = call i32 @SetPixel(i64 %17, i32 0, i32 0, i32 %18)
  %20 = call i32 @ok_long(i32 %19, i32 -1)
  %21 = call i32 @ok_err(i32 0)
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @DeleteDC(i64 %22)
  %24 = call i64 @CreateCompatibleDC(i32* null)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @SetLastError(i32 0)
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @SetPixel(i64 %30, i32 0, i32 0, i32 0)
  %32 = call i32 @ok_long(i32 %31, i32 -1)
  %33 = call i32 @ok_err(i32 0)
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @DeleteDC(i64 %34)
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @SetPixel(i64 %36, i32 0, i32 0, i32 0)
  %38 = call i32 @ok_long(i32 %37, i32 -1)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @SetPixel(i64, i32, i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @ok_err(i32) #1

declare dso_local i64 @CreateICA(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @DeleteDC(i64) #1

declare dso_local i64 @CreateCompatibleDC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
