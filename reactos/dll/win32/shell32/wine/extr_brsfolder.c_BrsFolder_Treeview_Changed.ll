; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_Treeview_Changed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_Treeview_Changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@SHGDN_NORMAL = common dso_local global i32 0, align 4
@IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT = common dso_local global i32 0, align 4
@BFFM_SELCHANGED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @BrsFolder_Treeview_Changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BrsFolder_Treeview_Changed(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %5, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ILFree(i64 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ILClone(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SHGDN_NORMAL, align 4
  %35 = call i64 @GetName(i32 %30, i32 %33, i32 %34, i32* %17)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IDC_BROWSE_FOR_FOLDER_FOLDER_TEXT, align 4
  %42 = call i32 @GetDlgItem(i32 %40, i32 %41)
  %43 = call i32 @SetWindowTextW(i32 %42, i32* %17)
  br label %44

44:                                               ; preds = %37, %2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BFFM_SELCHANGED, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @browsefolder_callback(i32 %47, i32 %50, i32 %51, i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = call i32 @BrsFolder_CheckValidSelection(%struct.TYPE_10__* %57, %struct.TYPE_12__* %58)
  %60 = load i32, i32* @S_OK, align 4
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ILFree(i64) #2

declare dso_local i64 @ILClone(i32) #2

declare dso_local i64 @GetName(i32, i32, i32, i32*) #2

declare dso_local i32 @SetWindowTextW(i32, i32*) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i32 @browsefolder_callback(i32, i32, i32, i32) #2

declare dso_local i32 @BrsFolder_CheckValidSelection(%struct.TYPE_10__*, %struct.TYPE_12__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
