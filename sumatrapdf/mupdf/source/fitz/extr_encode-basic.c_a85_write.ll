; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_a85_write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_a85_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a85 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i64)* @a85_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a85_write(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.a85*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.a85*
  store %struct.a85* %13, %struct.a85** %9, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %32, %4
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %8, align 8
  %18 = icmp ugt i64 %16, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %10, align 8
  %22 = load i8, i8* %20, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load %struct.a85*, %struct.a85** %9, align 8
  %25 = getelementptr inbounds %struct.a85, %struct.a85* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.a85*, %struct.a85** %9, align 8
  %31 = call i32 @a85_flush(i32* %29, %struct.a85* %30)
  br label %32

32:                                               ; preds = %28, %19
  %33 = load %struct.a85*, %struct.a85** %9, align 8
  %34 = getelementptr inbounds %struct.a85, %struct.a85* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.a85*, %struct.a85** %9, align 8
  %40 = getelementptr inbounds %struct.a85, %struct.a85* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.a85*, %struct.a85** %9, align 8
  %42 = getelementptr inbounds %struct.a85, %struct.a85* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %15

45:                                               ; preds = %15
  ret void
}

declare dso_local i32 @a85_flush(i32*, %struct.a85*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
