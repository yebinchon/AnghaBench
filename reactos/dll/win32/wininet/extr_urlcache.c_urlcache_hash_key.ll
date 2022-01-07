; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_hash_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_hash_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@urlcache_hash_key.lookupTable = internal constant [256 x i8] c"\01\0En\19a\AE\84w\8A\AA}v\1B\E9\8C3W\C5\B1k\EA\A98D\1E\07\ADI\BC($A1\D5h\BE9\D3\94\DF0s\0F\02C\BA\D2\1C\0C\B5gF\16:KN\B7\A7\EE\9D|\93\AC\90\B0\A1\8DV<B\80S\9C\F1O.\A8\C6)\FE\B2U\FD\ED\FA\9A\85X#\CE_t\FC\C06\DDf\DA\FF\F0Rj\9E\C9=\03Y\09*\9B\9F]\A6P2\22\AF\C3dc\1A\96\10\91\04!\08\BDy@MH\D0\F5\82z\8F7i\86\1D\A4\B9\C2\C1\EFe\F2\05\AB~\0BJ;\89\E4l\BF\E8\8B\06\18Q\14\7F\11[\\\FB\97\E1\CF\15bqpT\E2\12\D6\C7\BB\0D ^\DC\E0\D4\F7\CC\C4+\F9\EC-\F4o\B6\99\88\81Z\D9\CA\13\A5\E7G\E6\8E`\E3>\B3\F6r\A25\A0\D7\CD\B4/m,&\1F\95\87\00\D84?\17%E'u\92\B8\A3\C8\DE\EB\F8\F3\DB\0A\98\83{\E5\CBLx\D1", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @urlcache_hash_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urlcache_hash_key(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 4
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  %14 = and i32 %13, 255
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* @urlcache_hash_key.lookupTable, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %20
  store i32 %18, i32* %21, align 4
  br label %22

22:                                               ; preds = %9
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %5

25:                                               ; preds = %5
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %2, align 8
  br label %28

28:                                               ; preds = %56, %25
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 4
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %39, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* @urlcache_hash_key.lookupTable, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %50
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %2, align 8
  br label %28

59:                                               ; preds = %28
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %61 = load i32, i32* %60, align 16
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
