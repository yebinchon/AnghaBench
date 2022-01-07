; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/usp10/extr_usp10.c_test_ScriptItemize_surrogates.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/usp10/extr_usp10.c_test_ScriptItemize_surrogates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@SCRIPT_UNDEFINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"got script %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ScriptItemize_surrogates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ScriptItemize_surrogates() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x %struct.TYPE_5__], align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 55296, i32* %6, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %8 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %9 = call i32 @ScriptItemize(i32* %7, i32 1, i32 2, i32* null, i32* null, %struct.TYPE_5__* %8, i32* %5)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @S_OK, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SCRIPT_UNDEFINED, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %38 = call i32 @make_surrogate(i32 131071, i32* %37)
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %40 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %41 = call i32 @ScriptItemize(i32* %39, i32 2, i32 2, i32* null, i32* null, %struct.TYPE_5__* %40, i32* %5)
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @S_OK, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  ret void
}

declare dso_local i32 @ScriptItemize(i32*, i32, i32, i32*, i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @make_surrogate(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
