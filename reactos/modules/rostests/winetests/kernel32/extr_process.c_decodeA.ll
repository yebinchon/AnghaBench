; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_process.c_decodeA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_process.c_decodeA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @decodeA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decodeA(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = sdiv i32 %8, 2
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %5, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %51

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %16, 1
  %18 = call i8* @grab_memory(i64 %17)
  store i8* %18, i8** %4, align 8
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %43, %15
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = mul i64 2, %25
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @decode_char(i8 signext %28)
  %30 = shl i32 %29, 4
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = mul i64 2, %32
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @decode_char(i8 signext %36)
  %38 = or i32 %30, %37
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 %39, i8* %42, align 1
  br label %43

43:                                               ; preds = %23
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %19

46:                                               ; preds = %19
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %46, %14
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @grab_memory(i64) #1

declare dso_local i32 @decode_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
