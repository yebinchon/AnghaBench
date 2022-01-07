; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_https_request.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_https_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_mgr = type { %struct.vlc_http_conn*, i32, i32*, i32 }
%struct.vlc_http_conn = type { i32 }
%struct.vlc_http_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_http_msg* (%struct.vlc_http_mgr*, i8*, i32, %struct.vlc_http_msg*)* @vlc_https_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_http_msg* @vlc_https_request(%struct.vlc_http_mgr* %0, i8* %1, i32 %2, %struct.vlc_http_msg* %3) #0 {
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca %struct.vlc_http_mgr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vlc_http_msg*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vlc_http_msg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.vlc_http_conn*, align 8
  store %struct.vlc_http_mgr* %0, %struct.vlc_http_mgr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vlc_http_msg* %3, %struct.vlc_http_msg** %9, align 8
  store i32 1, i32* %11, align 4
  %15 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %16 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %21 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %20, i32 0, i32 0
  %22 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %21, align 8
  %23 = icmp ne %struct.vlc_http_conn* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %5, align 8
  br label %116

25:                                               ; preds = %19, %4
  %26 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %27 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %32 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @vlc_tls_ClientCreate(i32 %33)
  %35 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %36 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %38 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %5, align 8
  br label %116

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %9, align 8
  %48 = call %struct.vlc_http_msg* @vlc_http_mgr_reuse(%struct.vlc_http_mgr* %44, i8* %45, i32 %46, %struct.vlc_http_msg* %47)
  store %struct.vlc_http_msg* %48, %struct.vlc_http_msg** %12, align 8
  %49 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %12, align 8
  %50 = icmp ne %struct.vlc_http_msg* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %12, align 8
  store %struct.vlc_http_msg* %52, %struct.vlc_http_msg** %5, align 8
  br label %116

53:                                               ; preds = %43
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @vlc_http_proxy_find(i8* %54, i32 %55, i32 1)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %61 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %64 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = call i32* @vlc_https_connect_proxy(i32* %62, i32* %65, i8* %66, i32 %67, i32* %11, i8* %68)
  store i32* %69, i32** %10, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @free(i8* %70)
  br label %79

72:                                               ; preds = %53
  %73 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %74 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32* @vlc_https_connect(i32* %75, i8* %76, i32 %77, i32* %11)
  store i32* %78, i32** %10, align 8
  br label %79

79:                                               ; preds = %72, %59
  %80 = load i32*, i32** %10, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %5, align 8
  br label %116

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %88 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call %struct.vlc_http_conn* @vlc_h2_conn_create(i32 %89, i32* %90)
  store %struct.vlc_http_conn* %91, %struct.vlc_http_conn** %14, align 8
  br label %98

92:                                               ; preds = %83
  %93 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %94 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call %struct.vlc_http_conn* @vlc_h1_conn_create(i32 %95, i32* %96, i32 0)
  store %struct.vlc_http_conn* %97, %struct.vlc_http_conn** %14, align 8
  br label %98

98:                                               ; preds = %92, %86
  %99 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %14, align 8
  %100 = icmp eq %struct.vlc_http_conn* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @vlc_tls_Close(i32* %105)
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %5, align 8
  br label %116

107:                                              ; preds = %98
  %108 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %14, align 8
  %109 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %110 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %109, i32 0, i32 0
  store %struct.vlc_http_conn* %108, %struct.vlc_http_conn** %110, align 8
  %111 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %9, align 8
  %115 = call %struct.vlc_http_msg* @vlc_http_mgr_reuse(%struct.vlc_http_mgr* %111, i8* %112, i32 %113, %struct.vlc_http_msg* %114)
  store %struct.vlc_http_msg* %115, %struct.vlc_http_msg** %5, align 8
  br label %116

116:                                              ; preds = %107, %104, %82, %51, %41, %24
  %117 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  ret %struct.vlc_http_msg* %117
}

declare dso_local i32* @vlc_tls_ClientCreate(i32) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_mgr_reuse(%struct.vlc_http_mgr*, i8*, i32, %struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_proxy_find(i8*, i32, i32) #1

declare dso_local i32* @vlc_https_connect_proxy(i32*, i32*, i8*, i32, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @vlc_https_connect(i32*, i8*, i32, i32*) #1

declare dso_local %struct.vlc_http_conn* @vlc_h2_conn_create(i32, i32*) #1

declare dso_local %struct.vlc_http_conn* @vlc_h1_conn_create(i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_tls_Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
