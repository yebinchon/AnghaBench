; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_add_dll_redirect.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_add_dll_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dll_redirect = type { i32 }
%struct.assembly = type { i32, i32, %struct.dll_redirect* }

@.str = private unnamed_addr constant [48 x i8] c"add_dll_redirect() to assembly %p, num_dlls %d\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dll_redirect* (%struct.assembly*)* @add_dll_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dll_redirect* @add_dll_redirect(%struct.assembly* %0) #0 {
  %2 = alloca %struct.dll_redirect*, align 8
  %3 = alloca %struct.assembly*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.assembly* %0, %struct.assembly** %3, align 8
  %6 = load %struct.assembly*, %struct.assembly** %3, align 8
  %7 = load %struct.assembly*, %struct.assembly** %3, align 8
  %8 = getelementptr inbounds %struct.assembly, %struct.assembly* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @DPRINT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.assembly* %6, i32 %9)
  %11 = load %struct.assembly*, %struct.assembly** %3, align 8
  %12 = getelementptr inbounds %struct.assembly, %struct.assembly* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.assembly*, %struct.assembly** %3, align 8
  %15 = getelementptr inbounds %struct.assembly, %struct.assembly* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %1
  %19 = load %struct.assembly*, %struct.assembly** %3, align 8
  %20 = getelementptr inbounds %struct.assembly, %struct.assembly* %19, i32 0, i32 2
  %21 = load %struct.dll_redirect*, %struct.dll_redirect** %20, align 8
  %22 = icmp ne %struct.dll_redirect* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.assembly*, %struct.assembly** %3, align 8
  %25 = getelementptr inbounds %struct.assembly, %struct.assembly* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %5, align 4
  %28 = call i32 (...) @RtlGetProcessHeap()
  %29 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %30 = load %struct.assembly*, %struct.assembly** %3, align 8
  %31 = getelementptr inbounds %struct.assembly, %struct.assembly* %30, i32 0, i32 2
  %32 = load %struct.dll_redirect*, %struct.dll_redirect** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i8* @RtlReAllocateHeap(i32 %28, i32 %29, %struct.dll_redirect* %32, i32 %36)
  store i8* %37, i8** %4, align 8
  br label %46

38:                                               ; preds = %18
  store i32 4, i32* %5, align 4
  %39 = call i32 (...) @RtlGetProcessHeap()
  %40 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i8* @RtlAllocateHeap(i32 %39, i32 %40, i32 %44)
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %38, %23
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store %struct.dll_redirect* null, %struct.dll_redirect** %2, align 8
  br label %68

50:                                               ; preds = %46
  %51 = load i8*, i8** %4, align 8
  %52 = bitcast i8* %51 to %struct.dll_redirect*
  %53 = load %struct.assembly*, %struct.assembly** %3, align 8
  %54 = getelementptr inbounds %struct.assembly, %struct.assembly* %53, i32 0, i32 2
  store %struct.dll_redirect* %52, %struct.dll_redirect** %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.assembly*, %struct.assembly** %3, align 8
  %57 = getelementptr inbounds %struct.assembly, %struct.assembly* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %50, %1
  %59 = load %struct.assembly*, %struct.assembly** %3, align 8
  %60 = getelementptr inbounds %struct.assembly, %struct.assembly* %59, i32 0, i32 2
  %61 = load %struct.dll_redirect*, %struct.dll_redirect** %60, align 8
  %62 = load %struct.assembly*, %struct.assembly** %3, align 8
  %63 = getelementptr inbounds %struct.assembly, %struct.assembly* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %61, i64 %66
  store %struct.dll_redirect* %67, %struct.dll_redirect** %2, align 8
  br label %68

68:                                               ; preds = %58, %49
  %69 = load %struct.dll_redirect*, %struct.dll_redirect** %2, align 8
  ret %struct.dll_redirect* %69
}

declare dso_local i32 @DPRINT(i8*, %struct.assembly*, i32) #1

declare dso_local i8* @RtlReAllocateHeap(i32, i32, %struct.dll_redirect*, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i8* @RtlAllocateHeap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
