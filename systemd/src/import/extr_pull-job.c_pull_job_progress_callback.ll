; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_pull-job.c_pull_job_progress_callback.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_pull-job.c_pull_job_progress_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32 (%struct.TYPE_4__*)*, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i64 0, align 8
@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@FORMAT_BYTES_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Got %u%% of %s. %s left at %s/s.\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Got %u%% of %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i64, i64)* @pull_job_progress_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pull_job_progress_callback(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %12, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %24 = call i32 @assert(%struct.TYPE_4__* %23)
  %25 = load i64, i64* %8, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %136

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = mul nsw i64 100, %29
  %31 = load i64, i64* %8, align 8
  %32 = sdiv i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %35 = call i64 @now(i32 %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @USEC_PER_SEC, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sgt i64 %36, %41
  br i1 %42, label %43, label %135

43:                                               ; preds = %28
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %135

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %135

53:                                               ; preds = %49
  %54 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %15, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %16, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = load i64, i64* @USEC_PER_SEC, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %110

65:                                               ; preds = %53
  %66 = load i64, i64* %9, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %110

68:                                               ; preds = %65
  %69 = load i32, i32* @FORMAT_BYTES_MAX, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %17, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %18, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  store i64 %77, i64* %20, align 8
  %78 = load i64, i64* %20, align 8
  %79 = sitofp i64 %78 to double
  %80 = load i64, i64* %8, align 8
  %81 = sitofp i64 %80 to double
  %82 = fmul double %79, %81
  %83 = load i64, i64* %9, align 8
  %84 = sitofp i64 %83 to double
  %85 = fdiv double %82, %84
  %86 = fptosi double %85 to i64
  %87 = load i64, i64* %20, align 8
  %88 = sub nsw i64 %86, %87
  store i64 %88, i64* %19, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = trunc i64 %55 to i32
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* @USEC_PER_SEC, align 8
  %96 = call i32 @format_timespan(i8* %57, i32 %93, i64 %94, i64 %95)
  %97 = trunc i64 %70 to i32
  %98 = load i64, i64* %9, align 8
  %99 = sitofp i64 %98 to double
  %100 = load i64, i64* %20, align 8
  %101 = sitofp i64 %100 to double
  %102 = load i64, i64* @USEC_PER_SEC, align 8
  %103 = sitofp i64 %102 to double
  %104 = fdiv double %101, %103
  %105 = fdiv double %99, %104
  %106 = fptosi double %105 to i32
  %107 = call i32 @format_bytes(i8* %72, i32 %97, i32 %106)
  %108 = call i32 (i8*, i32, i32, ...) @log_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92, i32 %96, i32 %107)
  %109 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %109)
  br label %116

110:                                              ; preds = %65, %53
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, i32, i32, ...) @log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %68
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %124, align 8
  %126 = icmp ne i32 (%struct.TYPE_4__*)* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %116
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %132 = call i32 %130(%struct.TYPE_4__* %131)
  br label %133

133:                                              ; preds = %127, %116
  %134 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %134)
  br label %135

135:                                              ; preds = %133, %49, %43, %28
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %27
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i64 @now(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @log_info(i8*, i32, i32, ...) #1

declare dso_local i32 @format_timespan(i8*, i32, i64, i64) #1

declare dso_local i32 @format_bytes(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
