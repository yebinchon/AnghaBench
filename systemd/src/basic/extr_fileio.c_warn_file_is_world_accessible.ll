; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fileio.c_warn_file_is_world_accessible.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fileio.c_warn_file_is_world_accessible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"%s has %04o mode that is too permissive, please adjust the ownership and access mode.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @warn_file_is_world_accessible(i8* %0, %struct.stat* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  store i8* %0, i8** %6, align 8
  store %struct.stat* %1, %struct.stat** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

14:                                               ; preds = %4
  %15 = load %struct.stat*, %struct.stat** %7, align 8
  %16 = icmp ne %struct.stat* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @stat(i8* %18, %struct.stat* %10)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @errno, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %55

24:                                               ; preds = %17
  store %struct.stat* %10, %struct.stat** %7, align 8
  br label %25

25:                                               ; preds = %24, %14
  %26 = load %struct.stat*, %struct.stat** %7, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @S_IRWXO, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %55

33:                                               ; preds = %25
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* @LOG_WARNING, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.stat*, %struct.stat** %7, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 4095
  %46 = call i32 @log_syntax(i8* %37, i32 %38, i8* %39, i32 %40, i32 0, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %45)
  br label %54

47:                                               ; preds = %33
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.stat*, %struct.stat** %7, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 4095
  %53 = call i32 @log_warning(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %52)
  br label %54

54:                                               ; preds = %47, %36
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %32, %21, %13
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @log_warning(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
