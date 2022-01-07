; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_check_resp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_check_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Cache-Control\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Mon, 21 Oct 2013 20:13:22 GMT\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"https://www.example.com\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Content-Encoding\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Set-Cookie\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"foo=ASDJKHQKBZXOQWEOPIUAXQWEOIU; max-age=3600; version=1\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Custom-Key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_http_msg*)* @check_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_resp(%struct.vlc_http_msg* %0) #0 {
  %2 = alloca %struct.vlc_http_msg*, align 8
  %3 = alloca i8*, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %2, align 8
  %4 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %5 = call i32 @vlc_http_msg_get_status(%struct.vlc_http_msg* %4)
  %6 = icmp eq i32 %5, 200
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %10 = call i8* @vlc_http_msg_get_method(%struct.vlc_http_msg* %9)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %16 = call i8* @vlc_http_msg_get_scheme(%struct.vlc_http_msg* %15)
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %22 = call i8* @vlc_http_msg_get_authority(%struct.vlc_http_msg* %21)
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp eq i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %28 = call i8* @vlc_http_msg_get_path(%struct.vlc_http_msg* %27)
  store i8* %28, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = icmp eq i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %34 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %37, %1
  %43 = phi i1 [ false, %1 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %47 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %47, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %50, %42
  %56 = phi i1 [ false, %42 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %60 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i8* %60, i8** %3, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %63, %55
  %69 = phi i1 [ false, %55 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %73 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i8* %73, i8** %3, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %76, %68
  %82 = phi i1 [ false, %68 ], [ %80, %76 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %86 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i8* %86, i8** %3, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %89, %81
  %95 = phi i1 [ false, %81 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %99 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i8* %99, i8** %3, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = icmp eq i8* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_http_msg_get_status(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_method(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_scheme(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_authority(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_path(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_header(%struct.vlc_http_msg*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
