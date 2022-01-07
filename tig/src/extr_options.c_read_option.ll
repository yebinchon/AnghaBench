; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_read_option.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_read_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_state = type { i32, i32, i32 }

@ERROR_NO_OPTION_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@SIZEOF_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Too many option arguments for %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s:%zu: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i8*)* @read_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_option(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.config_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.config_state*
  store %struct.config_state* %19, %struct.config_state** %12, align 8
  %20 = load i32, i32* @ERROR_NO_OPTION_VALUE, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strcspn(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @SUCCESS, align 4
  store i32 %26, i32* %6, align 4
  br label %80

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %27
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @strcspn(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %36, i64* %14, align 8
  %37 = load i32, i32* @SIZEOF_ARG, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %15, align 8
  %40 = alloca i8*, i64 %38, align 16
  store i64 %38, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i64, i64* %14, align 8
  store i64 %45, i64* %10, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %44, %34
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @argv_from_string(i8** %40, i32* %17, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i32 %55, i32* %13, align 4
  br label %60

56:                                               ; preds = %49
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @set_option(i8* %57, i32 %58, i8** %40)
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %60, %27
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load %struct.config_state*, %struct.config_state** %12, align 8
  %68 = getelementptr inbounds %struct.config_state, %struct.config_state* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.config_state*, %struct.config_state** %12, align 8
  %71 = getelementptr inbounds %struct.config_state, %struct.config_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @get_status_message(i32 %73)
  %75 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72, i32 %74)
  %76 = load %struct.config_state*, %struct.config_state** %12, align 8
  %77 = getelementptr inbounds %struct.config_state, %struct.config_state* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %66, %62
  %79 = load i32, i32* @SUCCESS, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %25
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i64 @strcspn(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @argv_from_string(i8**, i32*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @set_option(i8*, i32, i8**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @warn(i8*, i32, i32, i32) #1

declare dso_local i32 @get_status_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
