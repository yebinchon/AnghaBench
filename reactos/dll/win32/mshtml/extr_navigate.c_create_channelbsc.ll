; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_create_channelbsc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_create_channelbsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@BINDF_ASYNCHRONOUS = common dso_local global i32 0, align 4
@BINDF_ASYNCSTORAGE = common dso_local global i32 0, align 4
@BINDF_PULLDATA = common dso_local global i32 0, align 4
@BINDF_FORMS_SUBMIT = common dso_local global i32 0, align 4
@BINDF_PRAGMA_NO_CACHE = common dso_local global i32 0, align 4
@BINDF_HYPERLINK = common dso_local global i32 0, align 4
@BINDF_GETNEWESTVERSION = common dso_local global i32 0, align 4
@nsChannelBSCVtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"created %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_channelbsc(i32* %0, i32* %1, i64* %2, i32 %3, i32 %4, %struct.TYPE_7__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__**, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_7__** %5, %struct.TYPE_7__*** %13, align 8
  %16 = call %struct.TYPE_7__* @heap_alloc_zero(i32 40)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %14, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %20, i32* %7, align 4
  br label %126

21:                                               ; preds = %6
  %22 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %23 = load i32, i32* @BINDF_ASYNCSTORAGE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BINDF_PULLDATA, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load i32, i32* @BINDF_FORMS_SUBMIT, align 4
  %31 = load i32, i32* @BINDF_PRAGMA_NO_CACHE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BINDF_HYPERLINK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BINDF_GETNEWESTVERSION, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %15, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %29, %21
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @init_bscallback(%struct.TYPE_9__* %41, i32* @nsChannelBSCVtbl, i32* %42, i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %39
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @heap_strdupW(i32* %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i32 %52, i32* %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %50
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = call i32 @IBindStatusCallback_Release(i32* %66)
  %68 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %68, i32* %7, align 4
  br label %126

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %39
  %71 = load i64*, i64** %10, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %120

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i64 @GlobalAlloc(i32 0, i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i64 %76, i64* %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %73
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = call i32 @release_request_data(%struct.TYPE_8__* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = call i32 @IBindStatusCallback_Release(i32* %94)
  %96 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %96, i32* %7, align 4
  br label %126

97:                                               ; preds = %73
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @memcpy(i64 %102, i64* %103, i32 %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i64*
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 8
  br label %120

120:                                              ; preds = %97, %70
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %122 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %124 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %124, align 8
  %125 = load i32, i32* @S_OK, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %120, %87, %63, %19
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_7__* @heap_alloc_zero(i32) #1

declare dso_local i32 @init_bscallback(%struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @heap_strdupW(i32*) #1

declare dso_local i32 @IBindStatusCallback_Release(i32*) #1

declare dso_local i64 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @release_request_data(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i64, i64*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
