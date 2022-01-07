; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_ahx_write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_ahx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahx = type { i32, i32 }

@ahx_write.tohex = internal constant [16 x i8] c"0123456789ABCDEF", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i64)* @ahx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahx_write(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ahx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ahx*
  store %struct.ahx* %13, %struct.ahx** %9, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %61, %4
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %8, align 8
  %18 = icmp ugt i64 %16, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %10, align 8
  %22 = load i8, i8* %20, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.ahx*, %struct.ahx** %9, align 8
  %26 = getelementptr inbounds %struct.ahx, %struct.ahx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = ashr i32 %28, 4
  %30 = and i32 %29, 15
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* @ahx_write.tohex, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @fz_write_byte(i32* %24, i32 %27, i8 signext %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.ahx*, %struct.ahx** %9, align 8
  %37 = getelementptr inbounds %struct.ahx, %struct.ahx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 15
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* @ahx_write.tohex, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @fz_write_byte(i32* %35, i32 %38, i8 signext %43)
  %45 = load %struct.ahx*, %struct.ahx** %9, align 8
  %46 = getelementptr inbounds %struct.ahx, %struct.ahx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %46, align 4
  %49 = load %struct.ahx*, %struct.ahx** %9, align 8
  %50 = getelementptr inbounds %struct.ahx, %struct.ahx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 64
  br i1 %52, label %53, label %61

53:                                               ; preds = %19
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.ahx*, %struct.ahx** %9, align 8
  %56 = getelementptr inbounds %struct.ahx, %struct.ahx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fz_write_byte(i32* %54, i32 %57, i8 signext 10)
  %59 = load %struct.ahx*, %struct.ahx** %9, align 8
  %60 = getelementptr inbounds %struct.ahx, %struct.ahx* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %19
  br label %15

62:                                               ; preds = %15
  ret void
}

declare dso_local i32 @fz_write_byte(i32*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
