; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_curl_stream.c_on_curl_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_curl_stream.c_on_curl_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curlstate = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Accept-Ranges: bytes\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"header arrived with Accept-Ranges!\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Content-Length:\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"header arrived with Content-Length: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @on_curl_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @on_curl_header(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.curlstate*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.curlstate*
  store %struct.curlstate* %12, %struct.curlstate** %9, align 8
  %13 = load %struct.curlstate*, %struct.curlstate** %9, align 8
  %14 = call i32 @lock(%struct.curlstate* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 20)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = call i32 @DEBUG_MESSAGE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.curlstate*, %struct.curlstate** %9, align 8
  %21 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %4
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 15
  %30 = call i32 @fz_atoi(i8* %29)
  %31 = load %struct.curlstate*, %struct.curlstate** %9, align 8
  %32 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.curlstate*, %struct.curlstate** %9, align 8
  %34 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @DEBUG_MESSAGE(i8* %37)
  br label %39

39:                                               ; preds = %26, %22
  %40 = load %struct.curlstate*, %struct.curlstate** %9, align 8
  %41 = call i32 @unlock(%struct.curlstate* %40)
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = mul i64 %42, %43
  ret i64 %44
}

declare dso_local i32 @lock(%struct.curlstate*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @DEBUG_MESSAGE(i8*) #1

declare dso_local i32 @fz_atoi(i8*) #1

declare dso_local i32 @unlock(%struct.curlstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
