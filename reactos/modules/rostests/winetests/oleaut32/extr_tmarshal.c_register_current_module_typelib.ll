; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_tmarshal.c_register_current_module_typelib.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_tmarshal.c_register_current_module_typelib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @register_current_module_typelib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_current_module_typelib() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = call i32 @GetModuleFileNameA(i32* null, i32* %12, i32 %13)
  %15 = load i32, i32* @CP_ACP, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = call i32 @MultiByteToWideChar(i32 %15, i32 0, i32* %12, i32 -1, i32* %9, i32 %16)
  %18 = call i32 @LoadTypeLib(i32* %9, i32** %5)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @SUCCEEDED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %0
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @RegisterTypeLib(i32* %23, i32* %9, i32* null)
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ITypeLib_Release(i32* %25)
  br label %27

27:                                               ; preds = %22, %0
  %28 = load i32, i32* %4, align 4
  %29 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %29)
  ret i32 %28
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleFileNameA(i32*, i32*, i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @LoadTypeLib(i32*, i32**) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @RegisterTypeLib(i32*, i32*, i32*) #2

declare dso_local i32 @ITypeLib_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
