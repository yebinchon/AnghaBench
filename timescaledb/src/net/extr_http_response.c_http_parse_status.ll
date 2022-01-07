; ModuleID = '/home/carl/AnghaBench/timescaledb/src/net/extr_http_response.c_http_parse_status.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/net/extr_http_response.c_http_parse_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32, i32, i32 }

@HTTP_STATE_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"%127s%*[ ]%d%*[ ]%*s\00", align 1
@HTTP_STATE_INTERM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8)* @http_parse_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_parse_status(%struct.TYPE_4__* %0, i8 signext %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 1
  %10 = call i8* @palloc(i64 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %60 [
    i32 129, label %13
    i32 128, label %56
  ]

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @memcpy(i8* %14, i32 %17, i64 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** @HTTP_STATE_ERROR, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %32, i8 signext 0, i32 4)
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %37, i32* %39)
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %55

42:                                               ; preds = %13
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = call i32 @http_parse_version(%struct.TYPE_4__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** @HTTP_STATE_INTERM, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %54

50:                                               ; preds = %42
  %51 = load i8*, i8** @HTTP_STATE_ERROR, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %13
  br label %61

56:                                               ; preds = %2
  %57 = load i8*, i8** @HTTP_STATE_ERROR, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %56, %55
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @pfree(i8* %62)
  ret void
}

declare dso_local i8* @palloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32, i32*) #1

declare dso_local i32 @http_parse_version(%struct.TYPE_4__*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
