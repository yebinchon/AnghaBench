; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cstub.c_CStdStubBuffer_Delegating_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cstub.c_CStdStubBuffer_Delegating_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [18 x i8] c"(%p,%p,%p,%p) %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"iid=%s delegating to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"vtbl=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"IID mismatch during stub creation\0A\00", align 1
@RPC_E_UNEXPECTED = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CStdStubBuffer_Delegating_Construct(i32 %0, i32 %1, i32 %2, %struct.TYPE_11__* %3, i32 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i64*, i64** %15, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %21, %struct.TYPE_11__* %22, i32 %23, i64* %24, i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @debugstr_guid(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @debugstr_guid(i32 %34)
  %36 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %33, i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @IsEqualGUID(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %7
  %48 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @RPC_E_UNEXPECTED, align 4
  store i32 %49, i32* %8, align 4
  br label %122

50:                                               ; preds = %7
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = bitcast i32** %17 to i8**
  %54 = call i32 @IUnknown_QueryInterface(i32 %51, i32 %52, i8** %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call i64 @FAILED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %8, align 4
  br label %122

60:                                               ; preds = %50
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %63 = call %struct.TYPE_10__* @HeapAlloc(i32 %61, i32 %62, i32 32)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %16, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i32*, i32** %17, align 8
  %68 = call i32 @IUnknown_Release(i32* %67)
  %69 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %69, i32* %8, align 4
  br label %122

70:                                               ; preds = %60
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @get_delegating_vtbl(i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = call i32 @create_stub(i32 %78, i32* %80, i32* %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i64 @FAILED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %70
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @release_delegating_vtbl(i32 %90)
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %94 = call i32 @HeapFree(i32 %92, i32 0, %struct.TYPE_10__* %93)
  %95 = load i32*, i32** %17, align 8
  %96 = call i32 @IUnknown_Release(i32* %95)
  %97 = load i32, i32* %18, align 4
  store i32 %97, i32* %8, align 4
  br label %122

98:                                               ; preds = %70
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  store i32* %100, i32** %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  store i32* %107, i32** %110, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = ptrtoint %struct.TYPE_9__* %116 to i64
  %118 = load i64*, i64** %15, align 8
  store i64 %117, i64* %118, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @IPSFactoryBuffer_AddRef(i32 %119)
  %121 = load i32, i32* @S_OK, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %98, %87, %66, %58, %47
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i32 @TRACE(i8*, i32*, ...) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i32 @IsEqualGUID(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @IUnknown_QueryInterface(i32, i32, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_10__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @get_delegating_vtbl(i32) #1

declare dso_local i32 @create_stub(i32, i32*, i32*) #1

declare dso_local i32 @release_delegating_vtbl(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @IPSFactoryBuffer_AddRef(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
