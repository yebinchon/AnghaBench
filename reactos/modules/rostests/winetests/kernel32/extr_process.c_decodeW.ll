; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_process.c_decodeW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_process.c_decodeW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @decodeW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decodeW(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = sdiv i32 %8, 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %4, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %78

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = mul i64 %16, 2
  %18 = add i64 %17, 1
  %19 = call i64 @grab_memory(i64 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %70, %15
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %4, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 4, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @decode_char(i8 signext %32)
  %34 = shl i32 %33, 12
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 4, %36
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @decode_char(i8 signext %41)
  %43 = shl i32 %42, 8
  %44 = or i32 %34, %43
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 4, %46
  %48 = add nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @decode_char(i8 signext %51)
  %53 = shl i32 %52, 4
  %54 = or i32 %44, %53
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 4, %56
  %58 = add nsw i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @decode_char(i8 signext %61)
  %63 = shl i32 %62, 0
  %64 = or i32 %54, %63
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 %65, i8* %69, align 1
  br label %70

70:                                               ; preds = %26
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %21

73:                                               ; preds = %21
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %5, align 8
  store i8* %77, i8** %2, align 8
  br label %78

78:                                               ; preds = %73, %14
  %79 = load i8*, i8** %2, align 8
  ret i8* %79
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @grab_memory(i64) #1

declare dso_local i32 @decode_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
