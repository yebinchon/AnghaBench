; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_get_local_server_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_get_local_server_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32* }

@S_OK = common dso_local global i32 0, align 4
@LocalServerVtbl = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IID_IServiceProvider = common dso_local global i32 0, align 4
@MSHCTX_LOCAL = common dso_local global i32 0, align 4
@MSHLFLAGS_TABLESTRONG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32**)* @get_local_server_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_local_server_stream(%struct.TYPE_9__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32** %1, i32*** %4, align 8
  %7 = load i32, i32* @S_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = call i32 @EnterCriticalSection(i32* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %69, label %15

15:                                               ; preds = %2
  %16 = call %struct.TYPE_8__* @heap_alloc(i32 24)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32* @LocalServerVtbl, i32** %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %27, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = call i32 @CreateStreamOnHGlobal(i32 0, i32 %28, i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @SUCCEEDED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %19
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = bitcast %struct.TYPE_7__* %40 to i32*
  %42 = load i32, i32* @MSHCTX_LOCAL, align 4
  %43 = load i32, i32* @MSHLFLAGS_TABLESTRONG, align 4
  %44 = call i32 @CoMarshalInterface(i32 %38, i32* @IID_IServiceProvider, i32* %41, i32 %42, i32* null, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IStream_Release(i32 %51)
  br label %53

53:                                               ; preds = %48, %35
  br label %54

54:                                               ; preds = %53, %19
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @SUCCEEDED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %61, align 8
  br label %65

62:                                               ; preds = %54
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = call i32 @heap_free(%struct.TYPE_8__* %63)
  br label %65

65:                                               ; preds = %62, %58
  br label %68

66:                                               ; preds = %15
  %67 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %65
  br label %69

69:                                               ; preds = %68, %2
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @SUCCEEDED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32**, i32*** %4, align 8
  %80 = call i32 @IStream_Clone(i32 %78, i32** %79)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %73, %69
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = call i32 @LeaveCriticalSection(i32* %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @FAILED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %81
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local %struct.TYPE_8__* @heap_alloc(i32) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @CoMarshalInterface(i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IStream_Release(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_8__*) #1

declare dso_local i32 @IStream_Clone(i32, i32**) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
