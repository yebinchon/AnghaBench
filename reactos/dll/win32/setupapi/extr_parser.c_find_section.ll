; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_find_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_find_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_file = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_file*, i32*)* @find_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_section(%struct.inf_file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inf_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.inf_file* %0, %struct.inf_file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %10 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %16 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmpiW(i32* %14, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %7

32:                                               ; preds = %7
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @strcmpiW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
