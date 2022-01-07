; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlCompareMemoryUlong.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlCompareMemoryUlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 0, 0x0123) returns %u, expected 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 3, 0x0123) returns %u, expected 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 4, 0x0123) returns %u, expected 4\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 5, 0x0123) returns %u, expected 4\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 7, 0x0123) returns %u, expected 4\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 8, 0x0123) returns %u, expected 4\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 9, 0x0123) returns %u, expected 4\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 4, 0x0127) returns %u, expected 0\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 4, 0x7123) returns %u, expected 0\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"RtlCompareMemoryUlong(%p, 16, 0x4567) returns %u, expected 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 8, 0x0123) returns %u, expected 8\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"RtlCompareMemoryUlong(%p, 9, 0x0123) returns %u, expected 8\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlCompareMemoryUlong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlCompareMemoryUlong() #0 {
  %1 = alloca [10 x i32], align 16
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  store i32 291, i32* %3, align 16
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 1
  store i32 17767, i32* %4, align 4
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 2
  store i32 35243, i32* %5, align 8
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  store i32 52719, i32* %6, align 4
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %8 = call i32 @pRtlCompareMemoryUlong(i32* %7, i32 0, i32 291)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32* %12, i32 %13)
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %16 = call i32 @pRtlCompareMemoryUlong(i32* %15, i32 3, i32 291)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %20, i32 %21)
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %24 = call i32 @pRtlCompareMemoryUlong(i32* %23, i32 4, i32 291)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, 4
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32* %28, i32 %29)
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %32 = call i32 @pRtlCompareMemoryUlong(i32* %31, i32 5, i32 291)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp eq i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32* %36, i32 %37)
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %40 = call i32 @pRtlCompareMemoryUlong(i32* %39, i32 7, i32 291)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 4
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32* %44, i32 %45)
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %48 = call i32 @pRtlCompareMemoryUlong(i32* %47, i32 8, i32 291)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, 4
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32* %52, i32 %53)
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %56 = call i32 @pRtlCompareMemoryUlong(i32* %55, i32 9, i32 291)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, 4
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32* %60, i32 %61)
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %64 = call i32 @pRtlCompareMemoryUlong(i32* %63, i32 4, i32 295)
  store i32 %64, i32* %2, align 4
  %65 = load i32, i32* %2, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32* %68, i32 %69)
  %71 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %72 = call i32 @pRtlCompareMemoryUlong(i32* %71, i32 4, i32 28963)
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %2, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32* %76, i32 %77)
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %80 = call i32 @pRtlCompareMemoryUlong(i32* %79, i32 16, i32 17767)
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32* %84, i32 %85)
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 1
  store i32 291, i32* %87, align 4
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %89 = call i32 @pRtlCompareMemoryUlong(i32* %88, i32 3, i32 291)
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %93, i32 %94)
  %96 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %97 = call i32 @pRtlCompareMemoryUlong(i32* %96, i32 4, i32 291)
  store i32 %97, i32* %2, align 4
  %98 = load i32, i32* %2, align 4
  %99 = icmp eq i32 %98, 4
  %100 = zext i1 %99 to i32
  %101 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %102 = load i32, i32* %2, align 4
  %103 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32* %101, i32 %102)
  %104 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %105 = call i32 @pRtlCompareMemoryUlong(i32* %104, i32 5, i32 291)
  store i32 %105, i32* %2, align 4
  %106 = load i32, i32* %2, align 4
  %107 = icmp eq i32 %106, 4
  %108 = zext i1 %107 to i32
  %109 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32* %109, i32 %110)
  %112 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %113 = call i32 @pRtlCompareMemoryUlong(i32* %112, i32 7, i32 291)
  store i32 %113, i32* %2, align 4
  %114 = load i32, i32* %2, align 4
  %115 = icmp eq i32 %114, 4
  %116 = zext i1 %115 to i32
  %117 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32* %117, i32 %118)
  %120 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %121 = call i32 @pRtlCompareMemoryUlong(i32* %120, i32 8, i32 291)
  store i32 %121, i32* %2, align 4
  %122 = load i32, i32* %2, align 4
  %123 = icmp eq i32 %122, 8
  %124 = zext i1 %123 to i32
  %125 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @ok(i32 %124, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32* %125, i32 %126)
  %128 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %129 = call i32 @pRtlCompareMemoryUlong(i32* %128, i32 9, i32 291)
  store i32 %129, i32* %2, align 4
  %130 = load i32, i32* %2, align 4
  %131 = icmp eq i32 %130, 8
  %132 = zext i1 %131 to i32
  %133 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %134 = load i32, i32* %2, align 4
  %135 = call i32 @ok(i32 %132, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i32* %133, i32 %134)
  ret void
}

declare dso_local i32 @pRtlCompareMemoryUlong(i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
