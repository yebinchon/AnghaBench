; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_rc4.c_rc4_read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_rc4.c_rc4_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8, i8, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rc4_read(i8* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 8
  store i8 %16, i8* %7, align 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %29, %3
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %5, align 8
  %28 = icmp ne i64 %26, 0
  br i1 %28, label %29, label %92

29:                                               ; preds = %25
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, 1
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %7, align 1
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %36, %42
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %8, align 1
  %46 = load i8*, i8** %9, align 8
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %10, align 1
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %8, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %9, align 8
  %57 = load i8, i8* %7, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 %55, i8* %59, align 1
  %60 = load i8, i8* %10, align 1
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %8, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 %60, i8* %64, align 1
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %8, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %70, %76
  %78 = and i32 %77, 255
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %10, align 1
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %10, align 1
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %4, align 8
  %88 = load i8, i8* %86, align 1
  %89 = zext i8 %88 to i32
  %90 = xor i32 %89, %85
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %86, align 1
  br label %25

92:                                               ; preds = %25
  %93 = load i8, i8* %7, align 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i8 %93, i8* %96, align 8
  %97 = load i8, i8* %8, align 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i8 %97, i8* %100, align 1
  %101 = load i64, i64* %11, align 8
  ret i64 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
