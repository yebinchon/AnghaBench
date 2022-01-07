; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_build_path.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_build_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64 }

@build_path.fmtW = internal constant [11 x i8] c"\\\\%s\\%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.view*, i64, i8*)* @build_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_path(%struct.view* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.view*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = load %struct.view*, %struct.view** %5, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.view*, %struct.view** %5, align 8
  %20 = call i32* @build_servername(%struct.view* %19)
  store i32* %20, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %64

23:                                               ; preds = %18
  %24 = load %struct.view*, %struct.view** %5, align 8
  %25 = call i32* @build_namespace(%struct.view* %24)
  store i32* %25, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %56

28:                                               ; preds = %23
  %29 = load %struct.view*, %struct.view** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32* @build_relpath(%struct.view* %29, i64 %30, i8* %31)
  store i32* %32, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %56

35:                                               ; preds = %28
  %36 = call i64 @strlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @build_path.fmtW, i64 0, i64 0))
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @SysStringLen(i32* %37)
  %39 = add nsw i64 %36, %38
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @SysStringLen(i32* %40)
  %42 = add nsw i64 %39, %41
  %43 = load i32*, i32** %10, align 8
  %44 = call i64 @SysStringLen(i32* %43)
  %45 = add nsw i64 %42, %44
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i32* @SysAllocStringLen(i32* null, i64 %46)
  store i32* %47, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %56

50:                                               ; preds = %35
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @sprintfW(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @build_path.fmtW, i64 0, i64 0), i32* %52, i32* %53, i32* %54)
  br label %56

56:                                               ; preds = %50, %49, %34, %27
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @SysFreeString(i32* %57)
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @SysFreeString(i32* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @SysFreeString(i32* %61)
  %63 = load i32*, i32** %11, align 8
  store i32* %63, i32** %4, align 8
  br label %64

64:                                               ; preds = %56, %22, %17
  %65 = load i32*, i32** %4, align 8
  ret i32* %65
}

declare dso_local i32* @build_servername(%struct.view*) #1

declare dso_local i32* @build_namespace(%struct.view*) #1

declare dso_local i32* @build_relpath(%struct.view*, i64, i8*) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i64 @SysStringLen(i32*) #1

declare dso_local i32* @SysAllocStringLen(i32*, i64) #1

declare dso_local i32 @sprintfW(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
