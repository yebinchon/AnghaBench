; ModuleID = '/home/carl/AnghaBench/timescaledb/src/net/extr_conn.c_ts_connection_create.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/net/extr_conn.c_ts_connection_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_7__*)* }

@_CONNECTION_MAX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid connection type\00", align 1
@conn_ops = common dso_local global i32** null, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s connections are not supported\00", align 1
@conn_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Enable %s support when compiling the extension.\00", align 1
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%s connection could not be initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ts_connection_create(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @_CONNECTION_MAX, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ERROR, align 4
  %9 = call i32 @elog(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32**, i32*** @conn_ops, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* null, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %19 = call i32 @errcode(i32 %18)
  %20 = load i32*, i32** @conn_names, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** @conn_names, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @errhint(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = call i32 @ereport(i32 %17, i32 %29)
  br label %31

31:                                               ; preds = %16, %10
  %32 = load i64, i64* %2, align 8
  %33 = load i32**, i32*** @conn_ops, align 8
  %34 = load i64, i64* %2, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call %struct.TYPE_7__* @connection_internal_create(i64 %32, i32* %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %3, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = icmp ne %struct.TYPE_7__* null, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @Assert(i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %45, align 8
  %47 = icmp ne i64 (%struct.TYPE_7__*)* null, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %31
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = call i64 %53(%struct.TYPE_7__* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = load i32*, i32** @conn_names, align 8
  %62 = load i64, i64* %2, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = call i32 @ereport(i32 %58, i32 %65)
  br label %67

67:                                               ; preds = %57, %48
  br label %68

68:                                               ; preds = %67, %31
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %69
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @errhint(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @connection_internal_create(i64, i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
