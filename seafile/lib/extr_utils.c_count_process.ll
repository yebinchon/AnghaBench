; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_count_process.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_count_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to open /proc/ :%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_process(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = call i32* @opendir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  store %struct.dirent* null, %struct.dirent** %6, align 8
  br label %17

17:                                               ; preds = %43, %34, %16
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.dirent* @readdir(i32* %18)
  store %struct.dirent* %19, %struct.dirent** %6, align 8
  %20 = icmp ne %struct.dirent* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.dirent*, %struct.dirent** %6, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %7, align 1
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sgt i32 %28, 57
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp slt i32 %32, 49
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %21
  br label %17

35:                                               ; preds = %30
  %36 = load %struct.dirent*, %struct.dirent** %6, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @find_process_in_dirent(%struct.dirent* %36, i8* %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %17

44:                                               ; preds = %17
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @closedir(i32* %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @g_warning(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @find_process_in_dirent(%struct.dirent*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
