; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/ui/extr_localui.c_dlg_win32error.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/ui/extr_localui.c_dlg_win32error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDS_LOCALPORT_MAXLEN = common dso_local global i32 0, align 4
@LOCALUI_hInstance = common dso_local global i32 0, align 4
@IDS_LOCALPORT = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @dlg_win32error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlg_win32error(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @IDS_LOCALPORT_MAXLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  store i32* null, i32** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %13, align 16
  %14 = load i32, i32* @LOCALUI_hInstance, align 4
  %15 = load i32, i32* @IDS_LOCALPORT, align 4
  %16 = load i32, i32* @IDS_LOCALPORT_MAXLEN, align 4
  %17 = call i32 @LoadStringW(i32 %14, i32 %15, i8* %12, i32 %16)
  %18 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %19 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %20 = or i32 %18, %19
  %21 = load i64, i64* %4, align 8
  %22 = bitcast i32** %7 to i32*
  %23 = call i64 @FormatMessageW(i32 %20, i32* null, i64 %21, i32 0, i32* %22, i32 0, i32* null)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @MB_OK, align 4
  %30 = load i32, i32* @MB_ICONERROR, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @MessageBoxW(i32 %27, i32* %28, i8* %12, i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @LocalFree(i32* %33)
  br label %35

35:                                               ; preds = %26, %2
  %36 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %36)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #2

declare dso_local i64 @FormatMessageW(i32, i32*, i64, i32, i32*, i32, i32*) #2

declare dso_local i32 @MessageBoxW(i32, i32*, i8*, i32) #2

declare dso_local i32 @LocalFree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
