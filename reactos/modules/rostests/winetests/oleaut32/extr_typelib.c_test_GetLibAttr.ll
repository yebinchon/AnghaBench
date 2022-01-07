; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_GetLibAttr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_GetLibAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wszStdOle2 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"got %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetLibAttr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetLibAttr() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @wszStdOle2, align 4
  %7 = call i64 @LoadTypeLib(i32 %6, i32** %4)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %5, align 8
  %13 = call i32 (i32, i8*, i64, ...) @ok(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @ITypeLib_AddRef(i32* %14)
  store i64 %15, i64* %1, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ITypeLib_Release(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @ITypeLib_GetLibAttr(i32* %18, i32** %3)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = call i32 (i32, i8*, i64, ...) @ok(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @ITypeLib_AddRef(i32* %26)
  store i64 %27, i64* %2, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @ITypeLib_Release(i32* %28)
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* %1, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* %1, align 8
  %36 = call i32 (i32, i8*, i64, ...) @ok(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @ITypeLib_ReleaseTLibAttr(i32* %37, i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @ITypeLib_Release(i32* %40)
  ret void
}

declare dso_local i64 @LoadTypeLib(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @ITypeLib_AddRef(i32*) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

declare dso_local i64 @ITypeLib_GetLibAttr(i32*, i32**) #1

declare dso_local i32 @ITypeLib_ReleaseTLibAttr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
