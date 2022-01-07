; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_nextchar.c_readUtf8.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_nextchar.c_readUtf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readUtf8.validBits = internal constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\00\01\02\03\04\05\06\07\00\01\02\03\00\01\00\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @readUtf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readUtf8(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 192
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  store i32 1, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 %18, 192
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* @readUtf8.validBits, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %33, %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 192
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %45

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, 6
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 63, %42
  %44 = add i32 %35, %43
  store i32 %44, i32* %6, align 4
  br label %24

45:                                               ; preds = %24
  %46 = load i32, i32* %6, align 4
  %47 = icmp ult i32 %46, 128
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, -2048
  %51 = icmp eq i32 %50, 55296
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, -2
  %55 = icmp eq i32 %54, 65534
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48, %45
  store i32 65533, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, i32* %6, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
