; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_alloc_dirstack.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_alloc_dirstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirstack = type { i32, i64, %struct.dirstack*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dirstack* (i32)* @alloc_dirstack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dirstack* @alloc_dirstack(i32 %0) #0 {
  %2 = alloca %struct.dirstack*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dirstack*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i8* @heap_alloc(i32 32)
  %6 = bitcast i8* %5 to %struct.dirstack*
  store %struct.dirstack* %6, %struct.dirstack** %4, align 8
  %7 = icmp ne %struct.dirstack* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.dirstack* null, %struct.dirstack** %2, align 8
  br label %45

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = trunc i64 %12 to i32
  %14 = call i8* @heap_alloc(i32 %13)
  %15 = bitcast i8* %14 to %struct.dirstack*
  %16 = load %struct.dirstack*, %struct.dirstack** %4, align 8
  %17 = getelementptr inbounds %struct.dirstack, %struct.dirstack* %16, i32 0, i32 2
  store %struct.dirstack* %15, %struct.dirstack** %17, align 8
  %18 = icmp ne %struct.dirstack* %15, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %9
  %20 = load %struct.dirstack*, %struct.dirstack** %4, align 8
  %21 = call i32 @heap_free(%struct.dirstack* %20)
  store %struct.dirstack* null, %struct.dirstack** %2, align 8
  br label %45

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @heap_alloc(i32 %26)
  %28 = load %struct.dirstack*, %struct.dirstack** %4, align 8
  %29 = getelementptr inbounds %struct.dirstack, %struct.dirstack* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = icmp ne i8* %27, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = load %struct.dirstack*, %struct.dirstack** %4, align 8
  %33 = getelementptr inbounds %struct.dirstack, %struct.dirstack* %32, i32 0, i32 2
  %34 = load %struct.dirstack*, %struct.dirstack** %33, align 8
  %35 = call i32 @heap_free(%struct.dirstack* %34)
  %36 = load %struct.dirstack*, %struct.dirstack** %4, align 8
  %37 = call i32 @heap_free(%struct.dirstack* %36)
  store %struct.dirstack* null, %struct.dirstack** %2, align 8
  br label %45

38:                                               ; preds = %22
  %39 = load %struct.dirstack*, %struct.dirstack** %4, align 8
  %40 = getelementptr inbounds %struct.dirstack, %struct.dirstack* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.dirstack*, %struct.dirstack** %4, align 8
  %43 = getelementptr inbounds %struct.dirstack, %struct.dirstack* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dirstack*, %struct.dirstack** %4, align 8
  store %struct.dirstack* %44, %struct.dirstack** %2, align 8
  br label %45

45:                                               ; preds = %38, %31, %19, %8
  %46 = load %struct.dirstack*, %struct.dirstack** %2, align 8
  ret %struct.dirstack* %46
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(%struct.dirstack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
