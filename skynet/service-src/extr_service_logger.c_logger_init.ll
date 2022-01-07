; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_logger.c_logger_init.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_logger.c_logger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logger = type { i32, i32*, i32 }
%struct.skynet_context = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = common dso_local global i32* null, align 8
@logger_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logger_init(%struct.logger* %0, %struct.skynet_context* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.logger*, align 8
  %6 = alloca %struct.skynet_context*, align 8
  %7 = alloca i8*, align 8
  store %struct.logger* %0, %struct.logger** %5, align 8
  store %struct.skynet_context* %1, %struct.skynet_context** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.logger*, %struct.logger** %5, align 8
  %14 = getelementptr inbounds %struct.logger, %struct.logger* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.logger*, %struct.logger** %5, align 8
  %16 = getelementptr inbounds %struct.logger, %struct.logger* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %49

20:                                               ; preds = %10
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %22, 1
  %24 = call i32 @skynet_malloc(i64 %23)
  %25 = load %struct.logger*, %struct.logger** %5, align 8
  %26 = getelementptr inbounds %struct.logger, %struct.logger* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.logger*, %struct.logger** %5, align 8
  %28 = getelementptr inbounds %struct.logger, %struct.logger* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strcpy(i32 %29, i8* %30)
  %32 = load %struct.logger*, %struct.logger** %5, align 8
  %33 = getelementptr inbounds %struct.logger, %struct.logger* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %38

34:                                               ; preds = %3
  %35 = load i32*, i32** @stdout, align 8
  %36 = load %struct.logger*, %struct.logger** %5, align 8
  %37 = getelementptr inbounds %struct.logger, %struct.logger* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  br label %38

38:                                               ; preds = %34, %20
  %39 = load %struct.logger*, %struct.logger** %5, align 8
  %40 = getelementptr inbounds %struct.logger, %struct.logger* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %45 = load %struct.logger*, %struct.logger** %5, align 8
  %46 = load i32, i32* @logger_cb, align 4
  %47 = call i32 @skynet_callback(%struct.skynet_context* %44, %struct.logger* %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %49

48:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %43, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @skynet_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @skynet_callback(%struct.skynet_context*, %struct.logger*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
