; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_realip_module.c_ngx_http_realip_remote_port_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_realip_module.c_ngx_http_realip_remote_port_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32*, i64, i64 }
%struct.TYPE_12__ = type { %struct.sockaddr* }

@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ui\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i64)* @ngx_http_realip_remote_port_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_realip_remote_port_variable(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = call %struct.TYPE_12__* @ngx_http_realip_get_module_ctx(%struct.TYPE_11__* %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %10, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.sockaddr*, %struct.sockaddr** %23, align 8
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi %struct.sockaddr* [ %18, %15 ], [ %24, %19 ]
  store %struct.sockaddr* %26, %struct.sockaddr** %9, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @ngx_pnalloc(i32 %37, i32 5)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %25
  %46 = load i32, i32* @NGX_ERROR, align 4
  store i32 %46, i32* %4, align 4
  br label %73

47:                                               ; preds = %25
  %48 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %49 = call i32 @ngx_inet_get_port(%struct.sockaddr* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 65536
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32* @ngx_sprintf(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = ptrtoint i32* %60 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %55, %52, %47
  %72 = load i32, i32* @NGX_OK, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %45
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_12__* @ngx_http_realip_get_module_ctx(%struct.TYPE_11__*) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_inet_get_port(%struct.sockaddr*) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
