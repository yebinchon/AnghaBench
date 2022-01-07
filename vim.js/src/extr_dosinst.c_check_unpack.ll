; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_check_unpack.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_check_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@BUFSIZE = common dso_local global i32 0, align 4
@installdir = common dso_local global i8* null, align 8
@VIM_VERSION_NODOT = common dso_local global i8* null, align 8
@runtimeidx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ERROR: Install program not in directory \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"This program can only work when it is located in its original directory\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s\\filetype.vim\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ERROR: Cannot find filetype.vim in \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"It looks like you did not unpack the runtime archive.\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"You must unpack the runtime archive \22vim%srt.zip\22 before installing.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"gvim.exe\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@has_gvim = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"vim.exe\00", align 1
@has_vim = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"ERROR: Cannot find any Vim executables in \22%s\22\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_unpack() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = load i32, i32* @BUFSIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i8*, i8** @installdir, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = load i8*, i8** @VIM_VERSION_NODOT, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = sub nsw i32 %10, %12
  store i32 %13, i32* @runtimeidx, align 4
  %14 = load i32, i32* @runtimeidx, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %0
  %17 = load i8*, i8** @installdir, align 8
  %18 = load i32, i32* @runtimeidx, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8*, i8** @VIM_VERSION_NODOT, align 8
  %22 = call i64 @stricmp(i8* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %16
  %25 = load i8*, i8** @installdir, align 8
  %26 = load i32, i32* @runtimeidx, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 47
  br i1 %32, label %33, label %47

33:                                               ; preds = %24
  %34 = load i8*, i8** @installdir, align 8
  %35 = load i32, i32* @runtimeidx, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 92
  br i1 %41, label %42, label %47

42:                                               ; preds = %33, %16, %0
  %43 = load i8*, i8** @VIM_VERSION_NODOT, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @myexit(i32 1)
  br label %47

47:                                               ; preds = %42, %33, %24
  %48 = load i8*, i8** @installdir, align 8
  %49 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = call i64 @stat(i8* %8, %struct.stat* %4)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i8*, i8** @installdir, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i8*, i8** @VIM_VERSION_NODOT, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 3
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = call i32 @myexit(i32 1)
  br label %60

60:                                               ; preds = %52, %47
  %61 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %61, i32** %3, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @fclose(i32* %64)
  store i32 1, i32* @has_gvim, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = call i32* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %67, i32** %3, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @fclose(i32* %70)
  store i32 1, i32* @has_vim, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* @has_gvim, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @has_vim, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** @installdir, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i8* %79)
  %81 = call i32 @myexit(i32 1)
  br label %82

82:                                               ; preds = %78, %75, %72
  %83 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @stricmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @myexit(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
