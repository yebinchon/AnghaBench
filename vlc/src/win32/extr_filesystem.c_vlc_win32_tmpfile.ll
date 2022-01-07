; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_filesystem.c_vlc_win32_tmpfile.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_filesystem.c_vlc_win32_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"VLC\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_TEMPORARY = common dso_local global i32 0, align 4
@FILE_FLAG_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_win32_tmpfile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = sub nsw i32 %10, 14
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %2, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = sub nsw i32 %15, 14
  %17 = call i32 @GetTempPath(i32 %16, i32* %14)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  store i32 1, i32* %5, align 4
  br label %63

21:                                               ; preds = %0
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  %25 = call i32 @TEXT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @GetTempFileName(i32* %14, i32 %25, i32 0, i32* %24)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32* null, i32** %1, align 8
  store i32 1, i32* %5, align 4
  br label %63

30:                                               ; preds = %21
  %31 = load i32, i32* @GENERIC_READ, align 4
  %32 = load i32, i32* @GENERIC_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DELETE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CREATE_ALWAYS, align 4
  %37 = load i32, i32* @FILE_ATTRIBUTE_TEMPORARY, align 4
  %38 = load i32, i32* @FILE_FLAG_DELETE_ON_CLOSE, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @CreateFile(i32* %24, i32 %35, i32 0, i32* null, i32 %36, i32 %39, i32* null)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32* null, i32** %1, align 8
  store i32 1, i32* %5, align 4
  br label %63

45:                                               ; preds = %30
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @_open_osfhandle(i64 %46, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @CloseHandle(i64 %51)
  store i32* null, i32** %1, align 8
  store i32 1, i32* %5, align 4
  br label %63

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = call i32* @_fdopen(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @_close(i32 %59)
  store i32* null, i32** %1, align 8
  store i32 1, i32* %5, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32*, i32** %9, align 8
  store i32* %62, i32** %1, align 8
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %58, %50, %44, %29, %20
  %64 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32*, i32** %1, align 8
  ret i32* %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPath(i32, i32*) #2

declare dso_local i32 @GetTempFileName(i32*, i32, i32, i32*) #2

declare dso_local i32 @TEXT(i8*) #2

declare dso_local i64 @CreateFile(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @_open_osfhandle(i64, i32) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32* @_fdopen(i32, i8*) #2

declare dso_local i32 @_close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
