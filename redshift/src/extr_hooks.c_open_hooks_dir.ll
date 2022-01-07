; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_hooks.c_open_hooks_dir.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_hooks.c_open_hooks_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"XDG_CONFIG_HOME\00", align 1
@MAX_HOOK_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s/redshift/hooks\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s/.config/redshift/hooks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @open_hooks_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_hooks_dir(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @MAX_HOOK_PATH, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %3, align 8
  %20 = call i32* @opendir(i8* %19)
  store i32* %20, i32** %2, align 8
  br label %48

21:                                               ; preds = %8, %1
  %22 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %22, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @MAX_HOOK_PATH, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %3, align 8
  %36 = call i32* @opendir(i8* %35)
  store i32* %36, i32** %2, align 8
  br label %48

37:                                               ; preds = %24, %21
  %38 = call i32 (...) @getuid()
  %39 = call %struct.passwd* @getpwuid(i32 %38)
  store %struct.passwd* %39, %struct.passwd** %5, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @MAX_HOOK_PATH, align 4
  %42 = load %struct.passwd*, %struct.passwd** %5, align 8
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32* @opendir(i8* %46)
  store i32* %47, i32** %2, align 8
  br label %48

48:                                               ; preds = %37, %30, %14
  %49 = load i32*, i32** %2, align 8
  ret i32* %49
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
