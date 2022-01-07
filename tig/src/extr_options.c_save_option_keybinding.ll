; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_save_option_keybinding.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_save_option_keybinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keymap = type { i32 }
%struct.request_info = type { i32 }
%struct.run_request = type { i8** }

@.str = private unnamed_addr constant [6 x i8] c"\0A# %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0Abind %-10s %-15s \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.keymap*, i32, i8*, %struct.request_info*, %struct.run_request*)* @save_option_keybinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_option_keybinding(i8* %0, i8* %1, %struct.keymap* %2, i32 %3, i8* %4, %struct.request_info* %5, %struct.run_request* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.keymap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.request_info*, align 8
  %15 = alloca %struct.run_request*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.keymap* %2, %struct.keymap** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store %struct.request_info* %5, %struct.request_info** %14, align 8
  store %struct.run_request* %6, %struct.run_request** %15, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %16, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %7
  %24 = load i32*, i32** %16, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 (i32*, i8*, i8*, ...) @io_fprintf(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %79

29:                                               ; preds = %23, %7
  %30 = load i32*, i32** %16, align 8
  %31 = load %struct.keymap*, %struct.keymap** %11, align 8
  %32 = getelementptr inbounds %struct.keymap, %struct.keymap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @enum_name(i32 %33)
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 (i32*, i8*, i8*, ...) @io_fprintf(i32* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %79

39:                                               ; preds = %29
  %40 = load %struct.request_info*, %struct.request_info** %14, align 8
  %41 = icmp ne %struct.request_info* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32*, i32** %16, align 8
  %44 = load %struct.request_info*, %struct.request_info** %14, align 8
  %45 = getelementptr inbounds %struct.request_info, %struct.request_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @enum_name(i32 %46)
  %48 = call i32 (i32*, i8*, i8*, ...) @io_fprintf(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %8, align 4
  br label %79

49:                                               ; preds = %39
  %50 = load %struct.run_request*, %struct.run_request** %15, align 8
  %51 = call i8* @format_run_request_flags(%struct.run_request* %50)
  store i8* %51, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %52

52:                                               ; preds = %75, %49
  %53 = load %struct.run_request*, %struct.run_request** %15, align 8
  %54 = getelementptr inbounds %struct.run_request, %struct.run_request* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %52
  %62 = load i32*, i32** %16, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load %struct.run_request*, %struct.run_request** %15, align 8
  %65 = getelementptr inbounds %struct.run_request, %struct.run_request* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i32*, i8*, i8*, ...) @io_fprintf(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %63, i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %79

74:                                               ; preds = %61
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %18, align 4
  br label %52

78:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %73, %42, %38, %28
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @io_fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @enum_name(i32) #1

declare dso_local i8* @format_run_request_flags(%struct.run_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
