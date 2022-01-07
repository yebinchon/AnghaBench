; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_log.c_skynet_log_open.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_log.c_skynet_log_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"logpath\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/%08x.log\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Open log file %s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"open time: %u %s\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Open log file %s fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @skynet_log_open(%struct.skynet_context* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.skynet_context* %0, %struct.skynet_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = call i8* @skynet_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %52

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 16
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %26)
  %28 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %18
  %32 = call i32 (...) @skynet_starttime()
  store i32 %32, i32* %11, align 4
  %33 = call i32 (...) @skynet_now()
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sdiv i32 %35, 100
  %37 = add nsw i32 %34, %36
  store i32 %37, i32* %13, align 4
  %38 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %39 = call i32 @skynet_error(%struct.skynet_context* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i8* @ctime(i32* %13)
  %43 = call i32 @fprintf(i32* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %41, i8* %42)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @fflush(i32* %44)
  br label %49

46:                                               ; preds = %18
  %47 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %48 = call i32 @skynet_error(%struct.skynet_context* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %24)
  br label %49

49:                                               ; preds = %46, %31
  %50 = load i32*, i32** %10, align 8
  store i32* %50, i32** %3, align 8
  %51 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %51)
  br label %52

52:                                               ; preds = %49, %17
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i8* @skynet_getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @skynet_starttime(...) #1

declare dso_local i32 @skynet_now(...) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i8*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @fflush(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
