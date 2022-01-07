; ModuleID = '/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_dump_write_varint.c'
source_filename = "/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_dump_write_varint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMBAK_TAG_BIND_VARINT_MINUS = common dso_local global i32 0, align 4
@MMBAK_TAG_BIND_VARINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @dump_write_varint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_write_varint(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [12 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  store i32* %8, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @MMBAK_TAG_BIND_VARINT_MINUS, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = xor i32 %15, -1
  store i32 %16, i32* %4, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @MMBAK_TAG_BIND_VARINT, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  br label %21

21:                                               ; preds = %17, %11
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 127
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 7
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, 128
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %22, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i32 @dump_write_stream(i32* %40, i32* %41, i32 %48)
  ret i32 %49
}

declare dso_local i32 @dump_write_stream(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
