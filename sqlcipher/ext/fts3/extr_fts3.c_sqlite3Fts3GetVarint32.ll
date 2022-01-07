; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3GetVarint32.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3GetVarint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3GetVarint32(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @GETVARINT_INIT(i32 %8, i8* %9, i32 0, i32 0, i32 128, i32 %11, i32 1)
  %13 = load i32, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @GETVARINT_STEP(i32 %13, i8* %14, i32 7, i32 127, i32 16384, i32 %16, i32 2)
  %18 = load i32, i32* %6, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GETVARINT_STEP(i32 %18, i8* %19, i32 14, i32 16383, i32 2097152, i32 %21, i32 3)
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @GETVARINT_STEP(i32 %23, i8* %24, i32 21, i32 2097151, i32 268435456, i32 %26, i32 4)
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 268435455
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 7
  %35 = shl i32 %34, 28
  %36 = or i32 %30, %35
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, -2147483648
  %40 = icmp eq i32 0, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  ret i32 5
}

declare dso_local i32 @GETVARINT_INIT(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GETVARINT_STEP(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
