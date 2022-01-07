; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_init_directories_choice.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_init_directories_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.stat = type { i32 }

@BUFSIZE = common dso_local global i32 0, align 4
@choices = common dso_local global %struct.TYPE_2__* null, align 8
@choice_count = common dso_local global i64 0, align 8
@change_directories_choice = common dso_local global i32 0, align 4
@install_vimfilesdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@vimfiles_dir_home = common dso_local global i64 0, align 8
@vimfiles_dir_choice = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s\\vimfiles\\compiler\00", align 1
@vimfiles_dir_none = common dso_local global i64 0, align 8
@vimfiles_dir_vim = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"VIM\00", align 1
@installdir = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"\\vimfiles\\compiler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_directories_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_directories_choice() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @BUFSIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = call i32 @alloc(i32 150)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %11 = load i64, i64* @choice_count, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* @change_directories_choice, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %16 = load i64, i64* @choice_count, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @install_vimfilesdir, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %21 = load i64, i64* @choice_count, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @choices, align 8
  %25 = load i64, i64* @choice_count, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %0
  %31 = load i64, i64* @vimfiles_dir_home, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* @vimfiles_dir_choice, align 4
  %33 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = call i64 @stat(i8* %8, %struct.stat* %1)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i64, i64* @vimfiles_dir_none, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* @vimfiles_dir_choice, align 4
  br label %40

40:                                               ; preds = %37, %30
  br label %61

41:                                               ; preds = %0
  %42 = load i64, i64* @vimfiles_dir_vim, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* @vimfiles_dir_choice, align 4
  %44 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %44, i8** %4, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @installdir, align 4
  %49 = call i32 @dir_remove_last(i32 %48, i8* %8)
  br label %53

50:                                               ; preds = %41
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcpy(i8* %8, i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = call i32 @strcat(i8* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i64 @stat(i8* %8, %struct.stat* %1)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, i64* @vimfiles_dir_none, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* @vimfiles_dir_choice, align 4
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i64, i64* @choice_count, align 8
  %63 = call i32 @set_directories_text(i64 %62)
  %64 = load i64, i64* @choice_count, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* @choice_count, align 8
  %66 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @alloc(i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @dir_remove_last(i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @set_directories_text(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
