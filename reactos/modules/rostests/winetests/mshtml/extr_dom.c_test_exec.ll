; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_exec.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IOleCommandTarget = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Could not get IOleCommandTarget interface: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Exec failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i32*)* @test_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_exec(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32** %11 to i8**
  %15 = call i64 @IUnknown_QueryInterface(i32* %13, i32* @IID_IOleCommandTarget, i8** %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @IOleCommandTarget_Exec(i32* %22, i32* %23, i32 %24, i32 0, i32* %25, i32* %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @IOleCommandTarget_Release(i32* %34)
  ret void
}

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IOleCommandTarget_Exec(i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @IOleCommandTarget_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
