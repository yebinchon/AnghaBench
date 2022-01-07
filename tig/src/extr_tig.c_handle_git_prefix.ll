; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tig.c_handle_git_prefix.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tig.c_handle_git_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"GIT_PREFIX\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Failed to read CWD\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"GIT_WORK_TREE\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to set GIT_WORK_TREE\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to change directory to %s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to clear GIT_PREFIX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @handle_git_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_git_prefix() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %0
  %12 = load i32, i32* @SUCCESS, align 4
  store i32 %12, i32* %1, align 4
  br label %39

13:                                               ; preds = %7
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %15 = call i32 @getcwd(i8* %14, i32 4096)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %1, align 4
  br label %39

19:                                               ; preds = %13
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %21 = call i64 @setenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 %24, i32* %1, align 4
  br label %39

25:                                               ; preds = %19
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @chdir(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  store i32 %31, i32* %1, align 4
  br label %39

32:                                               ; preds = %25
  %33 = call i64 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 %36, i32* %1, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @SUCCESS, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %37, %35, %29, %23, %17, %11
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @getcwd(i8*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

declare dso_local i64 @chdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
