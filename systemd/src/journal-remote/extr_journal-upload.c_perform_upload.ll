; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-upload.c_perform_upload.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-upload.c_perform_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64*, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Upload to %s failed: %.*s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Upload to %s failed: %s\00", align 1
@EIO = common dso_local global i32 0, align 4
@CURLINFO_RESPONSE_CODE = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to retrieve response code: %s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Upload to %s failed with code %ld: %s\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Upload to %s finished with unexpected code %ld: %s\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Upload finished successfully with code %ld: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @perform_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_upload(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_5__* %6)
  %8 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %9 = call i32 @now(i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @curl_easy_perform(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = load i64*, i64** %30, align 8
  %32 = call i32 (i8*, i32, i32, ...) @log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28, i32 8, i64* %31)
  br label %40

33:                                               ; preds = %18
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @curl_easy_strerror(i64 %37)
  %39 = call i32 (i8*, i32, i32, ...) @log_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %33, %25
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %105

43:                                               ; preds = %1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CURLINFO_RESPONSE_CODE, align 4
  %48 = call i64 @curl_easy_getinfo(i32 %46, i32 %47, i64* %5)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32, i32* @EUCLEAN, align 4
  %53 = call i32 @SYNTHETIC_ERRNO(i32 %52)
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @curl_easy_strerror(i64 %54)
  %56 = call i32 (i32, i8*, i32, ...) @log_error_errno(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %2, align 4
  br label %105

57:                                               ; preds = %43
  %58 = load i64, i64* %5, align 8
  %59 = icmp sge i64 %58, 300
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* @EIO, align 4
  %62 = call i32 @SYNTHETIC_ERRNO(i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @strna(i32 %69)
  %71 = call i32 (i32, i8*, i32, ...) @log_error_errno(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %65, i64 %66, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %105

72:                                               ; preds = %57
  %73 = load i64, i64* %5, align 8
  %74 = icmp slt i64 %73, 200
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i32, i32* @EIO, align 4
  %77 = call i32 @SYNTHETIC_ERRNO(i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @strna(i32 %84)
  %86 = call i32 (i32, i8*, i32, ...) @log_error_errno(i32 %77, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %80, i64 %81, i32 %85)
  store i32 %86, i32* %2, align 4
  br label %105

87:                                               ; preds = %72
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @strna(i32 %91)
  %93 = call i32 @log_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %88, i32 %92)
  br label %94

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @free_and_replace(i32 %98, i32 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = call i32 @update_cursor_state(%struct.TYPE_5__* %103)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %95, %75, %60, %51, %40
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @now(i32) #1

declare dso_local i64 @curl_easy_perform(i32) #1

declare dso_local i32 @log_error(i8*, i32, i32, ...) #1

declare dso_local i32 @curl_easy_strerror(i64) #1

declare dso_local i64 @curl_easy_getinfo(i32, i32, i64*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i32, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @strna(i32) #1

declare dso_local i32 @log_debug(i8*, i64, i32) #1

declare dso_local i32 @free_and_replace(i32, i32) #1

declare dso_local i32 @update_cursor_state(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
