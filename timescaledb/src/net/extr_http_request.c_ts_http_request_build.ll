; ModuleID = '/home/carl/AnghaBench/timescaledb/src/net/extr_http_request.c_ts_http_request_build.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/net/extr_http_request.c_ts_http_request_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i64, i8* }

@SPACE = common dso_local global i32 0, align 4
@CARRIAGE = common dso_local global i32 0, align 4
@NEW_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ts_http_request_build(%struct.TYPE_19__* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 @initStringInfo(%struct.TYPE_18__* %6)
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = call i32 @http_request_serialize_method(%struct.TYPE_19__* %11, %struct.TYPE_18__* %6)
  %13 = load i32, i32* @SPACE, align 4
  %14 = call i32 @http_request_serialize_char(i32 %13, %struct.TYPE_18__* %6)
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = call i32 @http_request_serialize_uri(%struct.TYPE_19__* %15, %struct.TYPE_18__* %6)
  %17 = load i32, i32* @SPACE, align 4
  %18 = call i32 @http_request_serialize_char(i32 %17, %struct.TYPE_18__* %6)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = call i32 @http_request_serialize_version(%struct.TYPE_19__* %19, %struct.TYPE_18__* %6)
  %21 = load i32, i32* @CARRIAGE, align 4
  %22 = call i32 @http_request_serialize_char(i32 %21, %struct.TYPE_18__* %6)
  %23 = load i32, i32* @NEW_LINE, align 4
  %24 = call i32 @http_request_serialize_char(i32 %23, %struct.TYPE_18__* %6)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %7, align 8
  br label %28

28:                                               ; preds = %45, %2
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = icmp ne %struct.TYPE_20__* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %33 = call i32 @http_header_get_content_length(%struct.TYPE_20__* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i8* null, i8** %3, align 8
  br label %81

43:                                               ; preds = %36
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %47 = call i32 @http_header_serialize(%struct.TYPE_20__* %46, %struct.TYPE_18__* %6)
  %48 = load i32, i32* @CARRIAGE, align 4
  %49 = call i32 @http_request_serialize_char(i32 %48, %struct.TYPE_18__* %6)
  %50 = load i32, i32* @NEW_LINE, align 4
  %51 = call i32 @http_request_serialize_char(i32 %50, %struct.TYPE_18__* %6)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  store %struct.TYPE_20__* %54, %struct.TYPE_20__** %7, align 8
  br label %28

55:                                               ; preds = %28
  %56 = load i32, i32* @CARRIAGE, align 4
  %57 = call i32 @http_request_serialize_char(i32 %56, %struct.TYPE_18__* %6)
  %58 = load i32, i32* @NEW_LINE, align 4
  %59 = call i32 @http_request_serialize_char(i32 %58, %struct.TYPE_18__* %6)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i8* null, i8** %3, align 8
  br label %81

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %55
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = call i32 @http_request_serialize_body(%struct.TYPE_19__* %70, %struct.TYPE_18__* %6)
  %72 = load i64*, i64** %5, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %5, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %69
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %3, align 8
  br label %81

81:                                               ; preds = %78, %67, %42
  %82 = load i8*, i8** %3, align 8
  ret i8* %82
}

declare dso_local i32 @initStringInfo(%struct.TYPE_18__*) #1

declare dso_local i32 @http_request_serialize_method(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @http_request_serialize_char(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @http_request_serialize_uri(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @http_request_serialize_version(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @http_header_get_content_length(%struct.TYPE_20__*) #1

declare dso_local i32 @http_header_serialize(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @http_request_serialize_body(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
