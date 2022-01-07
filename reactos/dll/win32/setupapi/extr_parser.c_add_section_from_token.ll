; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_add_section_from_token.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_add_section_from_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i64, i32, i32, i32, i32 }

@MAX_SECTION_NAME_LEN = common dso_local global i64 0, align 8
@ERROR_SECTION_NAME_TOO_LONG = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser*)* @add_section_from_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_section_from_token(%struct.parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parser*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %3, align 8
  %6 = load %struct.parser*, %struct.parser** %3, align 8
  %7 = getelementptr inbounds %struct.parser, %struct.parser* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MAX_SECTION_NAME_LEN, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @ERROR_SECTION_NAME_TOO_LONG, align 4
  %13 = load %struct.parser*, %struct.parser** %3, align 8
  %14 = getelementptr inbounds %struct.parser, %struct.parser* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  store i32 -1, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.parser*, %struct.parser** %3, align 8
  %17 = getelementptr inbounds %struct.parser, %struct.parser* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.parser*, %struct.parser** %3, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @find_section(i32 %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %43

24:                                               ; preds = %15
  %25 = load %struct.parser*, %struct.parser** %3, align 8
  %26 = getelementptr inbounds %struct.parser, %struct.parser* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.parser*, %struct.parser** %3, align 8
  %29 = getelementptr inbounds %struct.parser, %struct.parser* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @push_string(i32 %27, i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load %struct.parser*, %struct.parser** %3, align 8
  %33 = getelementptr inbounds %struct.parser, %struct.parser* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @add_section(i32 %34, i32* %35)
  store i32 %36, i32* %4, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %40 = load %struct.parser*, %struct.parser** %3, align 8
  %41 = getelementptr inbounds %struct.parser, %struct.parser* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  store i32 -1, i32* %2, align 4
  br label %50

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %15
  %44 = load %struct.parser*, %struct.parser** %3, align 8
  %45 = getelementptr inbounds %struct.parser, %struct.parser* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.parser*, %struct.parser** %3, align 8
  %48 = getelementptr inbounds %struct.parser, %struct.parser* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %38, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @find_section(i32, i32) #1

declare dso_local i32* @push_string(i32, i32) #1

declare dso_local i32 @add_section(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
