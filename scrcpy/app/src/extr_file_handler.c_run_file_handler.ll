; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_file_handler.c_run_file_handler.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_file_handler.c_run_file_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_handler = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.file_handler_request = type { i64, i32 }

@PROCESS_NONE = common dso_local global i32 0, align 4
@ACTION_INSTALL_APK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Installing %s...\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Pushing %s...\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"adb install\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s successfully installed\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to install %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"adb push\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s successfully pushed to %s\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed to push %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @run_file_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_file_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file_handler*, align 8
  %4 = alloca %struct.file_handler_request, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.file_handler*
  store %struct.file_handler* %8, %struct.file_handler** %3, align 8
  br label %9

9:                                                ; preds = %124, %1
  %10 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %11 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mutex_lock(i32 %12)
  %14 = load i32, i32* @PROCESS_NONE, align 4
  %15 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %16 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %29, %9
  %18 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %19 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %24 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %23, i32 0, i32 4
  %25 = call i64 @cbuf_is_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %30 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %31 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %34 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cond_wait(i32 %32, i32 %35)
  br label %17

37:                                               ; preds = %27
  %38 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %39 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %44 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mutex_unlock(i32 %45)
  br label %126

47:                                               ; preds = %37
  %48 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %49 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %48, i32 0, i32 4
  %50 = call i32 @cbuf_take(i32* %49, %struct.file_handler_request* %4)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @SDL_assert(i32 %51)
  %53 = getelementptr inbounds %struct.file_handler_request, %struct.file_handler_request* %4, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ACTION_INSTALL_APK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.file_handler_request, %struct.file_handler_request* %4, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, i32, ...) @LOGI(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %62 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.file_handler_request, %struct.file_handler_request* %4, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @install_apk(i32 %63, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %80

67:                                               ; preds = %47
  %68 = getelementptr inbounds %struct.file_handler_request, %struct.file_handler_request* %4, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, i32, ...) @LOGI(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %72 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.file_handler_request, %struct.file_handler_request* %4, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %77 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @push_file(i32 %73, i32 %75, i32 %78)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %67, %57
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %83 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %85 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mutex_unlock(i32 %86)
  %88 = getelementptr inbounds %struct.file_handler_request, %struct.file_handler_request* %4, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ACTION_INSTALL_APK, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %80
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @process_check_success(i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.file_handler_request, %struct.file_handler_request* %4, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, i32, ...) @LOGI(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %104

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.file_handler_request, %struct.file_handler_request* %4, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, i32, ...) @LOGE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %100, %96
  br label %124

105:                                              ; preds = %80
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @process_check_success(i32 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.file_handler_request, %struct.file_handler_request* %4, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %113 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, i32, ...) @LOGI(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32 %114)
  br label %123

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.file_handler_request, %struct.file_handler_request* %4, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.file_handler*, %struct.file_handler** %3, align 8
  %120 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, i32, ...) @LOGE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %116, %109
  br label %124

124:                                              ; preds = %123, %104
  %125 = call i32 @file_handler_request_destroy(%struct.file_handler_request* %4)
  br label %9

126:                                              ; preds = %42
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i64 @cbuf_is_empty(i32*) #1

declare dso_local i32 @cond_wait(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @cbuf_take(i32*, %struct.file_handler_request*) #1

declare dso_local i32 @SDL_assert(i32) #1

declare dso_local i32 @LOGI(i8*, i32, ...) #1

declare dso_local i32 @install_apk(i32, i32) #1

declare dso_local i32 @push_file(i32, i32, i32) #1

declare dso_local i64 @process_check_success(i32, i8*) #1

declare dso_local i32 @LOGE(i8*, i32, ...) #1

declare dso_local i32 @file_handler_request_destroy(%struct.file_handler_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
