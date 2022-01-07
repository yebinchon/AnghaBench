; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_python3.c_BufferSubscript.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_python3.c_BufferSubscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @BufferSubscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BufferSubscript(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @PyLong_Check(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @PyLong_AsLong(i32* %15)
  store i64 %16, i64* %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_9__*
  %19 = load i64, i64* %6, align 8
  %20 = call i32* @BufferItem(%struct.TYPE_9__* %18, i64 %19)
  store i32* %20, i32** %3, align 8
  br label %53

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @PySlice_Check(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_9__*
  %28 = call i64 @CheckBuffer(%struct.TYPE_9__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %53

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = bitcast i32* %33 to %struct.TYPE_9__*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @PySlice_GetIndicesEx(i32* %32, i32 %40, i32* %7, i32* %8, i32* %9, i32* %10)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32* null, i32** %3, align 8
  br label %53

44:                                               ; preds = %31
  %45 = load i32*, i32** %4, align 8
  %46 = bitcast i32* %45 to %struct.TYPE_9__*
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32* @BufferSlice(%struct.TYPE_9__* %46, i32 %47, i32 %48)
  store i32* %49, i32** %3, align 8
  br label %53

50:                                               ; preds = %21
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @RAISE_INVALID_INDEX_TYPE(i32* %51)
  store i32* null, i32** %3, align 8
  br label %53

53:                                               ; preds = %50, %44, %43, %30, %14
  %54 = load i32*, i32** %3, align 8
  ret i32* %54
}

declare dso_local i64 @PyLong_Check(i32*) #1

declare dso_local i64 @PyLong_AsLong(i32*) #1

declare dso_local i32* @BufferItem(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @PySlice_Check(i32*) #1

declare dso_local i64 @CheckBuffer(%struct.TYPE_9__*) #1

declare dso_local i64 @PySlice_GetIndicesEx(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @BufferSlice(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @RAISE_INVALID_INDEX_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
