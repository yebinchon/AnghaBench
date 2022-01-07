; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_pref.c_LoadPrefs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_pref.c_LoadPrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kGlobalPrefFileName = common dso_local global i8* null, align 8
@FOPEN_READ_TEXT = common dso_local global i32 0, align 4
@gOurDirectoryPath = common dso_local global i8* null, align 8
@kPrefFileName = common dso_local global i32 0, align 4
@gPrefsDirty = common dso_local global i32 0, align 4
@kPrefFileNameV2 = common dso_local global i32 0, align 4
@kGlobalFixedPrefFileName = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadPrefs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [256 x i8], align 16
  %3 = load i8*, i8** @kGlobalPrefFileName, align 8
  %4 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %5 = call i32* @fopen(i8* %3, i32 %4)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @ProcessPrefsFile(i32* %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @fclose(i32* %11)
  br label %13

13:                                               ; preds = %8, %0
  %14 = load i8*, i8** @gOurDirectoryPath, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %13
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* @kPrefFileName, align 4
  %22 = call i32 @OurDirectoryPath(i8* %20, i32 256, i32 %21)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %24 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %25 = call i32* @fopen(i8* %23, i32 %24)
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load i32, i32* @gPrefsDirty, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @gPrefsDirty, align 4
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %32 = load i32, i32* @kPrefFileNameV2, align 4
  %33 = call i32 @OurDirectoryPath(i8* %31, i32 256, i32 %32)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %35 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %36 = call i32* @fopen(i8* %34, i32 %35)
  store i32* %36, i32** %1, align 8
  br label %37

37:                                               ; preds = %28, %19
  %38 = load i32*, i32** %1, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @gPrefsDirty, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @gPrefsDirty, align 4
  br label %48

43:                                               ; preds = %37
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @ProcessPrefsFile(i32* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @fclose(i32* %46)
  br label %48

48:                                               ; preds = %43, %40
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i8*, i8** @kGlobalFixedPrefFileName, align 8
  %51 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %52 = call i32* @fopen(i8* %50, i32 %51)
  store i32* %52, i32** %1, align 8
  %53 = load i32*, i32** %1, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @ProcessPrefsFile(i32* %56)
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @fclose(i32* %58)
  br label %60

60:                                               ; preds = %55, %49
  ret void
}

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @ProcessPrefsFile(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @OurDirectoryPath(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
