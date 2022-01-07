; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_mxnamespace.c_MXNamespaceManager_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_mxnamespace.c_MXNamespaceManager_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.nscontext = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@MXNamespaceManagerVtbl = common dso_local global i32 0, align 4
@VBMXNamespaceManagerVtbl = common dso_local global i32 0, align 4
@namespacemanager_dispex = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"returning iface %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MXNamespaceManager_create(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.nscontext*, align 8
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = bitcast i8** %6 to i8*
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = call %struct.TYPE_8__* @heap_alloc(i32 40)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32* @MXNamespaceManagerVtbl, i32** %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32* @VBMXNamespaceManagerVtbl, i32** %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = bitcast %struct.TYPE_6__* %26 to i32*
  %28 = call i32 @init_dispex(i32* %24, i32* %27, i32* @namespacemanager_dispex)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = call i32 @list_init(i32* %30)
  %32 = call %struct.nscontext* (...) @alloc_ns_context()
  store %struct.nscontext* %32, %struct.nscontext** %5, align 8
  %33 = load %struct.nscontext*, %struct.nscontext** %5, align 8
  %34 = icmp ne %struct.nscontext* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %14
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = call i32 @heap_free(%struct.TYPE_8__* %36)
  %38 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %14
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load %struct.nscontext*, %struct.nscontext** %5, align 8
  %43 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %42, i32 0, i32 0
  %44 = call i32 @list_add_head(i32* %41, i32* %43)
  %45 = load i32, i32* @VARIANT_TRUE, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = bitcast %struct.TYPE_7__* %49 to i8*
  %51 = load i8**, i8*** %3, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i8**, i8*** %3, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @S_OK, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %39, %35, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @heap_alloc(i32) #1

declare dso_local i32 @init_dispex(i32*, i32*, i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local %struct.nscontext* @alloc_ns_context(...) #1

declare dso_local i32 @heap_free(%struct.TYPE_8__*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
