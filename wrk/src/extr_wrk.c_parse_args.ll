; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_wrk.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_wrk.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, i32, i32, i32, i32, i8* }
%struct.http_parser_url = type { i32 }

@SOCKET_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"t:c:d:s:H:T:Lrv?\00", align 1
@longopts = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"wrk %s [%s] \00", align 1
@VERSION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Copyright (C) 2012 Will Glozer\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid URL: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"number of connections must be >= threads\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config*, i8**, %struct.http_parser_url*, i8**, i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(%struct.config* %0, i8** %1, %struct.http_parser_url* %2, i8** %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.config*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.http_parser_url*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store %struct.config* %0, %struct.config** %8, align 8
  store i8** %1, i8*** %9, align 8
  store %struct.http_parser_url* %2, %struct.http_parser_url** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %16 = load i8**, i8*** %11, align 8
  store i8** %16, i8*** %14, align 8
  %17 = load %struct.config*, %struct.config** %8, align 8
  %18 = call i32 @memset(%struct.config* %17, i32 0, i32 32)
  %19 = load %struct.config*, %struct.config** %8, align 8
  %20 = getelementptr inbounds %struct.config, %struct.config* %19, i32 0, i32 0
  store i32 2, i32* %20, align 8
  %21 = load %struct.config*, %struct.config** %8, align 8
  %22 = getelementptr inbounds %struct.config, %struct.config* %21, i32 0, i32 1
  store i32 10, i32* %22, align 4
  %23 = load %struct.config*, %struct.config** %8, align 8
  %24 = getelementptr inbounds %struct.config, %struct.config* %23, i32 0, i32 2
  store i32 10, i32* %24, align 8
  %25 = load i32, i32* @SOCKET_TIMEOUT_MS, align 4
  %26 = load %struct.config*, %struct.config** %8, align 8
  %27 = getelementptr inbounds %struct.config, %struct.config* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %90, %6
  %29 = load i32, i32* %12, align 4
  %30 = load i8**, i8*** %13, align 8
  %31 = load i32, i32* @longopts, align 4
  %32 = call i32 @getopt_long(i32 %29, i8** %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31, i32* null)
  store i32 %32, i32* %15, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %91

34:                                               ; preds = %28
  %35 = load i32, i32* %15, align 4
  switch i32 %35, label %89 [
    i32 116, label %36
    i32 99, label %44
    i32 100, label %52
    i32 115, label %60
    i32 72, label %64
    i32 76, label %68
    i32 84, label %71
    i32 118, label %83
    i32 104, label %88
    i32 63, label %88
    i32 58, label %88
  ]

36:                                               ; preds = %34
  %37 = load i8*, i8** @optarg, align 8
  %38 = load %struct.config*, %struct.config** %8, align 8
  %39 = getelementptr inbounds %struct.config, %struct.config* %38, i32 0, i32 0
  %40 = call i32 @scan_metric(i8* %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %147

43:                                               ; preds = %36
  br label %90

44:                                               ; preds = %34
  %45 = load i8*, i8** @optarg, align 8
  %46 = load %struct.config*, %struct.config** %8, align 8
  %47 = getelementptr inbounds %struct.config, %struct.config* %46, i32 0, i32 1
  %48 = call i32 @scan_metric(i8* %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  br label %147

51:                                               ; preds = %44
  br label %90

52:                                               ; preds = %34
  %53 = load i8*, i8** @optarg, align 8
  %54 = load %struct.config*, %struct.config** %8, align 8
  %55 = getelementptr inbounds %struct.config, %struct.config* %54, i32 0, i32 2
  %56 = call i32 @scan_time(i8* %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %7, align 4
  br label %147

59:                                               ; preds = %52
  br label %90

60:                                               ; preds = %34
  %61 = load i8*, i8** @optarg, align 8
  %62 = load %struct.config*, %struct.config** %8, align 8
  %63 = getelementptr inbounds %struct.config, %struct.config* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  br label %90

64:                                               ; preds = %34
  %65 = load i8*, i8** @optarg, align 8
  %66 = load i8**, i8*** %14, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %14, align 8
  store i8* %65, i8** %66, align 8
  br label %90

68:                                               ; preds = %34
  %69 = load %struct.config*, %struct.config** %8, align 8
  %70 = getelementptr inbounds %struct.config, %struct.config* %69, i32 0, i32 4
  store i32 1, i32* %70, align 8
  br label %90

71:                                               ; preds = %34
  %72 = load i8*, i8** @optarg, align 8
  %73 = load %struct.config*, %struct.config** %8, align 8
  %74 = getelementptr inbounds %struct.config, %struct.config* %73, i32 0, i32 3
  %75 = call i32 @scan_time(i8* %72, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -1, i32* %7, align 4
  br label %147

78:                                               ; preds = %71
  %79 = load %struct.config*, %struct.config** %8, align 8
  %80 = getelementptr inbounds %struct.config, %struct.config* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 1000
  store i32 %82, i32* %80, align 4
  br label %90

83:                                               ; preds = %34
  %84 = load i8*, i8** @VERSION, align 8
  %85 = call i8* (...) @aeGetApiName()
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %85)
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %90

88:                                               ; preds = %34, %34, %34
  br label %89

89:                                               ; preds = %34, %88
  store i32 -1, i32* %7, align 4
  br label %147

90:                                               ; preds = %83, %78, %68, %64, %60, %59, %51, %43
  br label %28

91:                                               ; preds = %28
  %92 = load i32, i32* @optind, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = load %struct.config*, %struct.config** %8, align 8
  %97 = getelementptr inbounds %struct.config, %struct.config* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.config*, %struct.config** %8, align 8
  %102 = getelementptr inbounds %struct.config, %struct.config* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100, %95, %91
  store i32 -1, i32* %7, align 4
  br label %147

106:                                              ; preds = %100
  %107 = load i8**, i8*** %13, align 8
  %108 = load i32, i32* @optind, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.http_parser_url*, %struct.http_parser_url** %10, align 8
  %113 = call i32 @script_parse_url(i8* %111, %struct.http_parser_url* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* @stderr, align 4
  %117 = load i8**, i8*** %13, align 8
  %118 = load i32, i32* @optind, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %121)
  store i32 -1, i32* %7, align 4
  br label %147

123:                                              ; preds = %106
  %124 = load %struct.config*, %struct.config** %8, align 8
  %125 = getelementptr inbounds %struct.config, %struct.config* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load %struct.config*, %struct.config** %8, align 8
  %130 = getelementptr inbounds %struct.config, %struct.config* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.config*, %struct.config** %8, align 8
  %133 = getelementptr inbounds %struct.config, %struct.config* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %128, %123
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %147

139:                                              ; preds = %128
  %140 = load i8**, i8*** %13, align 8
  %141 = load i32, i32* @optind, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load i8**, i8*** %9, align 8
  store i8* %144, i8** %145, align 8
  %146 = load i8**, i8*** %14, align 8
  store i8* null, i8** %146, align 8
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %139, %136, %115, %105, %89, %77, %58, %50, %42
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @memset(%struct.config*, i32, i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @scan_metric(i8*, i32*) #1

declare dso_local i32 @scan_time(i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @aeGetApiName(...) #1

declare dso_local i32 @script_parse_url(i8*, %struct.http_parser_url*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
