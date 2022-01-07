; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dialog.c_promptdisk_ok.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dialog.c_promptdisk_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promptdisk_params = type { i32*, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@IDC_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"returning PathRequiredSize=%d\0A\00", align 1
@NO_ERROR = common dso_local global i32 0, align 4
@DPROMPT_BUFFERTOOSMALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"returning PathBuffer=%s\0A\00", align 1
@DPROMPT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.promptdisk_params*)* @promptdisk_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @promptdisk_ok(i32 %0, %struct.promptdisk_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.promptdisk_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.promptdisk_params* %1, %struct.promptdisk_params** %4, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IDC_PATH, align 4
  %15 = call i32 @GetDlgItem(i32 %13, i32 %14)
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = call i32 @GetWindowTextW(i32 %15, i32* %12, i32 %16)
  %18 = call i32 @strlenW(i32* %12)
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %21 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %27 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32 %25, i32* %28, align 4
  %29 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %30 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %24, %2
  %35 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %36 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @NO_ERROR, align 4
  %42 = call i32 @EndDialog(i32 %40, i32 %41)
  store i32 1, i32* %8, align 4
  br label %66

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %46 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @DPROMPT_BUFFERTOOSMALL, align 4
  %52 = call i32 @EndDialog(i32 %50, i32 %51)
  store i32 1, i32* %8, align 4
  br label %66

53:                                               ; preds = %43
  %54 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %55 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcpyW(i32 %56, i32* %12)
  %58 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %59 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @debugstr_w(i32 %60)
  %62 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @DPROMPT_SUCCESS, align 4
  %65 = call i32 @EndDialog(i32 %63, i32 %64)
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %53, %49, %39
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %8, align 4
  switch i32 %68, label %70 [
    i32 0, label %69
    i32 1, label %69
  ]

69:                                               ; preds = %66, %66
  ret void

70:                                               ; preds = %66
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWindowTextW(i32, i32*, i32) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i32 @strlenW(i32*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @EndDialog(i32, i32) #2

declare dso_local i32 @strcpyW(i32, i32*) #2

declare dso_local i32 @debugstr_w(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
