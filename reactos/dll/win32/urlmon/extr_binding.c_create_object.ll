; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_binding.c_create_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_binding.c_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"MIME not available\0A\00", align 1
@BINDSTATUS_CLASSIDAVAILABLE = common dso_local global i32 0, align 4
@BINDSTATUS_BEGINSYNCOPERATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not find object for MIME %s\0A\00", align 1
@REGDB_E_CLASSNOTREG = common dso_local global i32 0, align 4
@BINDSTATUS_ENDSYNCOPERATION = common dso_local global i32 0, align 4
@CLSID_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @create_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_object(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @get_mime_clsid(i32 %15, i32* %4)
  store i32* %16, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BINDSTATUS_CLASSIDAVAILABLE, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @IBindStatusCallback_OnProgress(i32 %21, i32 0, i32 0, i32 %22, i32* %23)
  br label %25

25:                                               ; preds = %18, %12
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BINDSTATUS_BEGINSYNCOPERATION, align 4
  %30 = call i32 @IBindStatusCallback_OnProgress(i32 %28, i32 0, i32 0, i32 %29, i32* null)
  %31 = load i32*, i32** %3, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @create_mime_object(%struct.TYPE_7__* %34, i32* %4, i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @heap_free(i32* %37)
  br label %46

39:                                               ; preds = %25
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @debugstr_w(i32 %42)
  %44 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @REGDB_E_CLASSNOTREG, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BINDSTATUS_ENDSYNCOPERATION, align 4
  %51 = call i32 @IBindStatusCallback_OnProgress(i32 %49, i32 0, i32 0, i32 %50, i32* null)
  %52 = load i32, i32* @CLSID_NULL, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @stop_binding(%struct.TYPE_7__* %55, i32 %56, i32* null)
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %46
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = call i32 @IInternetProtocolEx_Terminate(i32* %65, i32 0)
  br label %67

67:                                               ; preds = %10, %61, %46
  ret void
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32* @get_mime_clsid(i32, i32*) #1

declare dso_local i32 @IBindStatusCallback_OnProgress(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @create_mime_object(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @stop_binding(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IInternetProtocolEx_Terminate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
