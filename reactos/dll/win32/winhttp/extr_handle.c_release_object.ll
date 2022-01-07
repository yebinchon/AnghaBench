; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_handle.c_release_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_handle.c_release_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)* }

@.str = private unnamed_addr constant [25 x i8] c"object %p refcount = %d\0A\00", align 1
@WINHTTP_HANDLE_TYPE_REQUEST = common dso_local global i64 0, align 8
@WINHTTP_CALLBACK_STATUS_HANDLE_CLOSING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"destroying object %p\0A\00", align 1
@WINHTTP_HANDLE_TYPE_SESSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_object(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 4
  %6 = call i32 @InterlockedDecrement(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i8*, %struct.TYPE_8__*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WINHTTP_HANDLE_TYPE_REQUEST, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = bitcast %struct.TYPE_8__* %19 to i32*
  %21 = call i32 @close_connection(i32* %20)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = load i32, i32* @WINHTTP_CALLBACK_STATUS_HANDLE_CLOSING, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = call i32 @send_callback(%struct.TYPE_8__* %23, i32 %24, i32* %26, i32 4)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = call i32 (i8*, %struct.TYPE_8__*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WINHTTP_HANDLE_TYPE_SESSION, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = call i32 @list_remove(i32* %37)
  br label %39

39:                                               ; preds = %35, %22
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = call i32 %44(%struct.TYPE_8__* %45)
  br label %47

47:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*, ...) #1

declare dso_local i32 @close_connection(i32*) #1

declare dso_local i32 @send_callback(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i32 @list_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
