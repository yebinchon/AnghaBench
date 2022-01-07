; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_extension.c_ts_extension_check_server_version.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_extension.c_ts_extension_check_server_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"server_version_num\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"server_version\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"extension \22%s\22 does not support postgres version %s\00", align 1
@EXTENSION_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_extension_check_server_version() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = call i8* @GetConfigOptionByName(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i64 @strtol(i8* %5, i32* null, i32 10)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @is_supported_pg_version(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %0
  %11 = call i8* @GetConfigOptionByName(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store i8* %11, i8** %3, align 8
  %12 = load i32, i32* @ERROR, align 4
  %13 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %14 = call i32 @errcode(i32 %13)
  %15 = load i32, i32* @EXTENSION_NAME, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %15, i8* %16)
  %18 = call i32 @ereport(i32 %12, i32 %17)
  br label %19

19:                                               ; preds = %10, %0
  ret void
}

declare dso_local i8* @GetConfigOptionByName(i8*, i32*, i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @is_supported_pg_version(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
