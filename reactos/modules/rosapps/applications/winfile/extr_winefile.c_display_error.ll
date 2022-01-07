; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_display_error.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_display_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFER_LEN = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@IDS_WINEFILE = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@IDS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @display_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_error(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @BUFFER_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @BUFFER_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %17 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @LANG_NEUTRAL, align 4
  %21 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %22 = call i32 @MAKELANGID(i32 %20, i32 %21)
  %23 = ptrtoint i32* %8 to i32
  %24 = call i64 @FormatMessageW(i32 %18, i32 0, i32 %19, i32 %22, i32 %23, i32 0, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IDS_WINEFILE, align 4
  %30 = call i32 @RS(i32* %15, i32 %29)
  %31 = load i32, i32* @MB_OK, align 4
  %32 = call i32 @MessageBoxW(i32 %27, i32 %28, i32 %30, i32 %31)
  br label %41

33:                                               ; preds = %2
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @IDS_ERROR, align 4
  %36 = call i32 @RS(i32* %12, i32 %35)
  %37 = load i32, i32* @IDS_WINEFILE, align 4
  %38 = call i32 @RS(i32* %15, i32 %37)
  %39 = load i32, i32* @MB_OK, align 4
  %40 = call i32 @MessageBoxW(i32 %34, i32 %36, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @LocalFree(i32 %42)
  %44 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %44)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FormatMessageW(i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @MAKELANGID(i32, i32) #2

declare dso_local i32 @MessageBoxW(i32, i32, i32, i32) #2

declare dso_local i32 @RS(i32*, i32) #2

declare dso_local i32 @LocalFree(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
