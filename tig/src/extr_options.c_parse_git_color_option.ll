; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_parse_git_color_option.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_parse_git_color_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_info = type { i32, i32, i32 }

@SIZEOF_ARG = common dso_local global i32 0, align 4
@COLOR_DEFAULT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"ul\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"underline\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line_info* (%struct.line_info*, i8*)* @parse_git_color_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line_info* @parse_git_color_option(%struct.line_info* %0, i8* %1) #0 {
  %3 = alloca %struct.line_info*, align 8
  %4 = alloca %struct.line_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.line_info* %0, %struct.line_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @SIZEOF_ARG, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8*, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @argv_from_string(i8** %16, i32* %8, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.line_info* null, %struct.line_info** %3, align 8
  store i32 1, i32* %11, align 4
  br label %86

21:                                               ; preds = %2
  %22 = load i8*, i8** @COLOR_DEFAULT, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.line_info*, %struct.line_info** %4, align 8
  %25 = getelementptr inbounds %struct.line_info, %struct.line_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i8*, i8** @COLOR_DEFAULT, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.line_info*, %struct.line_info** %4, align 8
  %29 = getelementptr inbounds %struct.line_info, %struct.line_info* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.line_info*, %struct.line_info** %4, align 8
  %31 = getelementptr inbounds %struct.line_info, %struct.line_info* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %81, %21
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %16, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %16, i64 %45
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %16, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @set_attribute(i32* %12, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.line_info*, %struct.line_info** %4, align 8
  %57 = getelementptr inbounds %struct.line_info, %struct.line_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %80

60:                                               ; preds = %47
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %16, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @set_color(i32* %12, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.line_info*, %struct.line_info** %4, align 8
  %73 = getelementptr inbounds %struct.line_info, %struct.line_info* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.line_info*, %struct.line_info** %4, align 8
  %77 = getelementptr inbounds %struct.line_info, %struct.line_info* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %70
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %60
  br label %80

80:                                               ; preds = %79, %54
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %32

84:                                               ; preds = %32
  %85 = load %struct.line_info*, %struct.line_info** %4, align 8
  store %struct.line_info* %85, %struct.line_info** %3, align 8
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %84, %20
  %87 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load %struct.line_info*, %struct.line_info** %3, align 8
  ret %struct.line_info* %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @argv_from_string(i8**, i32*, i8*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @set_attribute(i32*, i8*) #2

declare dso_local i64 @set_color(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
