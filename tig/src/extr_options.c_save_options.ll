; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_save_options.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_save_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"# Saved by Tig\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Write returned an error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_options(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @O_WRONLY, align 4
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @O_EXCL, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @open(i8* %7, i32 %12, i32 438)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @fdopen(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32* [ %18, %16 ], [ null, %19 ]
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* @SUCCESS, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @io_fprintf(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @save_option_settings(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @save_option_keybindings(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @save_option_colors(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %37, %33, %29
  %46 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @fclose(i32* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %25
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @io_fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @save_option_settings(i32*) #1

declare dso_local i32 @save_option_keybindings(i32*) #1

declare dso_local i32 @save_option_colors(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
