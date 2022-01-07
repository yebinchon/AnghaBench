; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_do_redirect.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_do_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i8* }

@NGX_HTTP_SERVICE_UNAVAILABLE = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @ngx_http_sysguard_do_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_sysguard_do_redirect(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @NGX_HTTP_SERVICE_UNAVAILABLE, align 4
  store i32 %11, i32* %3, align 4
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 64
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = call i32 @ngx_http_named_location(%struct.TYPE_11__* %21, %struct.TYPE_10__* %22)
  br label %30

24:                                               ; preds = %12
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = call i32 @ngx_http_internal_redirect(%struct.TYPE_11__* %25, %struct.TYPE_10__* %26, i32* %28)
  br label %30

30:                                               ; preds = %24, %20
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = load i32, i32* @NGX_DONE, align 4
  %34 = call i32 @ngx_http_finalize_request(%struct.TYPE_11__* %32, i32 %33)
  %35 = load i32, i32* @NGX_DONE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ngx_http_named_location(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @ngx_http_internal_redirect(%struct.TYPE_11__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
