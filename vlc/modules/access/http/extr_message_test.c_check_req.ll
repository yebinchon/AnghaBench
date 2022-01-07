; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_check_req.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_check_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"www.example.com\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Cache-Control\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"no-cache\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Custom-Key\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"custom-value\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_http_msg*)* @check_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_req(%struct.vlc_http_msg* %0) #0 {
  %2 = alloca %struct.vlc_http_msg*, align 8
  %3 = alloca i8*, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %2, align 8
  %4 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %5 = call i64 @vlc_http_msg_get_status(%struct.vlc_http_msg* %4)
  %6 = icmp slt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %10 = call i8* @vlc_http_msg_get_method(%struct.vlc_http_msg* %9)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ false, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %23 = call i8* @vlc_http_msg_get_scheme(%struct.vlc_http_msg* %22)
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %18
  %32 = phi i1 [ false, %18 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %36 = call i8* @vlc_http_msg_get_authority(%struct.vlc_http_msg* %35)
  store i8* %36, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %39, %31
  %45 = phi i1 [ false, %31 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %49 = call i8* @vlc_http_msg_get_path(%struct.vlc_http_msg* %48)
  store i8* %49, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %52, %44
  %58 = phi i1 [ false, %44 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %62 = call i64 @vlc_http_msg_get_size(%struct.vlc_http_msg* %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %67 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i8* %67, i8** %3, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %70, %57
  %76 = phi i1 [ false, %57 ], [ %74, %70 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %80 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i8* %80, i8** %3, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %83, %75
  %89 = phi i1 [ false, %75 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %93 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i8* %93, i8** %3, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = icmp eq i8* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_http_msg_get_status(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_method(%struct.vlc_http_msg*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @vlc_http_msg_get_scheme(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_authority(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_path(%struct.vlc_http_msg*) #1

declare dso_local i64 @vlc_http_msg_get_size(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_header(%struct.vlc_http_msg*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
