; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_set_home_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_set_home_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@gl_home_dir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"USER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_set_home_dir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** @gl_home_dir, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** @gl_home_dir, align 8
  %10 = call i32 @free(i8* %9)
  store i8* null, i8** @gl_home_dir, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %2, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = call i64 (...) @getlogin()
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %23, %19
  br label %26

26:                                               ; preds = %25, %14
  store %struct.passwd* null, %struct.passwd** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = call %struct.passwd* @getpwnam(i8* %30)
  store %struct.passwd* %31, %struct.passwd** %4, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.passwd*, %struct.passwd** %4, align 8
  %34 = icmp eq %struct.passwd* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 (...) @getuid()
  %37 = call %struct.passwd* @getpwuid(i32 %36)
  store %struct.passwd* %37, %struct.passwd** %4, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.passwd*, %struct.passwd** %4, align 8
  %40 = icmp eq %struct.passwd* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %61

42:                                               ; preds = %38
  %43 = load %struct.passwd*, %struct.passwd** %4, align 8
  %44 = getelementptr inbounds %struct.passwd, %struct.passwd* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %2, align 8
  br label %46

46:                                               ; preds = %42, %11
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i64 @malloc(i64 %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** @gl_home_dir, align 8
  %54 = load i8*, i8** @gl_home_dir, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i8*, i8** @gl_home_dir, align 8
  %58 = load i8*, i8** %2, align 8
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  br label %61

61:                                               ; preds = %41, %56, %46
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @getlogin(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
