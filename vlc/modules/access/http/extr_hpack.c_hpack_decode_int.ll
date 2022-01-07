; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_int.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i64*)* @hpack_decode_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpack_decode_int(i32 %0, i32** noalias %1, i64* noalias %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp uge i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp ule i32 %21, 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i1 [ false, %3 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %9, align 8
  %28 = icmp uge i64 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* %34, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %68, %44
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %9, align 8
  %48 = icmp ult i64 %46, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %79

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = icmp uge i32 %52, 28
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @ERANGE, align 4
  store i32 %55, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %79

56:                                               ; preds = %51
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %8, align 8
  %59 = load i32, i32* %57, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = and i32 %60, 127
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 7
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, 128
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %45, label %72

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %23
  %74 = load i32*, i32** %8, align 8
  %75 = load i32**, i32*** %6, align 8
  store i32* %74, i32** %75, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64*, i64** %7, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %54, %49
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
