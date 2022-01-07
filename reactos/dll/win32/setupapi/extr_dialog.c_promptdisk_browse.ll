; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dialog.c_promptdisk_browse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dialog.c_promptdisk_browse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promptdisk_params = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@OFN_HIDEREADONLY = common dso_local global i32 0, align 4
@OFN_FILEMUSTEXIST = common dso_local global i32 0, align 4
@OFN_PATHMUSTEXIST = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@IDC_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.promptdisk_params*)* @promptdisk_browse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @promptdisk_browse(i32 %0, %struct.promptdisk_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.promptdisk_params*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.promptdisk_params* %1, %struct.promptdisk_params** %4, align 8
  %7 = call i32 @ZeroMemory(%struct.TYPE_4__* %5, i32 20)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 20, i32* %8, align 4
  %9 = load i32, i32* @OFN_HIDEREADONLY, align 4
  %10 = load i32, i32* @OFN_FILEMUSTEXIST, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @OFN_PATHMUSTEXIST, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @HeapAlloc(i32 %19, i32 0, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %29 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcpyW(i32 %27, i32 %30)
  %32 = call i64 @GetOpenFileNameW(%struct.TYPE_4__* %5)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64* @strrchrW(i32 %36, i8 signext 92)
  store i64* %37, i64** %6, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64*, i64** %6, align 8
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @IDC_PATH, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SetDlgItemTextW(i32 %43, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %42, %2
  %49 = call i32 (...) @GetProcessHeap()
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @HeapFree(i32 %49, i32 0, i32 %51)
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strcpyW(i32, i32) #1

declare dso_local i64 @GetOpenFileNameW(%struct.TYPE_4__*) #1

declare dso_local i64* @strrchrW(i32, i8 signext) #1

declare dso_local i32 @SetDlgItemTextW(i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
