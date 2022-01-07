; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_add_compat_context.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_add_compat_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly = type { i32, i32* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.assembly*)* @add_compat_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_compat_context(%struct.assembly* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.assembly*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.assembly* %0, %struct.assembly** %3, align 8
  %6 = load %struct.assembly*, %struct.assembly** %3, align 8
  %7 = getelementptr inbounds %struct.assembly, %struct.assembly* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.assembly*, %struct.assembly** %3, align 8
  %12 = getelementptr inbounds %struct.assembly, %struct.assembly* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = call i32 (...) @RtlGetProcessHeap()
  %16 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %17 = load %struct.assembly*, %struct.assembly** %3, align 8
  %18 = getelementptr inbounds %struct.assembly, %struct.assembly* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i8* @RtlReAllocateHeap(i32 %15, i32 %16, i32* %19, i32 %23)
  store i8* %24, i8** %4, align 8
  br label %29

25:                                               ; preds = %1
  %26 = call i32 (...) @RtlGetProcessHeap()
  %27 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %28 = call i8* @RtlAllocateHeap(i32 %26, i32 %27, i32 4)
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %25, %10
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32* null, i32** %2, align 8
  br label %47

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.assembly*, %struct.assembly** %3, align 8
  %37 = getelementptr inbounds %struct.assembly, %struct.assembly* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.assembly*, %struct.assembly** %3, align 8
  %39 = getelementptr inbounds %struct.assembly, %struct.assembly* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.assembly*, %struct.assembly** %3, align 8
  %42 = getelementptr inbounds %struct.assembly, %struct.assembly* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  store i32* %46, i32** %2, align 8
  br label %47

47:                                               ; preds = %33, %32
  %48 = load i32*, i32** %2, align 8
  ret i32* %48
}

declare dso_local i8* @RtlReAllocateHeap(i32, i32, i32*, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i8* @RtlAllocateHeap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
