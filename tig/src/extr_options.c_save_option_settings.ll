; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_save_option_settings.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_save_option_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option_info = type { i32 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\0A## Settings\0A\00", align 1
@option_info = common dso_local global %struct.option_info* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"-args\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\0Aset %-25s = %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @save_option_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_option_settings(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.option_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32, i32* @SIZEOF_STR, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 (i32*, i8*, i8*, ...) @io_fprintf(i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %59

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %55, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.option_info*, %struct.option_info** @option_info, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.option_info* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load %struct.option_info*, %struct.option_info** @option_info, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.option_info, %struct.option_info* %26, i64 %28
  store %struct.option_info* %29, %struct.option_info** %8, align 8
  %30 = load %struct.option_info*, %struct.option_info** %8, align 8
  %31 = getelementptr inbounds %struct.option_info, %struct.option_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @enum_name(i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load %struct.option_info*, %struct.option_info** %8, align 8
  %35 = trunc i64 %12 to i32
  %36 = call i8* @format_option_value(%struct.option_info* %34, i8* %14, i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %59

40:                                               ; preds = %25
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32 @suffixcmp(i8* %41, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %55

47:                                               ; preds = %40
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 (i32*, i8*, i8*, ...) @io_fprintf(i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %59

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %46
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %20

58:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %53, %39, %18
  %60 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @io_fprintf(i32*, i8*, i8*, ...) #2

declare dso_local i32 @ARRAY_SIZE(%struct.option_info*) #2

declare dso_local i8* @enum_name(i32) #2

declare dso_local i8* @format_option_value(%struct.option_info*, i8*, i32) #2

declare dso_local i32 @suffixcmp(i8*, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
