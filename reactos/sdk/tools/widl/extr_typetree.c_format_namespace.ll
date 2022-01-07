; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_format_namespace.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_format_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namespace = type { i8*, %struct.namespace* }

@use_abi_namespace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_namespace(%struct.namespace* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.namespace*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.namespace*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.namespace* %0, %struct.namespace** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* @use_abi_namespace, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.namespace*, %struct.namespace** %5, align 8
  %25 = call i32 @is_global_namespace(%struct.namespace* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = add i32 3, %28
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %23, %4
  %33 = load %struct.namespace*, %struct.namespace** %5, align 8
  store %struct.namespace* %33, %struct.namespace** %11, align 8
  br label %34

34:                                               ; preds = %48, %32
  %35 = load %struct.namespace*, %struct.namespace** %11, align 8
  %36 = call i32 @is_global_namespace(%struct.namespace* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.namespace*, %struct.namespace** %11, align 8
  %41 = getelementptr inbounds %struct.namespace, %struct.namespace* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %43, %44
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %39
  %49 = load %struct.namespace*, %struct.namespace** %11, align 8
  %50 = getelementptr inbounds %struct.namespace, %struct.namespace* %49, i32 0, i32 1
  %51 = load %struct.namespace*, %struct.namespace** %50, align 8
  store %struct.namespace* %51, %struct.namespace** %11, align 8
  br label %34

52:                                               ; preds = %34
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  %55 = call i8* @xmalloc(i32 %54)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strcpy(i8* %56, i8* %57)
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load %struct.namespace*, %struct.namespace** %5, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @append_namespace(i8* %63, %struct.namespace* %64, i8* %65)
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strcpy(i8* %67, i8* %68)
  %70 = load i8*, i8** %12, align 8
  ret i8* %70
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @is_global_namespace(%struct.namespace*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @append_namespace(i8*, %struct.namespace*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
