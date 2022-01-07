; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_CreateWindowEx.c_IsWindowsServer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_CreateWindowEx.c_IsWindowsServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@VER_NT_WORKSTATION = common dso_local global i32 0, align 4
@VER_PRODUCT_TYPE = common dso_local global i32 0, align 4
@VER_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @IsWindowsServer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsWindowsServer() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32, align 4
  %3 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 40, i1 false)
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 40, i32* %4, align 4
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 9
  %6 = load i32, i32* @VER_NT_WORKSTATION, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @VER_PRODUCT_TYPE, align 4
  %8 = load i32, i32* @VER_EQUAL, align 4
  %9 = call i32 @VerSetConditionMask(i32 0, i32 %7, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @VER_PRODUCT_TYPE, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @VerifyVersionInfoW(%struct.TYPE_5__* %1, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VerSetConditionMask(i32, i32, i32) #2

declare dso_local i32 @VerifyVersionInfoW(%struct.TYPE_5__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
