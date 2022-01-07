; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_get_field.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_get_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field = type { i32 }
%struct.inf_file = type { %struct.field* }
%struct.line = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.field* (%struct.inf_file*, i32, i32, i32)* @get_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.field* @get_field(%struct.inf_file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.field*, align 8
  %6 = alloca %struct.inf_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.line*, align 8
  store %struct.inf_file* %0, %struct.inf_file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.line* @get_line(%struct.inf_file* %11, i32 %12, i32 %13)
  store %struct.line* %14, %struct.line** %10, align 8
  %15 = load %struct.line*, %struct.line** %10, align 8
  %16 = icmp ne %struct.line* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.field* null, %struct.field** %5, align 8
  br label %56

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = load %struct.line*, %struct.line** %10, align 8
  %23 = getelementptr inbounds %struct.line, %struct.line* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.field* null, %struct.field** %5, align 8
  br label %56

27:                                               ; preds = %21
  %28 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %29 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %28, i32 0, i32 0
  %30 = load %struct.field*, %struct.field** %29, align 8
  %31 = load %struct.line*, %struct.line** %10, align 8
  %32 = getelementptr inbounds %struct.line, %struct.line* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.field, %struct.field* %30, i64 %34
  store %struct.field* %35, %struct.field** %5, align 8
  br label %56

36:                                               ; preds = %18
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.line*, %struct.line** %10, align 8
  %41 = getelementptr inbounds %struct.line, %struct.line* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store %struct.field* null, %struct.field** %5, align 8
  br label %56

45:                                               ; preds = %36
  %46 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %47 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %46, i32 0, i32 0
  %48 = load %struct.field*, %struct.field** %47, align 8
  %49 = load %struct.line*, %struct.line** %10, align 8
  %50 = getelementptr inbounds %struct.line, %struct.line* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.field, %struct.field* %48, i64 %54
  store %struct.field* %55, %struct.field** %5, align 8
  br label %56

56:                                               ; preds = %45, %44, %27, %26, %17
  %57 = load %struct.field*, %struct.field** %5, align 8
  ret %struct.field* %57
}

declare dso_local %struct.line* @get_line(%struct.inf_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
