; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_peer_set_addr.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_peer_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_peer_set_addr(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @NGX_ERROR, align 4
  store i32 %13, i32* %4, align 4
  br label %59

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.sockaddr_in* @ngx_pcalloc(i32* %15, i32 12)
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %8, align 8
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %18 = icmp eq %struct.sockaddr_in* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @NGX_ERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %14
  %22 = load i32, i32* @AF_INET, align 4
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @htons(i32 %27)
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %9, align 8
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %40 = bitcast %struct.sockaddr_in* %39 to %struct.sockaddr*
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store %struct.sockaddr* %40, %struct.sockaddr** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 12, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @inet_ntoa(i32 %51)
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohs(i32 %55)
  %57 = call i32 @ngx_sprintf(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %56)
  %58 = load i32, i32* @NGX_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %21, %19, %12
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.sockaddr_in* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ngx_sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
