; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_add_field.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_add_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field = type { i32* }
%struct.inf_file = type { i64, i64, %struct.field* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.field* (%struct.inf_file*, i32*)* @add_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.field* @add_field(%struct.inf_file* %0, i32* %1) #0 {
  %3 = alloca %struct.field*, align 8
  %4 = alloca %struct.inf_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.field*, align 8
  store %struct.inf_file* %0, %struct.inf_file** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %8 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %11 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %16 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %15, i32 0, i32 2
  %17 = load %struct.field*, %struct.field** %16, align 8
  %18 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %19 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %18, i32 0, i32 1
  %20 = call %struct.field* @grow_array(%struct.field* %17, i64* %19, i32 8)
  %21 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %22 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %21, i32 0, i32 2
  store %struct.field* %20, %struct.field** %22, align 8
  %23 = icmp ne %struct.field* %20, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store %struct.field* null, %struct.field** %3, align 8
  br label %39

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %28 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %27, i32 0, i32 2
  %29 = load %struct.field*, %struct.field** %28, align 8
  %30 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %31 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds %struct.field, %struct.field* %29, i64 %32
  store %struct.field* %34, %struct.field** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.field*, %struct.field** %6, align 8
  %37 = getelementptr inbounds %struct.field, %struct.field* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.field*, %struct.field** %6, align 8
  store %struct.field* %38, %struct.field** %3, align 8
  br label %39

39:                                               ; preds = %26, %24
  %40 = load %struct.field*, %struct.field** %3, align 8
  ret %struct.field* %40
}

declare dso_local %struct.field* @grow_array(%struct.field*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
