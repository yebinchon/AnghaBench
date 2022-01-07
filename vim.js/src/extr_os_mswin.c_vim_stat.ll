; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_mswin.c_vim_stat.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_mswin.c_vim_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@_MAX_PATH = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8
@enc_codepage = common dso_local global i32 0, align 4
@g_PlatformId = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vim_stat(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %8 = load i32, i32* @_MAX_PATH, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = sub i64 %10, 1
  %17 = trunc i64 %16 to i32
  %18 = call i32 @vim_strncpy(i32* %13, i32* %15, i32 %17)
  %19 = call i32 @strlen(i8* %12)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %12, i64 %20
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ugt i8* %22, %12
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @mb_ptr_back(i8* %12, i8* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ugt i8* %28, %12
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %49

40:                                               ; preds = %35, %30
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 -1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 58
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8, i8* @NUL, align 1
  %48 = load i8*, i8** %7, align 8
  store i8 %47, i8* %48, align 1
  br label %49

49:                                               ; preds = %46, %40, %35, %27
  %50 = load %struct.stat*, %struct.stat** %4, align 8
  %51 = call i32 @stat_symlink_aware(i8* %12, %struct.stat* %50)
  %52 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %52)
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vim_strncpy(i32*, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @mb_ptr_back(i8*, i8*) #2

declare dso_local i32 @stat_symlink_aware(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
