; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_binding.c_bind_to_storage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_binding.c_bind_to_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_11__*, i32, i8**)* }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@BEFORE_DOWNLOAD = common dso_local global i64 0, align 8
@BINDING_STOPPED = common dso_local global i32 0, align 4
@BINDING_LOCKED = common dso_local global i32 0, align 4
@BINDF_ASYNCHRONOUS = common dso_local global i32 0, align 4
@MK_S_ASYNCHRONOUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bind_to_storage(i32* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.TYPE_10__* @get_bctx_binding(i32* %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %11, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @start_binding(i32* null, %struct.TYPE_10__* %15, i32* %16, i32* %17, i32 %18, i32 %19, %struct.TYPE_10__** %10)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = call i32 @IBinding_Release(i32* %25)
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @FAILED(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %12, align 8
  store i64 %32, i64* %5, align 8
  br label %110

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BEFORE_DOWNLOAD, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %39
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BINDING_STOPPED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BINDING_LOCKED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = call i32 @IInternetProtocolEx_UnlockRequest(i32* %63)
  br label %65

65:                                               ; preds = %59, %52, %45
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64 (%struct.TYPE_11__*, i32, i8**)*, i64 (%struct.TYPE_11__*, i32, i8**)** %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i8**, i8*** %9, align 8
  %80 = call i64 %72(%struct.TYPE_11__* %75, i32 %78, i8** %79)
  store i64 %80, i64* %12, align 8
  br label %105

81:                                               ; preds = %39, %33
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i64, i64* @MK_S_ASYNCHRONOUS, align 8
  store i64 %89, i64* %12, align 8
  br label %104

90:                                               ; preds = %81
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @FAILED(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  br label %102

100:                                              ; preds = %90
  %101 = load i64, i64* @S_OK, align 8
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i64 [ %99, %96 ], [ %101, %100 ]
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %102, %88
  br label %105

105:                                              ; preds = %104, %65
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = call i32 @IBinding_Release(i32* %107)
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %105, %31
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local %struct.TYPE_10__* @get_bctx_binding(i32*) #1

declare dso_local i64 @start_binding(i32*, %struct.TYPE_10__*, i32*, i32*, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @IBinding_Release(i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @IInternetProtocolEx_UnlockRequest(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
