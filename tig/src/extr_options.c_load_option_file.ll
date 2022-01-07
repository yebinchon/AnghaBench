; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_load_option_file.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_load_option_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_state = type { i8*, i32, i32, i32, i32 }
%struct.io = type { i32 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to expand path: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@ERROR_FILE_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Error loading file %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@read_option = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Errors while loading %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @load_option_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_option_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.config_state, align 8
  %5 = alloca %struct.io, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = getelementptr inbounds %struct.config_state, %struct.config_state* %4, i32 0, i32 0
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.config_state, %struct.config_state* %4, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.config_state, %struct.config_state* %4, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.config_state, %struct.config_state* %4, i32 0, i32 3
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.config_state, %struct.config_state* %4, i32 0, i32 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @SIZEOF_STR, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %1
  %26 = load i32, i32* @SUCCESS, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

27:                                               ; preds = %21
  %28 = trunc i64 %16 to i32
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @path_expand(i8* %18, i32 %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

35:                                               ; preds = %27
  %36 = call i32 @io_open(%struct.io* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = call i64 @io_error(%struct.io* %5)
  %40 = load i64, i64* @ENOENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @ERROR_FILE_DOES_NOT_EXIST, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

44:                                               ; preds = %38
  %45 = call i8* @io_strerror(%struct.io* %5)
  %46 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %45)
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.config_state, %struct.config_state* %4, i32 0, i32 3
  %49 = load i32, i32* @read_option, align 4
  %50 = call i32 @io_load_span(%struct.io* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %48, i32 %49, %struct.config_state* %4)
  %51 = load i32, i32* @SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.config_state, %struct.config_state* %4, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %47
  %58 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %18)
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* @SUCCESS, align 4
  store i32 %60, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %44, %42, %32, %25
  %62 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @path_expand(i8*, i32, i8*) #2

declare dso_local i32 @error(i8*, i8*, ...) #2

declare dso_local i32 @io_open(%struct.io*, i8*, i8*) #2

declare dso_local i64 @io_error(%struct.io*) #2

declare dso_local i8* @io_strerror(%struct.io*) #2

declare dso_local i32 @io_load_span(%struct.io*, i8*, i32*, i32, %struct.config_state*) #2

declare dso_local i32 @warn(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
