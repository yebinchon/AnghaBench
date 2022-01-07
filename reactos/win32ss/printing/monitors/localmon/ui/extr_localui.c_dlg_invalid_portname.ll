; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/ui/extr_localui.c_dlg_invalid_portname.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/ui/extr_localui.c_dlg_invalid_portname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDS_LOCALPORT_MAXLEN = common dso_local global i32 0, align 4
@IDS_INVALIDNAME_MAXLEN = common dso_local global i32 0, align 4
@LOCALUI_hInstance = common dso_local global i32 0, align 4
@IDS_LOCALPORT = common dso_local global i32 0, align 4
@IDS_INVALIDNAME = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dlg_invalid_portname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlg_invalid_portname(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @IDS_LOCALPORT_MAXLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @IDS_INVALIDNAME_MAXLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %17, align 16
  %18 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %18, align 16
  %19 = load i32, i32* @LOCALUI_hInstance, align 4
  %20 = load i32, i32* @IDS_LOCALPORT, align 4
  %21 = load i32, i32* @IDS_LOCALPORT_MAXLEN, align 4
  %22 = call i32 @LoadStringW(i32 %19, i32 %20, i8* %13, i32 %21)
  %23 = load i32, i32* @LOCALUI_hInstance, align 4
  %24 = load i32, i32* @IDS_INVALIDNAME, align 4
  %25 = load i32, i32* @IDS_INVALIDNAME_MAXLEN, align 4
  %26 = call i32 @LoadStringW(i32 %23, i32 %24, i8* %16, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @lstrlenW(i32 %27)
  %29 = load i32, i32* @IDS_INVALIDNAME_MAXLEN, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i8* @HeapAlloc(i32 %31, i32 0, i32 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %2
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @snprintfW(i8* %42, i32 %43, i8* %16, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* @MB_OK, align 4
  %49 = load i32, i32* @MB_ICONERROR, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @MessageBoxW(i32 %46, i8* %47, i8* %13, i32 %50)
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @HeapFree(i32 %52, i32 0, i8* %53)
  br label %55

55:                                               ; preds = %39, %2
  %56 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %56)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #2

declare dso_local i32 @lstrlenW(i32) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @snprintfW(i8*, i32, i8*, i32) #2

declare dso_local i32 @MessageBoxW(i32, i8*, i8*, i32) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
