; ModuleID = '/home/carl/AnghaBench/tg/extr_main.c_change_user_group.c'
source_filename = "/home/carl/AnghaBench/tg/extr_main.c_change_user_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32, i32, i32, i64 }
%struct.group = type { i64 }

@set_user_name = common dso_local global i8* null, align 8
@set_group_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"telegramd\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"change_user_group: can't find the user %s to switch to\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"change_user_group: failed to clear supplementary groups list: %m\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"change_user_group: can't find the group %s to switch to\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"change_user_group: setgid (%d) failed. %m\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"change_user_group: failed to assume identity of user %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_user_group() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.group*, align 8
  %7 = load i8*, i8** @set_user_name, align 8
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** @set_group_name, align 8
  store i8* %8, i8** %3, align 8
  %9 = call i64 (...) @getuid()
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = call i64 (...) @geteuid()
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %91

14:                                               ; preds = %11, %0
  %15 = load i8*, i8** %2, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %14
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i8*, i8** %2, align 8
  %25 = call %struct.passwd* @getpwnam(i8* %24)
  store %struct.passwd* %25, %struct.passwd** %4, align 8
  %26 = icmp eq %struct.passwd* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i32 -1, i32* %1, align 4
  br label %92

31:                                               ; preds = %23
  %32 = load %struct.passwd*, %struct.passwd** %4, align 8
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  %35 = call i64 @setgroups(i32 1, i64* %5)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %92

40:                                               ; preds = %31
  %41 = load i8*, i8** %3, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i8*, i8** %3, align 8
  %45 = call %struct.group* @getgrnam(i8* %44)
  store %struct.group* %45, %struct.group** %6, align 8
  %46 = load %struct.group*, %struct.group** %6, align 8
  %47 = icmp eq %struct.group* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  store i32 -1, i32* %1, align 4
  br label %92

52:                                               ; preds = %43
  %53 = load %struct.group*, %struct.group** %6, align 8
  %54 = getelementptr inbounds %struct.group, %struct.group* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %52, %40
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @setgid(i64 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* @stderr, align 4
  %62 = load i64, i64* %5, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %1, align 4
  br label %92

65:                                               ; preds = %56
  %66 = load %struct.passwd*, %struct.passwd** %4, align 8
  %67 = getelementptr inbounds %struct.passwd, %struct.passwd* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @setuid(i32 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %2, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  store i32 -1, i32* %1, align 4
  br label %92

75:                                               ; preds = %65
  %76 = call i64 (...) @getuid()
  %77 = call %struct.passwd* @getpwuid(i64 %76)
  store %struct.passwd* %77, %struct.passwd** %4, align 8
  %78 = load %struct.passwd*, %struct.passwd** %4, align 8
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %80, i32 1)
  %82 = load %struct.passwd*, %struct.passwd** %4, align 8
  %83 = getelementptr inbounds %struct.passwd, %struct.passwd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %84, i32 1)
  %86 = load %struct.passwd*, %struct.passwd** %4, align 8
  %87 = getelementptr inbounds %struct.passwd, %struct.passwd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %88, i32 1)
  br label %90

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %11
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %91, %71, %60, %48, %37, %27
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @setgroups(i32, i64*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i64 @setuid(i32) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @setenv(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
