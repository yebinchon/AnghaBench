; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/tokentest/extr_tokentest.c_EnablePrivilege.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/tokentest/extr_tokentest.c_EnablePrivilege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@__const.EnablePrivilege.priv = private unnamed_addr constant %struct.TYPE_11__ { i32 1, %struct.TYPE_10__* null, %struct.TYPE_7__ zeroinitializer }, align 8
@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EnablePrivilege(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_11__* @__const.EnablePrivilege.priv to i8*), i64 32, i1 false)
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = call i32 @LookupPrivilegeValue(i32 0, i32 %7, i32* %11)
  %13 = call i32 (...) @GetCurrentProcess()
  %14 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %15 = call i32 @OpenProcessToken(i32 %13, i32 %14, i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32 @AdjustTokenPrivileges(i32 %16, i32 %17, %struct.TYPE_11__* %4, i32 32, i32 0, i32 0)
  %19 = call i64 (...) @GetLastError()
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @CloseHandle(i32 %23)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LookupPrivilegeValue(i32, i32, i32*) #2

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #2

declare dso_local i32 @GetCurrentProcess(...) #2

declare dso_local i32 @AdjustTokenPrivileges(i32, i32, %struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @CloseHandle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
