; ModuleID = '/home/carl/AnghaBench/tg/extr_main.c_get_home_directory.c'
source_filename = "/home/carl/AnghaBench/tg/extr_main.c_get_home_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i8* }

@home_directory = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"TELEGRAM_HOME\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_home_directory() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i64, align 8
  %4 = load i8*, i8** @home_directory, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i8*, i8** @home_directory, align 8
  store i8* %7, i8** %1, align 8
  br label %51

8:                                                ; preds = %0
  %9 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** @home_directory, align 8
  %10 = load i8*, i8** @home_directory, align 8
  %11 = call i64 @str_empty(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** @home_directory, align 8
  %15 = call i8* @tstrdup(i8* %14)
  store i8* %15, i8** @home_directory, align 8
  store i8* %15, i8** %1, align 8
  br label %51

16:                                               ; preds = %8
  %17 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** @home_directory, align 8
  %18 = load i8*, i8** @home_directory, align 8
  %19 = call i64 @str_empty(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** @home_directory, align 8
  %23 = call i8* @tstrdup(i8* %22)
  store i8* %23, i8** @home_directory, align 8
  store i8* %23, i8** %1, align 8
  br label %51

24:                                               ; preds = %16
  %25 = call i32 (...) @setpwent()
  %26 = call i64 (...) @getuid()
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %41, %24
  %28 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %28, %struct.passwd** %2, align 8
  %29 = icmp ne %struct.passwd* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.passwd*, %struct.passwd** %2, align 8
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.passwd*, %struct.passwd** %2, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @tstrdup(i8* %39)
  store i8* %40, i8** @home_directory, align 8
  br label %42

41:                                               ; preds = %30
  br label %27

42:                                               ; preds = %36, %27
  %43 = call i32 (...) @endpwent()
  %44 = load i8*, i8** @home_directory, align 8
  %45 = call i64 @str_empty(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i8* @tstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %48, i8** @home_directory, align 8
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i8*, i8** @home_directory, align 8
  store i8* %50, i8** %1, align 8
  br label %51

51:                                               ; preds = %49, %21, %13, %6
  %52 = load i8*, i8** %1, align 8
  ret i8* %52
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @str_empty(i8*) #1

declare dso_local i8* @tstrdup(i8*) #1

declare dso_local i32 @setpwent(...) #1

declare dso_local i64 @getuid(...) #1

declare dso_local %struct.passwd* @getpwent(...) #1

declare dso_local i32 @endpwent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
