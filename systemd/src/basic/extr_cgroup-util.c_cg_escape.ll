; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_cg_escape.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_cg_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"notify_on_release\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"release_agent\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tasks\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"cgroup.\00", align 1
@_CGROUP_CONTROLLER_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cg_escape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @IN_SET(i8 signext %11, i32 0, i8 signext 95, i8 signext 46)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @STR_IN_SET(i8* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @startswith(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %1
  store i32 1, i32* %4, align 4
  br label %59

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 46)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %54, %28
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @_CGROUP_CONTROLLER_MAX, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = call i8* @cgroup_controller_to_string(i64 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %54

46:                                               ; preds = %38
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @memcmp(i8* %47, i8* %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %54

53:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %57

54:                                               ; preds = %52, %45
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %6, align 8
  br label %34

57:                                               ; preds = %53, %34
  br label %58

58:                                               ; preds = %57, %23
  br label %59

59:                                               ; preds = %58, %22
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %3, align 8
  %64 = call i8* @strjoin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  store i8* %64, i8** %2, align 8
  br label %68

65:                                               ; preds = %59
  %66 = load i8*, i8** %3, align 8
  %67 = call i8* @strdup(i8* %66)
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i64 @IN_SET(i8 signext, i32, i8 signext, i8 signext) #1

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @startswith(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @cgroup_controller_to_string(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i8* @strjoin(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
