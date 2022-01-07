; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_get_line.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32 }
%struct.inf_file = type { i32, %struct.section** }
%struct.section = type { i32, %struct.line* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line* (%struct.inf_file*, i32, i32)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line* @get_line(%struct.inf_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.inf_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.section*, align 8
  store %struct.inf_file* %0, %struct.inf_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.inf_file*, %struct.inf_file** %5, align 8
  %11 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp uge i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.line* null, %struct.line** %4, align 8
  br label %36

15:                                               ; preds = %3
  %16 = load %struct.inf_file*, %struct.inf_file** %5, align 8
  %17 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %16, i32 0, i32 1
  %18 = load %struct.section**, %struct.section*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.section*, %struct.section** %18, i64 %20
  %22 = load %struct.section*, %struct.section** %21, align 8
  store %struct.section* %22, %struct.section** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.section*, %struct.section** %8, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store %struct.line* null, %struct.line** %4, align 8
  br label %36

29:                                               ; preds = %15
  %30 = load %struct.section*, %struct.section** %8, align 8
  %31 = getelementptr inbounds %struct.section, %struct.section* %30, i32 0, i32 1
  %32 = load %struct.line*, %struct.line** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.line, %struct.line* %32, i64 %34
  store %struct.line* %35, %struct.line** %4, align 8
  br label %36

36:                                               ; preds = %29, %28, %14
  %37 = load %struct.line*, %struct.line** %4, align 8
  ret %struct.line* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
