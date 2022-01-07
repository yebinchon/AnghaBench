; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_destroy_msg.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_destroy_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @ngx_dyups_destroy_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_dyups_destroy_msg(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call i32 @ngx_slab_free_locked(i32* %10, %struct.TYPE_8__* %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i32 @ngx_slab_free_locked(i32* %22, %struct.TYPE_8__* %26)
  br label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @ngx_slab_free_locked(i32* %35, %struct.TYPE_8__* %39)
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = call i32 @ngx_slab_free_locked(i32* %42, %struct.TYPE_8__* %43)
  ret void
}

declare dso_local i32 @ngx_slab_free_locked(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
