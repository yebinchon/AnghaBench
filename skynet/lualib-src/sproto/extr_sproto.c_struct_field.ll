; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_struct_field.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_struct_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZEOF_LENGTH = common dso_local global i64 0, align 8
@SIZEOF_HEADER = common dso_local global i32 0, align 4
@SIZEOF_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @struct_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @struct_field(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @SIZEOF_LENGTH, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %87

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @toword(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @SIZEOF_HEADER, align 4
  %20 = load i32, i32* @SIZEOF_FIELD, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %87

29:                                               ; preds = %16
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @SIZEOF_HEADER, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %4, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %82, %29
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @SIZEOF_FIELD, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = call i32 @toword(i32* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %82

57:                                               ; preds = %46
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @SIZEOF_LENGTH, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %87

62:                                               ; preds = %57
  %63 = load i32*, i32** %4, align 8
  %64 = call i64 @todword(i32* %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @SIZEOF_LENGTH, align 8
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %66, %67
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %87

71:                                               ; preds = %62
  %72 = load i64, i64* @SIZEOF_LENGTH, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %72, %73
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %74
  store i32* %76, i32** %4, align 8
  %77 = load i64, i64* @SIZEOF_LENGTH, align 8
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %77, %78
  %80 = load i64, i64* %5, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %71, %56
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %42

85:                                               ; preds = %42
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %70, %61, %28, %15
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @toword(i32*) #1

declare dso_local i64 @todword(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
