; ModuleID = '/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_ketama.c_ketama_hash.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_ketama.c_ketama_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @ketama_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ketama_hash(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %11 = call i32 @md5_signature(i8* %8, i64 %9, i8* %10)
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 4
  %14 = add nsw i32 3, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 255
  %20 = shl i32 %19, 24
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 4
  %23 = add nsw i32 2, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 16
  %30 = or i32 %20, %29
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 4
  %33 = add nsw i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 255
  %39 = shl i32 %38, 8
  %40 = or i32 %30, %39
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 4
  %43 = add nsw i32 0, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 255
  %49 = or i32 %40, %48
  ret i32 %49
}

declare dso_local i32 @md5_signature(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
