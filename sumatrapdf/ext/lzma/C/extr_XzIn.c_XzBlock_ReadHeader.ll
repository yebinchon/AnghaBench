; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_XzIn.c_XzBlock_ReadHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_XzIn.c_XzBlock_ReadHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XZ_BLOCK_HEADER_SIZE_MAX = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XzBlock_ReadHeader(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @XZ_BLOCK_HEADER_SIZE_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i64, i64* %17, i64 0
  %21 = call i32 @SeqInStream_ReadByte(i32* %19, i64* %20)
  %22 = call i32 @RINOK(i32 %21)
  %23 = getelementptr inbounds i64, i64* %17, i64 0
  %24 = load i64, i64* %23, align 16
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 2
  %27 = add i32 %26, 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load i32*, i32** %9, align 8
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @True, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @SZ_OK, align 4
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %48

35:                                               ; preds = %4
  %36 = load i32, i32* @False, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i64, i64* %17, i64 1
  %42 = load i32, i32* %12, align 4
  %43 = sub i32 %42, 1
  %44 = call i32 @SeqInStream_Read(i32* %40, i64* %41, i32 %43)
  %45 = call i32 @RINOK(i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @XzBlock_Parse(i32* %46, i64* %17)
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %48

48:                                               ; preds = %35, %30
  %49 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RINOK(i32) #2

declare dso_local i32 @SeqInStream_ReadByte(i32*, i64*) #2

declare dso_local i32 @SeqInStream_Read(i32*, i64*, i32) #2

declare dso_local i32 @XzBlock_Parse(i32*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
