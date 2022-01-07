; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/ui/extr_localui.c_dlg_nothingtoconfig.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/ui/extr_localui.c_dlg_nothingtoconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDS_LOCALPORT_MAXLEN = common dso_local global i32 0, align 4
@IDS_NOTHINGTOCONFIG_MAXLEN = common dso_local global i32 0, align 4
@LOCALUI_hInstance = common dso_local global i32 0, align 4
@IDS_LOCALPORT = common dso_local global i32 0, align 4
@IDS_NOTHINGTOCONFIG = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONINFORMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dlg_nothingtoconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlg_nothingtoconfig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @IDS_LOCALPORT_MAXLEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @IDS_NOTHINGTOCONFIG_MAXLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %13 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %13, align 16
  %14 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %14, align 16
  %15 = load i32, i32* @LOCALUI_hInstance, align 4
  %16 = load i32, i32* @IDS_LOCALPORT, align 4
  %17 = load i32, i32* @IDS_LOCALPORT_MAXLEN, align 4
  %18 = call i32 @LoadStringW(i32 %15, i32 %16, i8* %9, i32 %17)
  %19 = load i32, i32* @LOCALUI_hInstance, align 4
  %20 = load i32, i32* @IDS_NOTHINGTOCONFIG, align 4
  %21 = load i32, i32* @IDS_NOTHINGTOCONFIG_MAXLEN, align 4
  %22 = call i32 @LoadStringW(i32 %19, i32 %20, i8* %12, i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @MB_OK, align 4
  %25 = load i32, i32* @MB_ICONINFORMATION, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @MessageBoxW(i32 %23, i8* %12, i8* %9, i32 %26)
  %28 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %28)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #2

declare dso_local i32 @MessageBoxW(i32, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
