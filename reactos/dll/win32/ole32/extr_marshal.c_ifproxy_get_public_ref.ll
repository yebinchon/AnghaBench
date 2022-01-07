; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_ifproxy_get_public_ref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_ifproxy_get_public_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifproxy = type { i64, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@S_OK = common dso_local global i64 0, align 8
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wait failed for ifproxy %p\0A\00", align 1
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"getting public ref for ifproxy %p\0A\00", align 1
@NORMALEXTREFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"IRemUnknown_RemAddRef returned with 0x%08x, hrref = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ifproxy*)* @ifproxy_get_public_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ifproxy_get_public_ref(%struct.ifproxy* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ifproxy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  store %struct.ifproxy* %0, %struct.ifproxy** %3, align 8
  %8 = load i64, i64* @S_OK, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @WAIT_OBJECT_0, align 8
  %10 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %11 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INFINITE, align 4
  %16 = call i64 @WaitForSingleObject(i32 %14, i32 %15)
  %17 = icmp ne i64 %9, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %20 = ptrtoint %struct.ifproxy* %19 to i64
  %21 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* @E_UNEXPECTED, align 8
  store i64 %22, i64* %2, align 8
  br label %79

23:                                               ; preds = %1
  %24 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %25 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %23
  store i32* null, i32** %5, align 8
  %29 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.ifproxy* %29)
  %31 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %32 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i64 @proxy_manager_get_remunknown(%struct.TYPE_7__* %33, i32** %5)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %28
  %39 = load i64, i64* @S_OK, align 8
  store i64 %39, i64* %6, align 8
  %40 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %41 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @NORMALEXTREFS, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @IRemUnknown_RemAddRef(i32* %48, i32 1, %struct.TYPE_6__* %7, i64* %6)
  store i64 %49, i64* %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @IRemUnknown_Release(i32* %50)
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %38
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %61 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %60, i32 0, i32 0
  %62 = bitcast i64* %61 to i32*
  %63 = load i32, i32* @NORMALEXTREFS, align 4
  %64 = call i32 @InterlockedExchangeAdd(i32* %62, i32 %63)
  br label %69

65:                                               ; preds = %55, %38
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %69, %28
  br label %71

71:                                               ; preds = %70, %23
  %72 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %73 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ReleaseMutex(i32 %76)
  %78 = load i64, i64* %4, align 8
  store i64 %78, i64* %2, align 8
  br label %79

79:                                               ; preds = %71, %18
  %80 = load i64, i64* %2, align 8
  ret i64 %80
}

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i32 @TRACE(i8*, %struct.ifproxy*) #1

declare dso_local i64 @proxy_manager_get_remunknown(%struct.TYPE_7__*, i32**) #1

declare dso_local i64 @IRemUnknown_RemAddRef(i32*, i32, %struct.TYPE_6__*, i64*) #1

declare dso_local i32 @IRemUnknown_Release(i32*) #1

declare dso_local i32 @InterlockedExchangeAdd(i32*, i32) #1

declare dso_local i32 @ReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
