; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-gatewayd.c_request_parse_accept.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-gatewayd.c_request_parse_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MHD_Connection = type { i64 }

@MHD_HEADER_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Accept\00", align 1
@mime_types = common dso_local global i32* null, align 8
@OUTPUT_JSON = common dso_local global i64 0, align 8
@OUTPUT_JSON_SSE = common dso_local global i64 0, align 8
@OUTPUT_JSON_SEQ = common dso_local global i64 0, align 8
@OUTPUT_EXPORT = common dso_local global i64 0, align 8
@OUTPUT_SHORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MHD_Connection*, %struct.MHD_Connection*)* @request_parse_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_parse_accept(%struct.MHD_Connection* %0, %struct.MHD_Connection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MHD_Connection*, align 8
  %5 = alloca %struct.MHD_Connection*, align 8
  %6 = alloca i8*, align 8
  store %struct.MHD_Connection* %0, %struct.MHD_Connection** %4, align 8
  store %struct.MHD_Connection* %1, %struct.MHD_Connection** %5, align 8
  %7 = load %struct.MHD_Connection*, %struct.MHD_Connection** %4, align 8
  %8 = call i32 @assert(%struct.MHD_Connection* %7)
  %9 = load %struct.MHD_Connection*, %struct.MHD_Connection** %5, align 8
  %10 = call i32 @assert(%struct.MHD_Connection* %9)
  %11 = load %struct.MHD_Connection*, %struct.MHD_Connection** %5, align 8
  %12 = load i32, i32* @MHD_HEADER_KIND, align 4
  %13 = call i8* @MHD_lookup_connection_value(%struct.MHD_Connection* %11, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i32*, i32** @mime_types, align 8
  %20 = load i64, i64* @OUTPUT_JSON, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @streq(i8* %18, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i64, i64* @OUTPUT_JSON, align 8
  %27 = load %struct.MHD_Connection*, %struct.MHD_Connection** %4, align 8
  %28 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %72

29:                                               ; preds = %17
  %30 = load i8*, i8** %6, align 8
  %31 = load i32*, i32** @mime_types, align 8
  %32 = load i64, i64* @OUTPUT_JSON_SSE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @streq(i8* %30, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i64, i64* @OUTPUT_JSON_SSE, align 8
  %39 = load %struct.MHD_Connection*, %struct.MHD_Connection** %4, align 8
  %40 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %71

41:                                               ; preds = %29
  %42 = load i8*, i8** %6, align 8
  %43 = load i32*, i32** @mime_types, align 8
  %44 = load i64, i64* @OUTPUT_JSON_SEQ, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @streq(i8* %42, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i64, i64* @OUTPUT_JSON_SEQ, align 8
  %51 = load %struct.MHD_Connection*, %struct.MHD_Connection** %4, align 8
  %52 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %70

53:                                               ; preds = %41
  %54 = load i8*, i8** %6, align 8
  %55 = load i32*, i32** @mime_types, align 8
  %56 = load i64, i64* @OUTPUT_EXPORT, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @streq(i8* %54, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i64, i64* @OUTPUT_EXPORT, align 8
  %63 = load %struct.MHD_Connection*, %struct.MHD_Connection** %4, align 8
  %64 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %69

65:                                               ; preds = %53
  %66 = load i64, i64* @OUTPUT_SHORT, align 8
  %67 = load %struct.MHD_Connection*, %struct.MHD_Connection** %4, align 8
  %68 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %49
  br label %71

71:                                               ; preds = %70, %37
  br label %72

72:                                               ; preds = %71, %25
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @assert(%struct.MHD_Connection*) #1

declare dso_local i8* @MHD_lookup_connection_value(%struct.MHD_Connection*, i32, i8*) #1

declare dso_local i64 @streq(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
