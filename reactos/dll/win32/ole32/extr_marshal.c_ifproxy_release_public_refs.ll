; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_ifproxy_release_public_refs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_ifproxy_release_public_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifproxy = type { %struct.TYPE_7__*, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@S_OK = common dso_local global %struct.ifproxy* null, align 8
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wait failed for ifproxy %p\0A\00", align 1
@E_UNEXPECTED = common dso_local global %struct.ifproxy* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"releasing %d refs\0A\00", align 1
@RPC_E_DISCONNECTED = common dso_local global %struct.ifproxy* null, align 8
@.str.2 = private unnamed_addr constant [82 x i8] c"couldn't release references because object was disconnected: oxid = %s, oid = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"IRemUnknown_RemRelease failed with error 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifproxy* (%struct.ifproxy*)* @ifproxy_release_public_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifproxy* @ifproxy_release_public_refs(%struct.ifproxy* %0) #0 {
  %2 = alloca %struct.ifproxy*, align 8
  %3 = alloca %struct.ifproxy*, align 8
  %4 = alloca %struct.ifproxy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  store %struct.ifproxy* %0, %struct.ifproxy** %3, align 8
  %8 = load %struct.ifproxy*, %struct.ifproxy** @S_OK, align 8
  store %struct.ifproxy* %8, %struct.ifproxy** %4, align 8
  %9 = load i64, i64* @WAIT_OBJECT_0, align 8
  %10 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %11 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INFINITE, align 4
  %16 = call i64 @WaitForSingleObject(i32 %14, i32 %15)
  %17 = icmp ne i64 %9, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %20 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.ifproxy* %19)
  %21 = load %struct.ifproxy*, %struct.ifproxy** @E_UNEXPECTED, align 8
  store %struct.ifproxy* %21, %struct.ifproxy** %2, align 8
  br label %92

22:                                               ; preds = %1
  %23 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %24 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %84

28:                                               ; preds = %22
  store i32* null, i32** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %32 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call %struct.ifproxy* @proxy_manager_get_remunknown(%struct.TYPE_7__* %33, i32** %6)
  store %struct.ifproxy* %34, %struct.ifproxy** %4, align 8
  %35 = load %struct.ifproxy*, %struct.ifproxy** %4, align 8
  %36 = load %struct.ifproxy*, %struct.ifproxy** @S_OK, align 8
  %37 = icmp eq %struct.ifproxy* %35, %36
  br i1 %37, label %38, label %83

38:                                               ; preds = %28
  %39 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %40 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call %struct.ifproxy* @IRemUnknown_RemRelease(i32* %47, i32 1, %struct.TYPE_6__* %7)
  store %struct.ifproxy* %48, %struct.ifproxy** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @IRemUnknown_Release(i32* %49)
  %51 = load %struct.ifproxy*, %struct.ifproxy** %4, align 8
  %52 = load %struct.ifproxy*, %struct.ifproxy** @S_OK, align 8
  %53 = icmp eq %struct.ifproxy* %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %38
  %55 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %56 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %55, i32 0, i32 1
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @InterlockedExchangeAdd(i32* %56, i32 %58)
  br label %82

60:                                               ; preds = %38
  %61 = load %struct.ifproxy*, %struct.ifproxy** %4, align 8
  %62 = load %struct.ifproxy*, %struct.ifproxy** @RPC_E_DISCONNECTED, align 8
  %63 = icmp eq %struct.ifproxy* %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %66 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wine_dbgstr_longlong(i32 %69)
  %71 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %72 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @wine_dbgstr_longlong(i32 %75)
  %77 = call i32 @WARN(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %76)
  br label %81

78:                                               ; preds = %60
  %79 = load %struct.ifproxy*, %struct.ifproxy** %4, align 8
  %80 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), %struct.ifproxy* %79)
  br label %81

81:                                               ; preds = %78, %64
  br label %82

82:                                               ; preds = %81, %54
  br label %83

83:                                               ; preds = %82, %28
  br label %84

84:                                               ; preds = %83, %22
  %85 = load %struct.ifproxy*, %struct.ifproxy** %3, align 8
  %86 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ReleaseMutex(i32 %89)
  %91 = load %struct.ifproxy*, %struct.ifproxy** %4, align 8
  store %struct.ifproxy* %91, %struct.ifproxy** %2, align 8
  br label %92

92:                                               ; preds = %84, %18
  %93 = load %struct.ifproxy*, %struct.ifproxy** %2, align 8
  ret %struct.ifproxy* %93
}

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @ERR(i8*, %struct.ifproxy*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local %struct.ifproxy* @proxy_manager_get_remunknown(%struct.TYPE_7__*, i32**) #1

declare dso_local %struct.ifproxy* @IRemUnknown_RemRelease(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @IRemUnknown_Release(i32*) #1

declare dso_local i32 @InterlockedExchangeAdd(i32*, i32) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @ReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
