; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_req.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }
%struct.vlc_http_resource = type { i8*, %struct.TYPE_2__*, i32, i32*, i32*, i32*, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 (%struct.vlc_http_resource*, %struct.vlc_http_msg*, i8*)* }

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Accept\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"*/*\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"en_US\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Accept-Language\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Referer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_http_msg* (%struct.vlc_http_resource*, i8*)* @vlc_http_res_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_http_msg* @vlc_http_res_req(%struct.vlc_http_resource* %0, i8* %1) #0 {
  %3 = alloca %struct.vlc_http_msg*, align 8
  %4 = alloca %struct.vlc_http_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vlc_http_msg*, align 8
  %7 = alloca i8*, align 8
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %9 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %14 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %15 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %18 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.vlc_http_msg* @vlc_http_req_create(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %16, i32 %19)
  store %struct.vlc_http_msg* %20, %struct.vlc_http_msg** %6, align 8
  %21 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %22 = icmp eq %struct.vlc_http_msg* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %3, align 8
  br label %107

27:                                               ; preds = %2
  %28 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %29 = call i32 (%struct.vlc_http_msg*, i8*, i8*, ...) @vlc_http_msg_add_header(%struct.vlc_http_msg* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %31 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = call i8* @vlc_gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (%struct.vlc_http_msg*, i8*, i8*, ...) @vlc_http_msg_add_header(%struct.vlc_http_msg* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %27
  %45 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %46 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %51 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %56 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %57 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %60 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @vlc_http_msg_add_creds_basic(%struct.vlc_http_msg* %55, i32 0, i32* %58, i32* %61)
  br label %63

63:                                               ; preds = %54, %49, %44
  %64 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %65 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %70 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %71 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @vlc_http_msg_add_agent(%struct.vlc_http_msg* %69, i32* %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %76 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %81 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %82 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (%struct.vlc_http_msg*, i8*, i8*, ...) @vlc_http_msg_add_header(%struct.vlc_http_msg* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %87 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %88 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @vlc_http_mgr_get_jar(i32 %89)
  %91 = call i32 @vlc_http_msg_add_cookies(%struct.vlc_http_msg* %86, i32 %90)
  %92 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %93 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64 (%struct.vlc_http_resource*, %struct.vlc_http_msg*, i8*)*, i64 (%struct.vlc_http_resource*, %struct.vlc_http_msg*, i8*)** %95, align 8
  %97 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %98 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = call i64 %96(%struct.vlc_http_resource* %97, %struct.vlc_http_msg* %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %85
  %103 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %104 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %103)
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %3, align 8
  br label %107

105:                                              ; preds = %85
  %106 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  store %struct.vlc_http_msg* %106, %struct.vlc_http_msg** %3, align 8
  br label %107

107:                                              ; preds = %105, %102, %26
  %108 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  ret %struct.vlc_http_msg* %108
}

declare dso_local %struct.vlc_http_msg* @vlc_http_req_create(i8*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_http_msg_add_header(%struct.vlc_http_msg*, i8*, i8*, ...) #1

declare dso_local i8* @vlc_gettext(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @vlc_http_msg_add_creds_basic(%struct.vlc_http_msg*, i32, i32*, i32*) #1

declare dso_local i32 @vlc_http_msg_add_agent(%struct.vlc_http_msg*, i32*) #1

declare dso_local i32 @vlc_http_msg_add_cookies(%struct.vlc_http_msg*, i32) #1

declare dso_local i32 @vlc_http_mgr_get_jar(i32) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
