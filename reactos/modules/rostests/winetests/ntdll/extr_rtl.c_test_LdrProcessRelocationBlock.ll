; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_LdrProcessRelocationBlock.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_LdrProcessRelocationBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IMAGE_REL_BASED_HIGHLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ret = %p, expected %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"addr32 = %x, expected 0x550055\0A\00", align 1
@IMAGE_REL_BASED_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"addr16 = %x, expected 0x555\0A\00", align 1
@IMAGE_REL_BASED_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"addr16 = %x, expected 0x565\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LdrProcessRelocationBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LdrProcessRelocationBlock() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 327685, i32* %3, align 4
  %5 = load i32, i32* @IMAGE_REL_BASED_HIGHLOW, align 4
  %6 = shl i32 %5, 12
  store i32 %6, i32* %2, align 4
  %7 = call i32* @pLdrProcessRelocationBlock(i32* %3, i32 1, i32* %2, i32 5242960)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = getelementptr inbounds i32, i32* %2, i64 1
  %10 = icmp eq i32* %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32*, i32** %1, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = getelementptr inbounds i32, i32* %2, i64 1
  %15 = call i32 (i32, i8*, i32, ...) @ok(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, i32* %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 5570645
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, i32, ...) @ok(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 1285, i32* %4, align 4
  %21 = load i32, i32* @IMAGE_REL_BASED_HIGH, align 4
  %22 = shl i32 %21, 12
  store i32 %22, i32* %2, align 4
  %23 = call i32* @pLdrProcessRelocationBlock(i32* %4, i32 1, i32* %2, i32 5242976)
  store i32* %23, i32** %1, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = getelementptr inbounds i32, i32* %2, i64 1
  %26 = icmp eq i32* %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32*, i32** %1, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = getelementptr inbounds i32, i32* %2, i64 1
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29, i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 1365
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 1285, i32* %4, align 4
  %37 = load i32, i32* @IMAGE_REL_BASED_LOW, align 4
  %38 = shl i32 %37, 12
  store i32 %38, i32* %2, align 4
  %39 = call i32* @pLdrProcessRelocationBlock(i32* %4, i32 1, i32* %2, i32 5242976)
  store i32* %39, i32** %1, align 8
  %40 = load i32*, i32** %1, align 8
  %41 = getelementptr inbounds i32, i32* %2, i64 1
  %42 = icmp eq i32* %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %1, align 8
  %45 = ptrtoint i32* %44 to i32
  %46 = getelementptr inbounds i32, i32* %2, i64 1
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45, i32* %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 1381
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, i8*, i32, ...) @ok(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  ret void
}

declare dso_local i32* @pLdrProcessRelocationBlock(i32*, i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
