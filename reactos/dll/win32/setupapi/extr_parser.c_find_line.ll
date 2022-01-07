; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_find_line.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_find_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32 }
%struct.inf_file = type { i32, %struct.TYPE_2__*, %struct.section** }
%struct.TYPE_2__ = type { i32 }
%struct.section = type { i32, %struct.line* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line* (%struct.inf_file*, i32, i32*)* @find_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line* @find_line(%struct.inf_file* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.inf_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.section*, align 8
  %9 = alloca %struct.line*, align 8
  %10 = alloca i32, align 4
  store %struct.inf_file* %0, %struct.inf_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.inf_file*, %struct.inf_file** %5, align 8
  %16 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %3
  store %struct.line* null, %struct.line** %4, align 8
  br label %66

20:                                               ; preds = %13
  %21 = load %struct.inf_file*, %struct.inf_file** %5, align 8
  %22 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %21, i32 0, i32 2
  %23 = load %struct.section**, %struct.section*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.section*, %struct.section** %23, i64 %25
  %27 = load %struct.section*, %struct.section** %26, align 8
  store %struct.section* %27, %struct.section** %8, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.section*, %struct.section** %8, align 8
  %29 = getelementptr inbounds %struct.section, %struct.section* %28, i32 0, i32 1
  %30 = load %struct.line*, %struct.line** %29, align 8
  store %struct.line* %30, %struct.line** %9, align 8
  br label %31

31:                                               ; preds = %60, %20
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.section*, %struct.section** %8, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load %struct.line*, %struct.line** %9, align 8
  %39 = getelementptr inbounds %struct.line, %struct.line* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %60

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.inf_file*, %struct.inf_file** %5, align 8
  %46 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.line*, %struct.line** %9, align 8
  %49 = getelementptr inbounds %struct.line, %struct.line* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmpiW(i32* %44, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %43
  %58 = load %struct.line*, %struct.line** %9, align 8
  store %struct.line* %58, %struct.line** %4, align 8
  br label %66

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = load %struct.line*, %struct.line** %9, align 8
  %64 = getelementptr inbounds %struct.line, %struct.line* %63, i32 1
  store %struct.line* %64, %struct.line** %9, align 8
  br label %31

65:                                               ; preds = %31
  store %struct.line* null, %struct.line** %4, align 8
  br label %66

66:                                               ; preds = %65, %57, %19
  %67 = load %struct.line*, %struct.line** %4, align 8
  ret %struct.line* %67
}

declare dso_local i32 @strcmpiW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
