; ModuleID = '/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_process_response.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_process_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@texteq = common dso_local global i32 0, align 4
@json_object_field_text = common dso_local global i32 0, align 4
@TS_IS_UPTODATE_JSON_FIELD = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"the \22%s\22 extension is up-to-date\00", align 1
@EXTENSION_NAME = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"server did not return a valid TimescaleDB version: %s\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"the \22%s\22 extension is not up-to-date\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"The most up-to-date version is %s, the installed version is %s\00", align 1
@TIMESCALEDB_VERSION_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @process_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_response(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @texteq, align 4
  %6 = load i32, i32* @json_object_field_text, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @CStringGetTextDatum(i8* %7)
  %9 = load i8*, i8** @TS_IS_UPTODATE_JSON_FIELD, align 8
  %10 = call i32 @cstring_to_text(i8* %9)
  %11 = call i32 @PointerGetDatum(i32 %10)
  %12 = call i32 @DirectFunctionCall2(i32 %6, i32 %8, i32 %11)
  %13 = call i32 @cstring_to_text(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @PointerGetDatum(i32 %13)
  %15 = call i32 @DirectFunctionCall2(i32 %5, i32 %12, i32 %14)
  %16 = call i32 @DatumGetBool(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @NOTICE, align 4
  %21 = load i32, i32* @EXTENSION_NAME, align 4
  %22 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %41

23:                                               ; preds = %1
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @ts_validate_server_version(i8* %24, %struct.TYPE_3__* %3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @WARNING, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %41

32:                                               ; preds = %23
  %33 = load i32, i32* @LOG, align 4
  %34 = load i32, i32* @EXTENSION_NAME, align 4
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TIMESCALEDB_VERSION_MOD, align 4
  %39 = call i32 @errhint(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %37, i32 %38)
  %40 = call i32 @ereport(i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %27, %32, %19
  ret void
}

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @CStringGetTextDatum(i8*) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @cstring_to_text(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ts_validate_server_version(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @errhint(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
