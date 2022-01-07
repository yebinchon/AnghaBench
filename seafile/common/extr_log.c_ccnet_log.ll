; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_log.c_ccnet_log.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_log.c_ccnet_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@ccnet_log_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"[%x %X] \00", align 1
@logfp = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@enable_syslog = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i32)* @ccnet_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccnet_log(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ccnet_log_level, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %42

17:                                               ; preds = %4
  %18 = call i32 @time(i32* null)
  store i32 %18, i32* %9, align 4
  %19 = call %struct.tm* @localtime(i32* %9)
  store %struct.tm* %19, %struct.tm** %10, align 8
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %21 = load %struct.tm*, %struct.tm** %10, align 8
  %22 = call i32 @strftime(i8* %20, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.tm* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 1024
  %25 = zext i1 %24 to i32
  %26 = call i32 @g_return_if_fail(i32 %25)
  %27 = load i32*, i32** @logfp, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %31 = load i32*, i32** @logfp, align 8
  %32 = call i32 @fputs(i8* %30, i32* %31)
  %33 = load i8*, i8** %7, align 8
  %34 = load i32*, i32** @logfp, align 8
  %35 = call i32 @fputs(i8* %33, i32* %34)
  %36 = load i32*, i32** @logfp, align 8
  %37 = call i32 @fflush(i32* %36)
  br label %42

38:                                               ; preds = %17
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %16, %38, %29
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
