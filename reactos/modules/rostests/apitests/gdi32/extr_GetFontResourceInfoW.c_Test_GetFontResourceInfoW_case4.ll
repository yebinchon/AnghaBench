; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetFontResourceInfoW.c_Test_GetFontResourceInfoW_case4.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetFontResourceInfoW.c_Test_GetFontResourceInfoW_case4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"data mismatched: \22%S\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @Test_GetFontResourceInfoW_case4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_GetFontResourceInfoW_case4(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 4, i32* %7, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @GetFontResourceInfoW(i32 %14, i32* %6, i32* null, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ok_int(i32 %17, i32 1)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @lstrlenW(i32 %20)
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ok_int(i32 %19, i32 %25)
  %27 = load i32, i32* @MAX_PATH, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @GetFontResourceInfoW(i32 %28, i32* %6, i32* null, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ok_int(i32 %31, i32 0)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = call i32 @ok_int(i32 %33, i32 %34)
  store i32 0, i32* %6, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @GetFontResourceInfoW(i32 %36, i32* %6, i32* %13, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ok_int(i32 %39, i32 1)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @lstrlenW(i32 %42)
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @ok_int(i32 %41, i32 %47)
  %49 = load i32, i32* @MAX_PATH, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @GetFontResourceInfoW(i32 %50, i32* %6, i32* %13, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ok_int(i32 %53, i32 1)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @lstrlenW(i32 %56)
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @ok_int(i32 %55, i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @lstrcmpiW(i32 %63, i32* %13)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %13)
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetFontResourceInfoW(i32, i32*, i32*, i32) #2

declare dso_local i32 @ok_int(i32, i32) #2

declare dso_local i32 @lstrlenW(i32) #2

declare dso_local i32 @ok(i32, i8*, i32*) #2

declare dso_local i64 @lstrcmpiW(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
