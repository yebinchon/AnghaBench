; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_set_proxy.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_set_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@seaf = common dso_local global %struct.TYPE_2__* null, align 8
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@PROXY_TYPE_HTTP = common dso_local global i32 0, align 4
@CURLOPT_PROXYTYPE = common dso_local global i32 0, align 4
@CURLPROXY_HTTP = common dso_local global i32 0, align 4
@CURLOPT_HTTPPROXYTUNNEL = common dso_local global i32 0, align 4
@CURLOPT_PROXYPORT = common dso_local global i32 0, align 4
@CURLOPT_PROXYAUTH = common dso_local global i32 0, align 4
@CURLAUTH_BASIC = common dso_local global i32 0, align 4
@CURLAUTH_DIGEST = common dso_local global i32 0, align 4
@CURLAUTH_DIGEST_IE = common dso_local global i32 0, align 4
@CURLAUTH_GSSNEGOTIATE = common dso_local global i32 0, align 4
@CURLAUTH_NTLM = common dso_local global i32 0, align 4
@CURLOPT_PROXYUSERNAME = common dso_local global i32 0, align 4
@CURLOPT_PROXYPASSWORD = common dso_local global i32 0, align 4
@PROXY_TYPE_SOCKS = common dso_local global i32 0, align 4
@CURLPROXY_SOCKS5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @set_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_proxy(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14, %9, %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @CURLOPT_PROXY, align 4
  %22 = call i32 @curl_easy_setopt(i32* %20, i32 %21, i32 0)
  br label %128

23:                                               ; preds = %14
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PROXY_TYPE_HTTP, align 4
  %28 = call i64 @g_strcmp0(i32 %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %97

30:                                               ; preds = %23
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @CURLOPT_PROXYTYPE, align 4
  %33 = load i32, i32* @CURLPROXY_HTTP, align 4
  %34 = call i32 @curl_easy_setopt(i32* %31, i32 %32, i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @CURLOPT_HTTPPROXYTUNNEL, align 4
  %40 = call i32 @curl_easy_setopt(i32* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @CURLOPT_PROXY, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @curl_easy_setopt(i32* %42, i32 %43, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @CURLOPT_PROXYPORT, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %59

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i32 [ %57, %54 ], [ 80, %58 ]
  %61 = call i32 @curl_easy_setopt(i32* %48, i32 %49, i32 %60)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %59
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %66
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* @CURLOPT_PROXYAUTH, align 4
  %74 = load i32, i32* @CURLAUTH_BASIC, align 4
  %75 = load i32, i32* @CURLAUTH_DIGEST, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @CURLAUTH_DIGEST_IE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CURLAUTH_GSSNEGOTIATE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CURLAUTH_NTLM, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @curl_easy_setopt(i32* %72, i32 %73, i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @CURLOPT_PROXYUSERNAME, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @curl_easy_setopt(i32* %84, i32 %85, i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* @CURLOPT_PROXYPASSWORD, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @curl_easy_setopt(i32* %90, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %71, %66, %59
  br label %128

97:                                               ; preds = %23
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PROXY_TYPE_SOCKS, align 4
  %102 = call i64 @g_strcmp0(i32 %100, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %97
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %128

110:                                              ; preds = %104
  %111 = load i32*, i32** %3, align 8
  %112 = load i32, i32* @CURLOPT_PROXYTYPE, align 4
  %113 = load i32, i32* @CURLPROXY_SOCKS5, align 4
  %114 = call i32 @curl_easy_setopt(i32* %111, i32 %112, i32 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* @CURLOPT_PROXY, align 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @curl_easy_setopt(i32* %115, i32 %116, i32 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* @CURLOPT_PROXYPORT, align 4
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @curl_easy_setopt(i32* %121, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %110, %97
  br label %128

128:                                              ; preds = %19, %109, %127, %96
  ret void
}

declare dso_local i32 @curl_easy_setopt(i32*, i32, i32) #1

declare dso_local i64 @g_strcmp0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
