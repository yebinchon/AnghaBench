; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_stat.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i8*, i32, double, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"mqlen\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"endless\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.skynet_context*, i8*)* @cmd_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_stat(%struct.skynet_context* %0, i8* %1) #0 {
  %3 = alloca %struct.skynet_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %14 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @skynet_mq_length(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %18 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sitofp i32 %20 to double
  %22 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), double %21)
  br label %110

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %29 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %34 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %38 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  br label %44

39:                                               ; preds = %27
  %40 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %41 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcpy(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %32
  br label %109

45:                                               ; preds = %23
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %51 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  store double %54, double* %6, align 8
  %55 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %56 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load double, double* %6, align 8
  %59 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %58)
  br label %108

60:                                               ; preds = %45
  %61 = load i8*, i8** %4, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %66 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = call i64 (...) @skynet_thread_time()
  %71 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %72 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = sitofp i64 %75 to double
  %77 = fdiv double %76, 1.000000e+06
  store double %77, double* %8, align 8
  %78 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %79 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load double, double* %8, align 8
  %82 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %81)
  br label %88

83:                                               ; preds = %64
  %84 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %85 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcpy(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %69
  br label %107

89:                                               ; preds = %60
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %95 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %98 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %97, i32 0, i32 2
  %99 = load double, double* %98, align 8
  %100 = call i32 @sprintf(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), double %99)
  br label %106

101:                                              ; preds = %89
  %102 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %103 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %101, %93
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %49
  br label %109

109:                                              ; preds = %108, %44
  br label %110

110:                                              ; preds = %109, %12
  %111 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %112 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  ret i8* %113
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @skynet_mq_length(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, double) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @skynet_thread_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
