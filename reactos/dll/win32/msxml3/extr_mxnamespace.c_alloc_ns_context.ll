; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_mxnamespace.c_alloc_ns_context.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_mxnamespace.c_alloc_ns_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nscontext = type { i32, %struct.nscontext*, i8*, i8*, i64 }

@DEFAULT_PREFIX_ALLOC_COUNT = common dso_local global i32 0, align 4
@xmlW = common dso_local global i32 0, align 4
@xmluriW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nscontext* ()* @alloc_ns_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nscontext* @alloc_ns_context() #0 {
  %1 = alloca %struct.nscontext*, align 8
  %2 = alloca %struct.nscontext*, align 8
  %3 = call i8* @heap_alloc(i32 40)
  %4 = bitcast i8* %3 to %struct.nscontext*
  store %struct.nscontext* %4, %struct.nscontext** %2, align 8
  %5 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %6 = icmp ne %struct.nscontext* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.nscontext* null, %struct.nscontext** %1, align 8
  br label %74

8:                                                ; preds = %0
  %9 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %10 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @DEFAULT_PREFIX_ALLOC_COUNT, align 4
  %12 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %13 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %15 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 40
  %19 = trunc i64 %18 to i32
  %20 = call i8* @heap_alloc(i32 %19)
  %21 = bitcast i8* %20 to %struct.nscontext*
  %22 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %23 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %22, i32 0, i32 1
  store %struct.nscontext* %21, %struct.nscontext** %23, align 8
  %24 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %25 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %24, i32 0, i32 1
  %26 = load %struct.nscontext*, %struct.nscontext** %25, align 8
  %27 = icmp ne %struct.nscontext* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %8
  %29 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %30 = call i32 @heap_free(%struct.nscontext* %29)
  store %struct.nscontext* null, %struct.nscontext** %1, align 8
  br label %74

31:                                               ; preds = %8
  %32 = load i32, i32* @xmlW, align 4
  %33 = call i8* @SysAllocString(i32 %32)
  %34 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %35 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %34, i32 0, i32 1
  %36 = load %struct.nscontext*, %struct.nscontext** %35, align 8
  %37 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %36, i64 0
  %38 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %37, i32 0, i32 3
  store i8* %33, i8** %38, align 8
  %39 = load i32, i32* @xmluriW, align 4
  %40 = call i8* @SysAllocString(i32 %39)
  %41 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %42 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %41, i32 0, i32 1
  %43 = load %struct.nscontext*, %struct.nscontext** %42, align 8
  %44 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %43, i64 0
  %45 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %44, i32 0, i32 2
  store i8* %40, i8** %45, align 8
  %46 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %47 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %51 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %50, i32 0, i32 1
  %52 = load %struct.nscontext*, %struct.nscontext** %51, align 8
  %53 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %52, i64 0
  %54 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %31
  %58 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %59 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %58, i32 0, i32 1
  %60 = load %struct.nscontext*, %struct.nscontext** %59, align 8
  %61 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %60, i64 0
  %62 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %57, %31
  %66 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %67 = getelementptr inbounds %struct.nscontext, %struct.nscontext* %66, i32 0, i32 1
  %68 = load %struct.nscontext*, %struct.nscontext** %67, align 8
  %69 = call i32 @heap_free(%struct.nscontext* %68)
  %70 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  %71 = call i32 @heap_free(%struct.nscontext* %70)
  store %struct.nscontext* null, %struct.nscontext** %1, align 8
  br label %74

72:                                               ; preds = %57
  %73 = load %struct.nscontext*, %struct.nscontext** %2, align 8
  store %struct.nscontext* %73, %struct.nscontext** %1, align 8
  br label %74

74:                                               ; preds = %72, %65, %28, %7
  %75 = load %struct.nscontext*, %struct.nscontext** %1, align 8
  ret %struct.nscontext* %75
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(%struct.nscontext*) #1

declare dso_local i8* @SysAllocString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
