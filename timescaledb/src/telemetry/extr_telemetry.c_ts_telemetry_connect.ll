; ModuleID = '/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_ts_telemetry_connect.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_ts_telemetry_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@CONNECTION_PLAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@CONNECTION_SSL = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"scheme \22%s\22 not supported for telemetry\00", align 1
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"telemetry could not connect to \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_telemetry_connect(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @CONNECTION_PLAIN, align 4
  %14 = call i32* @ts_connection_create(i32 %13)
  store i32* %14, i32** %6, align 8
  br label %30

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @CONNECTION_SSL, align 4
  %21 = call i32* @ts_connection_create(i32 %20)
  store i32* %21, i32** %6, align 8
  br label %29

22:                                               ; preds = %15
  %23 = load i32, i32* @WARNING, align 4
  %24 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = call i32 @ereport(i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %22, %19
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32* null, i32** %3, align 8
  br label %56

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @ts_connection_connect(i32* %35, i8* %36, i8* %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = call i8* @ts_connection_get_and_clear_error(i32* %42)
  store i8* %43, i8** %8, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @ts_connection_destroy(i32* %44)
  store i32* null, i32** %6, align 8
  %46 = load i32, i32* @WARNING, align 4
  %47 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @errdetail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  %53 = call i32 @ereport(i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %41, %34
  %55 = load i32*, i32** %6, align 8
  store i32* %55, i32** %3, align 8
  br label %56

56:                                               ; preds = %54, %33
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @ts_connection_create(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @ts_connection_connect(i32*, i8*, i8*, i32) #1

declare dso_local i8* @ts_connection_get_and_clear_error(i32*) #1

declare dso_local i32 @ts_connection_destroy(i32*) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
