; ModuleID = '/home/carl/AnghaBench/systemd/src/mount/extr_mount-tool.c_acquire_description.c'
source_filename = "/home/carl/AnghaBench/systemd/src/mount/extr_mount-tool.c_acquire_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_description = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ID_PART_ENTRY_NUMBER\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Discovered description=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @acquire_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_description(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i64, i64* @arg_description, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @get_model(i32* %10)
  store i8* %11, i8** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @get_label(i32* %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @sd_device_get_property_value(i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %5)
  br label %19

19:                                               ; preds = %16, %9
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strjoin(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i64 %28, i64* @arg_description, align 8
  br label %44

29:                                               ; preds = %22, %19
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strdup(i8* %33)
  store i64 %34, i64* @arg_description, align 8
  br label %43

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strdup(i8* %39)
  store i64 %40, i64* @arg_description, align 8
  br label %42

41:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %52

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %32
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i64, i64* @arg_description, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (...) @log_oom()
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %44
  %50 = load i64, i64* @arg_description, align 8
  %51 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %47, %41, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i8* @get_model(i32*) #1

declare dso_local i8* @get_label(i32*) #1

declare dso_local i32 @sd_device_get_property_value(i32*, i8*, i8**) #1

declare dso_local i64 @strjoin(i8*, i8*, i8*) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @log_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
