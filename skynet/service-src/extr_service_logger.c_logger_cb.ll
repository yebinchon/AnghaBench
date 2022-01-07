; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_logger.c_logger_cb.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_logger.c_logger_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }
%struct.logger = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[:%08x] \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skynet_context*, i8*, i32, i32, i32, i8*, i64)* @logger_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logger_cb(%struct.skynet_context* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.skynet_context*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.logger*, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.logger*
  store %struct.logger* %17, %struct.logger** %15, align 8
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %55 [
    i32 129, label %19
    i32 128, label %35
  ]

19:                                               ; preds = %7
  %20 = load %struct.logger*, %struct.logger** %15, align 8
  %21 = getelementptr inbounds %struct.logger, %struct.logger* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.logger*, %struct.logger** %15, align 8
  %26 = getelementptr inbounds %struct.logger, %struct.logger* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.logger*, %struct.logger** %15, align 8
  %29 = getelementptr inbounds %struct.logger, %struct.logger* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @freopen(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.logger*, %struct.logger** %15, align 8
  %33 = getelementptr inbounds %struct.logger, %struct.logger* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %19
  br label %55

35:                                               ; preds = %7
  %36 = load %struct.logger*, %struct.logger** %15, align 8
  %37 = getelementptr inbounds %struct.logger, %struct.logger* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load %struct.logger*, %struct.logger** %15, align 8
  %44 = getelementptr inbounds %struct.logger, %struct.logger* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @fwrite(i8* %41, i64 %42, i32 1, i32 %45)
  %47 = load %struct.logger*, %struct.logger** %15, align 8
  %48 = getelementptr inbounds %struct.logger, %struct.logger* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.logger*, %struct.logger** %15, align 8
  %52 = getelementptr inbounds %struct.logger, %struct.logger* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @fflush(i32 %53)
  br label %55

55:                                               ; preds = %7, %35, %34
  ret i32 0
}

declare dso_local i32 @freopen(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
