; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wffile.c_RedrawAllTreeWindows.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wffile.c_RedrawAllTreeWindows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i64 0, align 8
@GW_CHILD = common dso_local global i32 0, align 4
@IDCW_TREELISTBOX = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RedrawAllTreeWindows() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = mul nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i64, i64* @hwndMDIClient, align 8
  %17 = load i32, i32* @GW_CHILD, align 4
  %18 = call i64 @GetWindow(i64 %16, i32 %17)
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %62, %0
  %20 = load i64, i64* %2, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %19
  %23 = load i64, i64* %2, align 8
  %24 = call i64 @HasTreeWindow(i64 %23)
  store i64 %24, i64* %3, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* @IDCW_TREELISTBOX, align 4
  %29 = call i64 @GetDlgItem(i64 %27, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @LB_GETCOUNT, align 4
  %32 = call i64 @SendMessage(i64 %30, i32 %31, i32 0, i64 0)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %54, %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @LB_GETTEXT, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ptrtoint %struct.TYPE_3__** %7 to i64
  %43 = call i64 @SendMessage(i64 %39, i32 %40, i32 %41, i64 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = call i32 @GetTreePath(%struct.TYPE_3__* %44, i32* %15)
  %46 = call i32 @GetFileAttributes(i32* %15)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %34

57:                                               ; preds = %34
  %58 = load i64, i64* %4, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @InvalidateRect(i64 %58, i32* null, i32 %59)
  br label %61

61:                                               ; preds = %57, %22
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %2, align 8
  %64 = load i32, i32* @GW_HWNDNEXT, align 4
  %65 = call i64 @GetWindow(i64 %63, i32 %64)
  store i64 %65, i64* %2, align 8
  br label %19

66:                                               ; preds = %19
  %67 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetWindow(i64, i32) #2

declare dso_local i64 @HasTreeWindow(i64) #2

declare dso_local i64 @GetDlgItem(i64, i32) #2

declare dso_local i64 @SendMessage(i64, i32, i32, i64) #2

declare dso_local i32 @GetTreePath(%struct.TYPE_3__*, i32*) #2

declare dso_local i32 @GetFileAttributes(i32*) #2

declare dso_local i32 @InvalidateRect(i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
