; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_walChecksumBytes.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_walChecksumBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i64*, i64*)* @walChecksumBytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walChecksumBytes(i32 %0, i32* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to i64*
  store i64* %16, i64** %13, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = bitcast i32* %20 to i64*
  store i64* %21, i64** %14, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load i64*, i64** %9, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  br label %32

31:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 8
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 7
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i64*, i64** %13, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %13, align 8
  %48 = load i64, i64* %46, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %11, align 8
  %53 = load i64*, i64** %13, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %13, align 8
  %55 = load i64, i64* %53, align 8
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %45
  %61 = load i64*, i64** %13, align 8
  %62 = load i64*, i64** %14, align 8
  %63 = icmp ult i64* %61, %62
  br i1 %63, label %45, label %64

64:                                               ; preds = %60
  br label %90

65:                                               ; preds = %32
  br label %66

66:                                               ; preds = %85, %65
  %67 = load i64*, i64** %13, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @BYTESWAP32(i64 %69)
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i64, i64* %11, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %11, align 8
  %75 = load i64*, i64** %13, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @BYTESWAP32(i64 %77)
  %79 = load i64, i64* %11, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i64, i64* %12, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %12, align 8
  %83 = load i64*, i64** %13, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 2
  store i64* %84, i64** %13, align 8
  br label %85

85:                                               ; preds = %66
  %86 = load i64*, i64** %13, align 8
  %87 = load i64*, i64** %14, align 8
  %88 = icmp ult i64* %86, %87
  br i1 %88, label %66, label %89

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %64
  %91 = load i64, i64* %11, align 8
  %92 = load i64*, i64** %10, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64*, i64** %10, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  store i64 %94, i64* %96, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @BYTESWAP32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
