; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_ftp.c_FtpProtocol_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_ftp.c_FtpProtocol_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"(%p %p)\0A\00", align 1
@AsyncProtocolVtbl = common dso_local global i32 0, align 4
@FtpProtocolUnkVtbl = common dso_local global i32 0, align 4
@FtpProtocolVtbl = common dso_local global i32 0, align 4
@FtpPriorityVtbl = common dso_local global i32 0, align 4
@WinInetHttpInfoVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FtpProtocol_Construct(%struct.TYPE_14__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %6, i8** %7)
  %9 = call i32 (...) @URLMON_LockModule()
  %10 = call %struct.TYPE_15__* @heap_alloc_zero(i32 56)
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32* @AsyncProtocolVtbl, i32** %13, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i32* @FtpProtocolUnkVtbl, i32** %16, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32* @FtpProtocolVtbl, i32** %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store i32* @FtpPriorityVtbl, i32** %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store i32* @WinInetHttpInfoVtbl, i32** %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi %struct.TYPE_14__* [ %31, %30 ], [ %34, %32 ]
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = bitcast %struct.TYPE_14__* %40 to i8*
  %42 = load i8**, i8*** %4, align 8
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* @S_OK, align 4
  ret i32 %43
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_14__*, i8**) #1

declare dso_local i32 @URLMON_LockModule(...) #1

declare dso_local %struct.TYPE_15__* @heap_alloc_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
