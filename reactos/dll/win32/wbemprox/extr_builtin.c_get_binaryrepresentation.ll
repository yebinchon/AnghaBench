; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_binaryrepresentation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_binaryrepresentation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.array* (i32, i32)* @get_binaryrepresentation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.array* @get_binaryrepresentation(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.array*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i8* @heap_alloc(i32 16)
  %9 = bitcast i8* %8 to %struct.array*
  store %struct.array* %9, %struct.array** %6, align 8
  %10 = load %struct.array*, %struct.array** %6, align 8
  %11 = icmp ne %struct.array* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @heap_alloc(i32 %13)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @memcpy(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.array*, %struct.array** %6, align 8
  %25 = getelementptr inbounds %struct.array, %struct.array* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.array*, %struct.array** %6, align 8
  %28 = getelementptr inbounds %struct.array, %struct.array* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.array*, %struct.array** %6, align 8
  store %struct.array* %29, %struct.array** %3, align 8
  br label %34

30:                                               ; preds = %12
  %31 = load %struct.array*, %struct.array** %6, align 8
  %32 = call i32 @heap_free(%struct.array* %31)
  br label %33

33:                                               ; preds = %30, %2
  store %struct.array* null, %struct.array** %3, align 8
  br label %34

34:                                               ; preds = %33, %18
  %35 = load %struct.array*, %struct.array** %3, align 8
  ret %struct.array* %35
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @heap_free(%struct.array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
