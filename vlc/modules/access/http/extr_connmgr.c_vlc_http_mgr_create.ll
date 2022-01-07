; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_http_mgr_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_http_mgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_mgr = type { i32*, %struct.vlc_http_cookie_jar_t*, i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vlc_http_cookie_jar_t = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_mgr* @vlc_http_mgr_create(%struct.TYPE_3__* %0, %struct.vlc_http_cookie_jar_t* %1) #0 {
  %3 = alloca %struct.vlc_http_mgr*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.vlc_http_cookie_jar_t*, align 8
  %6 = alloca %struct.vlc_http_mgr*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.vlc_http_cookie_jar_t* %1, %struct.vlc_http_cookie_jar_t** %5, align 8
  %7 = call %struct.vlc_http_mgr* @malloc(i32 40)
  store %struct.vlc_http_mgr* %7, %struct.vlc_http_mgr** %6, align 8
  %8 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %9 = icmp eq %struct.vlc_http_mgr* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.vlc_http_mgr* null, %struct.vlc_http_mgr** %3, align 8
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %19 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %22 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %21, i32 0, i32 3
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %22, align 8
  %23 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %24 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.vlc_http_cookie_jar_t*, %struct.vlc_http_cookie_jar_t** %5, align 8
  %26 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %27 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %26, i32 0, i32 1
  store %struct.vlc_http_cookie_jar_t* %25, %struct.vlc_http_cookie_jar_t** %27, align 8
  %28 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %29 = getelementptr inbounds %struct.vlc_http_mgr, %struct.vlc_http_mgr* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  store %struct.vlc_http_mgr* %30, %struct.vlc_http_mgr** %3, align 8
  br label %31

31:                                               ; preds = %14, %13
  %32 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %3, align 8
  ret %struct.vlc_http_mgr* %32
}

declare dso_local %struct.vlc_http_mgr* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
