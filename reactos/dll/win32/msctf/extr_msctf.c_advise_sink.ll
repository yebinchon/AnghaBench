; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_msctf.c_advise_sink.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_msctf.c_advise_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@CONNECT_E_CANNOTCONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cookie %x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @advise_sink(%struct.list* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.list* %0, %struct.list** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = call i32 (...) @GetProcessHeap()
  %14 = call %struct.TYPE_7__* @HeapAlloc(i32 %13, i32 0, i32 8)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %18, i32* %6, align 4
  br label %47

19:                                               ; preds = %5
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to i8**
  %26 = call i32 @IUnknown_QueryInterface(i32* %20, i32 %21, i8** %25)
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %32 = call i32 @HeapFree(i32 %30, i32 0, %struct.TYPE_7__* %31)
  %33 = load i32, i32* @CONNECT_E_CANNOTCONNECT, align 4
  store i32 %33, i32* %6, align 4
  br label %47

34:                                               ; preds = %19
  %35 = load %struct.list*, %struct.list** %7, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @list_add_head(%struct.list* %35, i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %41 = call i32 @generate_Cookie(i32 %39, %struct.TYPE_7__* %40)
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %34, %29, %17
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32, i8**) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @list_add_head(%struct.list*, i32*) #1

declare dso_local i32 @generate_Cookie(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
