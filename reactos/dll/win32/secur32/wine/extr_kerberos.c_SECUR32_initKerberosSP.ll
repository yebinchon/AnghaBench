; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/secur32/wine/extr_kerberos.c_SECUR32_initKerberosSP.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/secur32/wine/extr_kerberos.c_SECUR32_initKerberosSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kerberosTableA = common dso_local global i32 0, align 4
@kerberosTableW = common dso_local global i32 0, align 4
@infoA = common dso_local global i32 0, align 4
@infoW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SECUR32_initKerberosSP() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @SECUR32_addProvider(i32* @kerberosTableA, i32* @kerberosTableW, i32* null)
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = call i32 @SECUR32_addPackages(i32* %3, i32 1, i32* @infoA, i32* @infoW)
  ret void
}

declare dso_local i32* @SECUR32_addProvider(i32*, i32*, i32*) #1

declare dso_local i32 @SECUR32_addPackages(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
