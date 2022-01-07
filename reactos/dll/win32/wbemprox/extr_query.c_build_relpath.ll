; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_build_relpath.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_build_relpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64 }

@build_relpath.fmtW = internal constant [6 x i8] c"%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.view*, i32, i8*)* @build_relpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_relpath(%struct.view* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %10, align 8
  %13 = load %struct.view*, %struct.view** %5, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.view*, %struct.view** %5, align 8
  %20 = call i32* @build_classname(%struct.view* %19)
  store i32* %20, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %60

23:                                               ; preds = %18
  %24 = load %struct.view*, %struct.view** %5, align 8
  %25 = call i32 @count_key_columns(%struct.view* %24)
  store i32 %25, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  store i32* %28, i32** %4, align 8
  br label %60

29:                                               ; preds = %23
  %30 = load %struct.view*, %struct.view** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32* @build_proplist(%struct.view* %30, i32 %31, i32 %32, i32* %12)
  store i32* %33, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %54

36:                                               ; preds = %29
  %37 = call i64 @strlenW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @build_relpath.fmtW, i64 0, i64 0))
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @SysStringLen(i32* %38)
  %40 = add nsw i64 %37, %39
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32* @SysAllocStringLen(i32* null, i32 %45)
  store i32* %46, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %54

49:                                               ; preds = %36
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @sprintfW(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @build_relpath.fmtW, i64 0, i64 0), i32* %51, i32* %52)
  br label %54

54:                                               ; preds = %49, %48, %35
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @SysFreeString(i32* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @SysFreeString(i32* %57)
  %59 = load i32*, i32** %10, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %54, %27, %22, %17
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

declare dso_local i32* @build_classname(%struct.view*) #1

declare dso_local i32 @count_key_columns(%struct.view*) #1

declare dso_local i32* @build_proplist(%struct.view*, i32, i32, i32*) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i64 @SysStringLen(i32*) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @sprintfW(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
