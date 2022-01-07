; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrives.c_DrivesDropObject.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrives.c_DrivesDropObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@hwndDropChild = common dso_local global i64 0, align 8
@hwndMDIClient = common dso_local global i64 0, align 8
@WM_MDIGETACTIVE = common dso_local global i32 0, align 4
@FS_GETDIRECTORY = common dso_local global i32 0, align 4
@rgiDrive = common dso_local global i64* null, align 8
@szStarDotStar = common dso_local global i32 0, align 4
@fShowSourceBitmaps = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DrivesDropObject(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = mul nsw i32 %12, 2
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i64, i64* @hwndDropChild, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @hwndDropChild, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load i64, i64* @hwndMDIClient, align 8
  %23 = load i32, i32* @WM_MDIGETACTIVE, align 4
  %24 = call i64 @SendMessage(i64 %22, i32 %23, i32 0, i64 0)
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i64 [ %20, %19 ], [ %24, %21 ]
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @IsIconic(i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* @FS_GETDIRECTORY, align 4
  %35 = call i32 @COUNTOF(i32* %16)
  %36 = ptrtoint i32* %16 to i64
  %37 = call i64 @SendMessage(i64 %33, i32 %34, i32 %35, i64 %36)
  br label %57

38:                                               ; preds = %25
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @DriveFromPoint(i32 %41, i32 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ult i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %32

49:                                               ; preds = %38
  %50 = load i64*, i64** @rgiDrive, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = call i32 @GetSelectedDirectory(i32 %55, i32* %16)
  br label %57

57:                                               ; preds = %49, %32
  %58 = call i32 @AddBackslash(i32* %16)
  %59 = load i32, i32* @szStarDotStar, align 4
  %60 = call i32 @lstrcat(i32* %16, i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8
  %64 = call i32 @CheckEsc(i32* %16)
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* @fShowSourceBitmaps, align 4
  %67 = call i32 @DMMoveCopyHelper(i64 %65, i32* %16, i32 %66)
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %57
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i32 @RectDrive(i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %57
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SendMessage(i64, i32, i32, i64) #2

declare dso_local i64 @IsIconic(i64) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i64 @DriveFromPoint(i32, i32) #2

declare dso_local i32 @GetSelectedDirectory(i32, i32*) #2

declare dso_local i32 @AddBackslash(i32*) #2

declare dso_local i32 @lstrcat(i32*, i32) #2

declare dso_local i32 @CheckEsc(i32*) #2

declare dso_local i32 @DMMoveCopyHelper(i64, i32*, i32) #2

declare dso_local i32 @RectDrive(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
