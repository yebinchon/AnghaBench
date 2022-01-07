; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_append_namespace.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_append_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namespace = type { i8*, %struct.namespace* }

@use_abi_namespace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ABI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.namespace*, i8*)* @append_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @append_namespace(i8* %0, %struct.namespace* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.namespace*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.namespace* %1, %struct.namespace** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.namespace*, %struct.namespace** %6, align 8
  %9 = call i64 @is_global_namespace(%struct.namespace* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* @use_abi_namespace, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %4, align 8
  br label %47

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strcat(i8* %19, i8* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** %4, align 8
  br label %47

27:                                               ; preds = %3
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.namespace*, %struct.namespace** %6, align 8
  %30 = getelementptr inbounds %struct.namespace, %struct.namespace* %29, i32 0, i32 1
  %31 = load %struct.namespace*, %struct.namespace** %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @append_namespace(i8* %28, %struct.namespace* %31, i8* %32)
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.namespace*, %struct.namespace** %6, align 8
  %36 = getelementptr inbounds %struct.namespace, %struct.namespace* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcpy(i8* %34, i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strcat(i8* %39, i8* %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %27, %16, %14
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

declare dso_local i64 @is_global_namespace(%struct.namespace*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
