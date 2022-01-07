; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_add_line.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_add_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32, i64, i32 }
%struct.inf_file = type { i32, i32, %struct.section** }
%struct.section = type { i32, i32, %struct.line* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line* (%struct.inf_file*, i32)* @add_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line* @add_line(%struct.inf_file* %0, i32 %1) #0 {
  %3 = alloca %struct.line*, align 8
  %4 = alloca %struct.inf_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.section*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  store %struct.inf_file* %0, %struct.inf_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %14 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ false, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %22 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %21, i32 0, i32 2
  %23 = load %struct.section**, %struct.section*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.section*, %struct.section** %23, i64 %25
  %27 = load %struct.section*, %struct.section** %26, align 8
  store %struct.section* %27, %struct.section** %6, align 8
  %28 = load %struct.section*, %struct.section** %6, align 8
  %29 = getelementptr inbounds %struct.section, %struct.section* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.section*, %struct.section** %6, align 8
  %32 = getelementptr inbounds %struct.section, %struct.section* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %17
  %36 = load %struct.section*, %struct.section** %6, align 8
  %37 = getelementptr inbounds %struct.section, %struct.section* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 24
  %42 = add i64 8, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load %struct.section*, %struct.section** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call %struct.section* @HeapReAlloc(i32 %44, i32 0, %struct.section* %45, i32 %46)
  store %struct.section* %47, %struct.section** %6, align 8
  %48 = icmp ne %struct.section* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  store %struct.line* null, %struct.line** %3, align 8
  br label %82

50:                                               ; preds = %35
  %51 = load %struct.section*, %struct.section** %6, align 8
  %52 = getelementptr inbounds %struct.section, %struct.section* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %52, align 4
  %55 = load %struct.section*, %struct.section** %6, align 8
  %56 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %57 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %56, i32 0, i32 2
  %58 = load %struct.section**, %struct.section*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.section*, %struct.section** %58, i64 %60
  store %struct.section* %55, %struct.section** %61, align 8
  br label %62

62:                                               ; preds = %50, %17
  %63 = load %struct.section*, %struct.section** %6, align 8
  %64 = getelementptr inbounds %struct.section, %struct.section* %63, i32 0, i32 2
  %65 = load %struct.line*, %struct.line** %64, align 8
  %66 = load %struct.section*, %struct.section** %6, align 8
  %67 = getelementptr inbounds %struct.section, %struct.section* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.line, %struct.line* %65, i64 %70
  store %struct.line* %71, %struct.line** %7, align 8
  %72 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %73 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.line*, %struct.line** %7, align 8
  %76 = getelementptr inbounds %struct.line, %struct.line* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.line*, %struct.line** %7, align 8
  %78 = getelementptr inbounds %struct.line, %struct.line* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.line*, %struct.line** %7, align 8
  %80 = getelementptr inbounds %struct.line, %struct.line* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 8
  %81 = load %struct.line*, %struct.line** %7, align 8
  store %struct.line* %81, %struct.line** %3, align 8
  br label %82

82:                                               ; preds = %62, %49
  %83 = load %struct.line*, %struct.line** %3, align 8
  ret %struct.line* %83
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.section* @HeapReAlloc(i32, i32, %struct.section*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
