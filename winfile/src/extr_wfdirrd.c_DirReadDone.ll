; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirrd.c_DirReadDone.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirrd.c_DirReadDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDCW_LISTBOX = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@GWL_HDTAABORT = common dso_local global i32 0, align 4
@EDIRABORT_READREQUEST = common dso_local global i32 0, align 4
@EDIRABORT_WINDOWCLOSE = common dso_local global i32 0, align 4
@GWL_HDTA = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_FLAGS = common dso_local global i32 0, align 4
@GWL_IERROR = common dso_local global i32 0, align 4
@LB_DELETESTRING = common dso_local global i32 0, align 4
@GWLP_USERDATA = common dso_local global i32 0, align 4
@GWL_NEXTHWND = common dso_local global i32 0, align 4
@FS_TESTEMPTY = common dso_local global i32 0, align 4
@qFreeSpace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DirReadDone(i64 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @IDCW_LISTBOX, align 4
  %17 = call i64 @GetDlgItem(i64 %15, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @GetParent(i64 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @GWL_HDTAABORT, align 4
  %26 = call i64 @GetWindowLongPtr(i64 %24, i32 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @EDIRABORT_READREQUEST, align 4
  %30 = load i32, i32* @EDIRABORT_WINDOWCLOSE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %3
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @GWL_HDTA, align 4
  %37 = call i64 @GetWindowLongPtr(i64 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %14, align 4
  br label %83

40:                                               ; preds = %34
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @COUNTOF(i32* %23)
  %43 = call i32 @GetMDIWindowText(i64 %41, i32* %23, i32 %42)
  %44 = call i32 @StripFilespec(i32* %23)
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* @FILE_NOTIFY_CHANGE_FLAGS, align 4
  %47 = call i32 @ModifyWatchList(i64 %45, i32* %23, i32 %46)
  %48 = load i64, i64* %5, align 8
  %49 = load i32, i32* @GWL_IERROR, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @SetWindowLongPtr(i64 %48, i32 %49, i64 %50)
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* @GWL_HDTA, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = ptrtoint i32* %54 to i64
  %56 = call i32 @SetWindowLongPtr(i64 %52, i32 %53, i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @LB_DELETESTRING, align 4
  %59 = call i32 @SendMessage(i64 %57, i32 %58, i64 0, i64 0)
  %60 = load i64, i64* %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @FillDirList(i64 %60, i32* %61)
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* @GWLP_USERDATA, align 4
  %65 = call i32 @SetWindowLongPtr(i64 %63, i32 %64, i64 0)
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* @GWL_NEXTHWND, align 4
  %68 = call i64 @GetWindowLongPtr(i64 %66, i32 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %40
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* @FS_TESTEMPTY, align 4
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @SendMessage(i64 %72, i32 %73, i64 0, i64 %74)
  br label %76

76:                                               ; preds = %71, %40
  %77 = load i64, i64* %5, align 8
  %78 = load i32, i32* @GWL_NEXTHWND, align 4
  %79 = call i32 @SetWindowLongPtr(i64 %77, i32 %78, i64 0)
  %80 = load i32, i32* @qFreeSpace, align 4
  %81 = call i32 @SPC_SET_INVALID(i32 %80)
  %82 = load i32*, i32** %6, align 8
  store i32* %82, i32** %4, align 8
  store i32 1, i32* %14, align 4
  br label %83

83:                                               ; preds = %76, %39
  %84 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32*, i32** %4, align 8
  ret i32* %85
}

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i64 @GetParent(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @GetWindowLongPtr(i64, i32) #1

declare dso_local i32 @GetMDIWindowText(i64, i32*, i32) #1

declare dso_local i32 @COUNTOF(i32*) #1

declare dso_local i32 @StripFilespec(i32*) #1

declare dso_local i32 @ModifyWatchList(i64, i32*, i32) #1

declare dso_local i32 @SetWindowLongPtr(i64, i32, i64) #1

declare dso_local i32 @SendMessage(i64, i32, i64, i64) #1

declare dso_local i32 @FillDirList(i64, i32*) #1

declare dso_local i32 @SPC_SET_INVALID(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
