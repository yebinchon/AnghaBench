; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_files.c_addFileHelper.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_files.c_addFileHelper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@URL_UNESCAPE_INPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @addFileHelper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addFileHelper(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i32 @GetCurrentDirectoryW(i32 %22, i32* %15)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @PathAppendW(i32* %15, i32* %24)
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = call i32 @GetCurrentDirectoryW(i32 %26, i32* %21)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @PathAppendW(i32* %21, i32* %28)
  %30 = load i32, i32* @MAX_PATH, align 4
  store i32 %30, i32* %7, align 4
  %31 = call i32 @UrlCreateFromPathW(i32* %21, i32* %18, i32* %7, i32 0)
  %32 = load i32, i32* @URL_UNESCAPE_INPLACE, align 4
  %33 = call i32 @UrlUnescapeW(i32* %18, i32* null, i32* %7, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @IBackgroundCopyJob_AddFile(i32* %34, i32* %18, i32* %15)
  %36 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %36)
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #2

declare dso_local i32 @PathAppendW(i32*, i32*) #2

declare dso_local i32 @UrlCreateFromPathW(i32*, i32*, i32*, i32) #2

declare dso_local i32 @UrlUnescapeW(i32*, i32*, i32*, i32) #2

declare dso_local i32 @IBackgroundCopyJob_AddFile(i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
