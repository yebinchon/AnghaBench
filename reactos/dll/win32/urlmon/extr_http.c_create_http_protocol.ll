; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_http.c_create_http_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_http.c_create_http_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_13__*, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@AsyncProtocolVtbl = common dso_local global i32 0, align 4
@HttpProtocolUnkVtbl = common dso_local global i32 0, align 4
@HttpProtocolVtbl = common dso_local global i32 0, align 4
@HttpPriorityVtbl = common dso_local global i32 0, align 4
@WinInetHttpInfoVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__*, i8**)* @create_http_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_http_protocol(i32 %0, %struct.TYPE_13__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = call %struct.TYPE_14__* @heap_alloc_zero(i32 64)
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %8, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %11 = icmp ne %struct.TYPE_14__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %4, align 4
  br label %52

14:                                               ; preds = %3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32* @AsyncProtocolVtbl, i32** %17, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32* @HttpProtocolUnkVtbl, i32** %20, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32* @HttpProtocolVtbl, i32** %23, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32* @HttpPriorityVtbl, i32** %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i32* @WinInetHttpInfoVtbl, i32** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = icmp ne %struct.TYPE_13__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %14
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  br label %42

39:                                               ; preds = %14
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi %struct.TYPE_13__* [ %38, %37 ], [ %41, %39 ]
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = bitcast %struct.TYPE_13__* %47 to i8*
  %49 = load i8**, i8*** %7, align 8
  store i8* %48, i8** %49, align 8
  %50 = call i32 (...) @URLMON_LockModule()
  %51 = load i32, i32* @S_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %12
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_14__* @heap_alloc_zero(i32) #1

declare dso_local i32 @URLMON_LockModule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
