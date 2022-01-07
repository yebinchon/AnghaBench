; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_extension.c_ts_extension_check_version.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_extension.c_ts_extension_check_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FATAL = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"extension \22%s\22 version mismatch: shared library version %s; SQL version %s\00", align 1
@EXTENSION_NAME = common dso_local global i32 0, align 4
@process_shared_preload_libraries_in_progress = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_extension_check_version(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @IsNormalProcessingMode()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = call i32 (...) @IsTransactionState()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = call i32 (...) @extension_exists()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %6, %1
  br label %36

13:                                               ; preds = %9
  %14 = call i8* (...) @extension_version()
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strcmp(i8* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i32, i32* @FATAL, align 4
  %21 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = load i32, i32* @EXTENSION_NAME, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24, i8* %25)
  %27 = call i32 @ereport(i32 %20, i32 %26)
  br label %28

28:                                               ; preds = %19, %13
  %29 = load i32, i32* @process_shared_preload_libraries_in_progress, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = call i32 (...) @extension_loader_present()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (...) @extension_load_without_preload()
  br label %36

36:                                               ; preds = %12, %34, %31, %28
  ret void
}

declare dso_local i32 @IsNormalProcessingMode(...) #1

declare dso_local i32 @IsTransactionState(...) #1

declare dso_local i32 @extension_exists(...) #1

declare dso_local i8* @extension_version(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*, i8*) #1

declare dso_local i32 @extension_loader_present(...) #1

declare dso_local i32 @extension_load_without_preload(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
