; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_decodeA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_decodeA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decodeA.decoded = internal global [1024 x i8] zeroinitializer, align 16
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"string is too long!\0A\00", align 1
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
  br label %55

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = icmp uge i64 %16, 1024
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @assert(i32 0)
  br label %22

22:                                               ; preds = %18, %15
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @decodeA.decoded, i64 0, i64 0), i8** %4, align 8
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = mul i64 2, %29
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @decode_char(i8 signext %32)
  %34 = shl i32 %33, 4
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 2, %36
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @decode_char(i8 signext %40)
  %42 = or i32 %34, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 %43, i8* %46, align 1
  br label %47

47:                                               ; preds = %27
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %23

50:                                               ; preds = %23
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %4, align 8
  store i8* %54, i8** %2, align 8
  br label %55

55:                                               ; preds = %50, %14
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @decode_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
