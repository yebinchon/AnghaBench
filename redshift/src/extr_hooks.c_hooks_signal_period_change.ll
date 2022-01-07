; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_hooks.c_hooks_signal_period_change.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_hooks.c_hooks_signal_period_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@MAX_HOOK_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"period-changed\00", align 1
@period_names = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"execl\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hooks_signal_period_change(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load i32, i32* @MAX_HOOK_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = call i32* @open_hooks_dir(i8* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %95

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %93, %90, %44, %23
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.dirent* @readdir(i32* %25)
  store %struct.dirent* %26, %struct.dirent** %9, align 8
  %27 = icmp ne %struct.dirent* %26, null
  br i1 %27, label %28, label %94

28:                                               ; preds = %24
  %29 = load %struct.dirent*, %struct.dirent** %9, align 8
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.dirent*, %struct.dirent** %9, align 8
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %28
  br label %24

45:                                               ; preds = %36
  %46 = load %struct.dirent*, %struct.dirent** %9, align 8
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %10, align 8
  %49 = load i32, i32* @MAX_HOOK_PATH, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %11, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %12, align 8
  %53 = trunc i64 %50 to i32
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @snprintf(i8* %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %54)
  %56 = call i64 (...) @fork()
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp eq i64 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %8, align 4
  br label %90

61:                                               ; preds = %45
  %62 = load i64, i64* %13, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load i32, i32* @STDOUT_FILENO, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i8*, i8** %10, align 8
  %68 = load i32*, i32** @period_names, align 8
  %69 = load i64, i64* %3, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** @period_names, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @execl(i8* %52, i8* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %75, i32* null)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %64
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EACCES, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79, %64
  %86 = load i32, i32* @EXIT_FAILURE, align 4
  %87 = call i32 @_exit(i32 %86) #4
  unreachable

88:                                               ; preds = %61
  br label %89

89:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %59
  %91 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %8, align 4
  switch i32 %92, label %99 [
    i32 0, label %93
    i32 2, label %24
  ]

93:                                               ; preds = %90
  br label %24

94:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %22
  %96 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %8, align 4
  switch i32 %97, label %99 [
    i32 0, label %98
    i32 1, label %98
  ]

98:                                               ; preds = %95, %95
  ret void

99:                                               ; preds = %95, %90
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @open_hooks_dir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @execl(i8*, i8*, i8*, i32, i32, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
