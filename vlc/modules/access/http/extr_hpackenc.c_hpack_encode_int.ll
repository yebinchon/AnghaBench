; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpackenc.c_hpack_encode_int.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpackenc.c_hpack_encode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32, i32)* @hpack_encode_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hpack_encode_int(i32* noalias %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp uge i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ule i32 %15, 8
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i1 [ false, %4 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %10, align 4
  store i64 1, i64* %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %27
  store i64 1, i64* %5, align 8
  br label %78

37:                                               ; preds = %17
  %38 = load i64, i64* %7, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  %44 = load i32, i32* %42, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %42, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %64, %46
  %51 = load i32, i32* %8, align 4
  %52 = icmp uge i32 %51, 128
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 127
  %61 = or i32 128, %60
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %8, align 4
  %66 = lshr i32 %65, 7
  store i32 %66, i32* %8, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i64, i64* %11, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %76, %36
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
