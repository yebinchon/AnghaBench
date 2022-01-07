; ModuleID = '/home/carl/AnghaBench/tig/src/extr_string.c_utf8_string_contains.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_string.c_utf8_string_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @utf8_string_contains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_string_contains(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i64, i64* %6, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @utf8proc_iterate(i32* %17, i64 %18, i32* %7)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %40

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.TYPE_3__* @utf8proc_get_property(i32 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %41

33:                                               ; preds = %23
  %34 = load i64, i64* %8, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %34
  store i8* %36, i8** %4, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %6, align 8
  br label %12

40:                                               ; preds = %22, %12
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @utf8proc_iterate(i32*, i64, i32*) #1

declare dso_local %struct.TYPE_3__* @utf8proc_get_property(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
