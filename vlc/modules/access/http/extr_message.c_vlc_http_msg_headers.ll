; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_headers.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"HTTP/1.%*1u %3hu %*s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_msg* @vlc_http_msg_headers(i8* %0) #0 {
  %2 = alloca %struct.vlc_http_msg*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vlc_http_msg*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @sscanf(i8* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i16* %5)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i16, i16* %5, align 2
  %14 = call %struct.vlc_http_msg* @vlc_http_resp_create(i16 zeroext %13)
  store %struct.vlc_http_msg* %14, %struct.vlc_http_msg** %4, align 8
  %15 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %16 = icmp eq %struct.vlc_http_msg* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %2, align 8
  br label %124

21:                                               ; preds = %12
  br label %23

22:                                               ; preds = %1
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %2, align 8
  br label %124

23:                                               ; preds = %21
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @strstr(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %121

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %115, %29
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %119

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %57, %35
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = call i8* @strstr(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %121

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 9
  br label %57

57:                                               ; preds = %51, %45
  %58 = phi i1 [ true, %45 ], [ %56, %51 ]
  br i1 %58, label %37, label %59

59:                                               ; preds = %57
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i8* @memchr(i8* %62, i8 signext 58, i32 %68)
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %59
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %59
  br label %121

77:                                               ; preds = %72
  %78 = load i8*, i8** %3, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %3, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i8* @strndup(i8* %78, i32 %84)
  store i8* %85, i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = icmp eq i8* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %121

92:                                               ; preds = %77
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @strspn(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i8*, i8** %7, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %7, align 8
  %100 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @vlc_http_msg_add_header(%struct.vlc_http_msg* %100, i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %107, i8* %108)
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %92
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @free(i8* %113)
  br label %121

115:                                              ; preds = %92
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @free(i8* %116)
  %118 = load i8*, i8** %6, align 8
  store i8* %118, i8** %3, align 8
  br label %30

119:                                              ; preds = %30
  %120 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  store %struct.vlc_http_msg* %120, %struct.vlc_http_msg** %2, align 8
  br label %124

121:                                              ; preds = %112, %91, %76, %43, %28
  %122 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %123 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %122)
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %2, align 8
  br label %124

124:                                              ; preds = %121, %119, %22, %20
  %125 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  ret %struct.vlc_http_msg* %125
}

declare dso_local i32 @sscanf(i8*, i8*, i16*) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_resp_create(i16 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @vlc_http_msg_add_header(%struct.vlc_http_msg*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
