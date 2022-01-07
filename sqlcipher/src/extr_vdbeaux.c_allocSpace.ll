; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_allocSpace.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_allocSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ReusableSpace = type { i8*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ReusableSpace*, i8*, i64)* @allocSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @allocSpace(%struct.ReusableSpace* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ReusableSpace*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ReusableSpace* %0, %struct.ReusableSpace** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ReusableSpace*, %struct.ReusableSpace** %4, align 8
  %8 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @EIGHT_BYTE_ALIGNMENT(i8* %9)
  %11 = call i32 @assert(i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @ROUND8(i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.ReusableSpace*, %struct.ReusableSpace** %4, align 8
  %19 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.ReusableSpace*, %struct.ReusableSpace** %4, align 8
  %25 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.ReusableSpace*, %struct.ReusableSpace** %4, align 8
  %29 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.ReusableSpace*, %struct.ReusableSpace** %4, align 8
  %32 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8* %34, i8** %5, align 8
  br label %43

35:                                               ; preds = %14
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.ReusableSpace*, %struct.ReusableSpace** %4, align 8
  %38 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  br label %43

43:                                               ; preds = %35, %22
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @EIGHT_BYTE_ALIGNMENT(i8* %45)
  %47 = call i32 @assert(i32 %46)
  %48 = load i8*, i8** %5, align 8
  ret i8* %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EIGHT_BYTE_ALIGNMENT(i8*) #1

declare dso_local i64 @ROUND8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
