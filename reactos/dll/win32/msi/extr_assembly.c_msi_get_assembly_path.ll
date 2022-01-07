; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_get_assembly_path.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_get_assembly_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32** }
%struct.TYPE_7__ = type { i32, i32, i32* }

@CLR_VERSION_V40 = common dso_local global i64 0, align 8
@E_NOT_SUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"returning %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @msi_get_assembly_path(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = load i64, i64* @CLR_VERSION_V40, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %56

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 16)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 16, i32* %20, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @IAssemblyCache_QueryAssemblyInfo(i32* %21, i32 0, i32* %22, %struct.TYPE_7__* %7)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @E_NOT_SUFFICIENT_BUFFER, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %56

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32* @msi_alloc(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32* %34, i32** %35, align 8
  %36 = icmp ne i32* %34, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store i32* null, i32** %3, align 8
  br label %56

38:                                               ; preds = %28
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @IAssemblyCache_QueryAssemblyInfo(i32* %39, i32 0, i32* %40, %struct.TYPE_7__* %7)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @FAILED(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @msi_free(i32* %47)
  store i32* null, i32** %3, align 8
  br label %56

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @debugstr_w(i32* %51)
  %53 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %3, align 8
  br label %56

56:                                               ; preds = %49, %45, %37, %27, %17
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @IAssemblyCache_QueryAssemblyInfo(i32*, i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
