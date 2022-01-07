; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_CreateWindowEx.c_IsWindows8OrGreater.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_CreateWindowEx.c_IsWindows8OrGreater.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@VER_MAJORVERSION = common dso_local global i32 0, align 4
@VER_GREATER_EQUAL = common dso_local global i32 0, align 4
@VER_MINORVERSION = common dso_local global i32 0, align 4
@VER_SERVICEPACKMAJOR = common dso_local global i32 0, align 4
@_WIN32_WINNT_WIN8 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @IsWindows8OrGreater to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsWindows8OrGreater() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32, align 4
  %3 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 40, i1 false)
  %4 = bitcast i8* %3 to %struct.TYPE_5__*
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 40, i32* %5, align 4
  %6 = load i32, i32* @VER_MAJORVERSION, align 4
  %7 = load i32, i32* @VER_GREATER_EQUAL, align 4
  %8 = call i32 @VerSetConditionMask(i32 0, i32 %6, i32 %7)
  %9 = load i32, i32* @VER_MINORVERSION, align 4
  %10 = load i32, i32* @VER_GREATER_EQUAL, align 4
  %11 = call i32 @VerSetConditionMask(i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* @VER_SERVICEPACKMAJOR, align 4
  %13 = load i32, i32* @VER_GREATER_EQUAL, align 4
  %14 = call i32 @VerSetConditionMask(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @_WIN32_WINNT_WIN8, align 4
  %16 = call i32 @HIBYTE(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @_WIN32_WINNT_WIN8, align 4
  %19 = call i32 @LOBYTE(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @VER_MAJORVERSION, align 4
  %22 = load i32, i32* @VER_MINORVERSION, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VER_SERVICEPACKMAJOR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @VerifyVersionInfoW(%struct.TYPE_5__* %1, i32 %25, i32 %26)
  %28 = load i64, i64* @FALSE, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VerSetConditionMask(i32, i32, i32) #2

declare dso_local i32 @HIBYTE(i32) #2

declare dso_local i32 @LOBYTE(i32) #2

declare dso_local i64 @VerifyVersionInfoW(%struct.TYPE_5__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
