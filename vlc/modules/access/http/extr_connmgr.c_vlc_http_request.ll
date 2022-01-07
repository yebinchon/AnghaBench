; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_http_request.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_http_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_mgr = type { %struct.vlc_http_conn*, i32, i32* }
%struct.vlc_http_conn = type { i32 }
%struct.vlc_http_msg = type { i32 }
%struct.vlc_http_stream = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_http_msg* (%struct.vlc_http_mgr*, i8*, i32, %struct.vlc_http_msg*)* @vlc_http_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_http_msg* @vlc_http_request(%struct.vlc_http_mgr* %0, i8* %1, i32 %2, %struct.vlc_http_msg* %3) #0 {
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca %struct.vlc_http_mgr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vlc_http_msg*, align 8
  %10 = alloca %struct.vlc_http_msg*, align 8
  %11 = alloca %struct.vlc_http_conn*, align 8
  %12 = alloca %struct.vlc_http_stream*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  store %struct.vlc_http_mgr* %0, %struct.vlc_http_mgr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vlc_http_msg* %3, %struct.vlc_http_msg** %9, align 8
  %15 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %16 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %21 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %20, i32 0, i32 0
  %22 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %21, align 8
  %23 = icmp ne %struct.vlc_http_conn* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %5, align 8
  br label %100

25:                                               ; preds = %19, %4
  %26 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %9, align 8
  %30 = call %struct.vlc_http_msg* @vlc_http_mgr_reuse(%struct.vlc_http_mgr* %26, i8* %27, i32 %28, %struct.vlc_http_msg* %29)
  store %struct.vlc_http_msg* %30, %struct.vlc_http_msg** %10, align 8
  %31 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %32 = icmp ne %struct.vlc_http_msg* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  store %struct.vlc_http_msg* %34, %struct.vlc_http_msg** %5, align 8
  br label %100

35:                                               ; preds = %25
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i8* @vlc_http_proxy_find(i8* %36, i32 %37, i32 0)
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @vlc_UrlParse(%struct.TYPE_4__* %14, i8* %42)
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @free(i8* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %41
  %50 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %51 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  br label %62

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ %60, %58 ], [ 80, %61 ]
  %64 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %9, align 8
  %65 = call %struct.vlc_http_stream* @vlc_h1_request(i32 %52, i8* %54, i32 %63, i32 1, %struct.vlc_http_msg* %64, i32 1, %struct.vlc_http_conn** %11)
  store %struct.vlc_http_stream* %65, %struct.vlc_http_stream** %12, align 8
  br label %67

66:                                               ; preds = %41
  store %struct.vlc_http_stream* null, %struct.vlc_http_stream** %12, align 8
  br label %67

67:                                               ; preds = %66, %62
  %68 = call i32 @vlc_UrlClean(%struct.TYPE_4__* %14)
  br label %83

69:                                               ; preds = %35
  %70 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %71 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 80, %78 ]
  %81 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %9, align 8
  %82 = call %struct.vlc_http_stream* @vlc_h1_request(i32 %72, i8* %73, i32 %80, i32 0, %struct.vlc_http_msg* %81, i32 1, %struct.vlc_http_conn** %11)
  store %struct.vlc_http_stream* %82, %struct.vlc_http_stream** %12, align 8
  br label %83

83:                                               ; preds = %79, %67
  %84 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %12, align 8
  %85 = icmp eq %struct.vlc_http_stream* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %5, align 8
  br label %100

87:                                               ; preds = %83
  %88 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %12, align 8
  %89 = call %struct.vlc_http_msg* @vlc_http_msg_get_initial(%struct.vlc_http_stream* %88)
  store %struct.vlc_http_msg* %89, %struct.vlc_http_msg** %10, align 8
  %90 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %91 = icmp eq %struct.vlc_http_msg* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %11, align 8
  %94 = call i32 @vlc_http_conn_release(%struct.vlc_http_conn* %93)
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %5, align 8
  br label %100

95:                                               ; preds = %87
  %96 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %11, align 8
  %97 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %98 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %97, i32 0, i32 0
  store %struct.vlc_http_conn* %96, %struct.vlc_http_conn** %98, align 8
  %99 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  store %struct.vlc_http_msg* %99, %struct.vlc_http_msg** %5, align 8
  br label %100

100:                                              ; preds = %95, %92, %86, %33, %24
  %101 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  ret %struct.vlc_http_msg* %101
}

declare dso_local %struct.vlc_http_msg* @vlc_http_mgr_reuse(%struct.vlc_http_mgr*, i8*, i32, %struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_proxy_find(i8*, i32, i32) #1

declare dso_local i32 @vlc_UrlParse(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.vlc_http_stream* @vlc_h1_request(i32, i8*, i32, i32, %struct.vlc_http_msg*, i32, %struct.vlc_http_conn**) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_4__*) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_msg_get_initial(%struct.vlc_http_stream*) #1

declare dso_local i32 @vlc_http_conn_release(%struct.vlc_http_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
