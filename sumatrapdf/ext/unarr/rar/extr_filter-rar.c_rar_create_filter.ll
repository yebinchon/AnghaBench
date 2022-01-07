; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_create_filter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_create_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RARFilter = type { i32, i64, i32, i8*, i8*, %struct.RARProgramCode* }
%struct.RARProgramCode = type { i32 }

@RARProgramSystemGlobalSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RARFilter* (%struct.RARProgramCode*, i32*, i32, i32*, i64, i32)* @rar_create_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RARFilter* @rar_create_filter(%struct.RARProgramCode* %0, i32* %1, i32 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.RARFilter*, align 8
  %8 = alloca %struct.RARProgramCode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.RARFilter*, align 8
  store %struct.RARProgramCode* %0, %struct.RARProgramCode** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = call i8* @calloc(i32 1, i32 48)
  %16 = bitcast i8* %15 to %struct.RARFilter*
  store %struct.RARFilter* %16, %struct.RARFilter** %14, align 8
  %17 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  %18 = icmp ne %struct.RARFilter* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store %struct.RARFilter* null, %struct.RARFilter** %7, align 8
  br label %73

20:                                               ; preds = %6
  %21 = load %struct.RARProgramCode*, %struct.RARProgramCode** %8, align 8
  %22 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  %23 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %22, i32 0, i32 5
  store %struct.RARProgramCode* %21, %struct.RARProgramCode** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @RARProgramSystemGlobalSize, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @RARProgramSystemGlobalSize, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  %34 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  %36 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @calloc(i32 1, i32 %37)
  %39 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  %40 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  %42 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  store %struct.RARFilter* null, %struct.RARFilter** %7, align 8
  br label %73

46:                                               ; preds = %31
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  %51 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @memcpy(i8* %52, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  %61 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @memcpy(i8* %62, i32* %63, i32 8)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  %68 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  %71 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.RARFilter*, %struct.RARFilter** %14, align 8
  store %struct.RARFilter* %72, %struct.RARFilter** %7, align 8
  br label %73

73:                                               ; preds = %65, %45, %19
  %74 = load %struct.RARFilter*, %struct.RARFilter** %7, align 8
  ret %struct.RARFilter* %74
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
