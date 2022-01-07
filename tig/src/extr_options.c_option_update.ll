; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_option_update.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_option_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option_info = type { i32, i32, i64 }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"const char **\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid set command: set option = value\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"view_settings\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"struct ref_format **\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Option %s only takes one value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option_info*, i32, i8**)* @option_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_update(%struct.option_info* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.option_info* %0, %struct.option_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.option_info*, %struct.option_info** %5, align 8
  %10 = getelementptr inbounds %struct.option_info, %struct.option_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @SUCCESS, align 4
  store i32 %14, i32* %4, align 4
  br label %81

15:                                               ; preds = %3
  %16 = load %struct.option_info*, %struct.option_info** %5, align 8
  %17 = getelementptr inbounds %struct.option_info, %struct.option_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcmp(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load %struct.option_info*, %struct.option_info** %5, align 8
  %23 = getelementptr inbounds %struct.option_info, %struct.option_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = call i32 @parse_args(i32 %24, i8** %26)
  store i32 %27, i32* %4, align 4
  br label %81

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %81

33:                                               ; preds = %28
  %34 = load %struct.option_info*, %struct.option_info** %5, align 8
  %35 = getelementptr inbounds %struct.option_info, %struct.option_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcmp(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  %40 = load %struct.option_info*, %struct.option_info** %5, align 8
  %41 = getelementptr inbounds %struct.option_info, %struct.option_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %7, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = call i32 @parse_view_settings(i32 %42, i8* %45, i8** %47)
  store i32 %48, i32* %4, align 4
  br label %81

49:                                               ; preds = %33
  %50 = load %struct.option_info*, %struct.option_info** %5, align 8
  %51 = getelementptr inbounds %struct.option_info, %struct.option_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcmp(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = load %struct.option_info*, %struct.option_info** %5, align 8
  %57 = getelementptr inbounds %struct.option_info, %struct.option_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i8**, i8*** %7, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  %61 = call i32 @parse_ref_formats(i32 %58, i8** %60)
  store i32 %61, i32* %4, align 4
  br label %81

62:                                               ; preds = %49
  %63 = load %struct.option_info*, %struct.option_info** %5, align 8
  %64 = load i8**, i8*** %7, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @parse_option(%struct.option_info* %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @SUCCESS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 3
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i8**, i8*** %7, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  store i32 %78, i32* %4, align 4
  br label %81

79:                                               ; preds = %71, %62
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %74, %55, %39, %31, %21, %13
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @parse_view_settings(i32, i8*, i8**) #1

declare dso_local i32 @parse_ref_formats(i32, i8**) #1

declare dso_local i32 @parse_option(%struct.option_info*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
