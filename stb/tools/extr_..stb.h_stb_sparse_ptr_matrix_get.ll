; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_sparse_ptr_matrix_get.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_sparse_ptr_matrix_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stb_sparse_ptr_matrix_get(%struct.TYPE_8__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = bitcast %struct.TYPE_9__* %10 to { i8*, i8* }*
  %18 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %17, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @stb__spmatrix_get(%struct.TYPE_8__* %16, i8* %19, i8* %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @stb_malloc_raw(i32 %31, i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  store i8* null, i8** %5, align 8
  br label %55

39:                                               ; preds = %28
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memset(i8* %40, i32 0, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = bitcast %struct.TYPE_9__* %10 to { i8*, i8* }*
  %48 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %47, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @stb__spmatrix_add(%struct.TYPE_8__* %45, i8* %49, i8* %51, i8* %46)
  br label %53

53:                                               ; preds = %39, %25, %4
  %54 = load i8*, i8** %11, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %53, %38
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i8* @stb__spmatrix_get(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i8* @stb_malloc_raw(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @stb__spmatrix_add(%struct.TYPE_8__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
