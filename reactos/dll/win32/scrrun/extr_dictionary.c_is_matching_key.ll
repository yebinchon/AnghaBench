; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_dictionary.c_is_matching_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_dictionary.c_is_matching_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyitem_pair = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.keyitem_pair*, i32*, i64)* @is_matching_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_matching_key(i32* %0, %struct.keyitem_pair* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.keyitem_pair*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.keyitem_pair* %1, %struct.keyitem_pair** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call i64 @is_string_key(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %4
  %14 = load %struct.keyitem_pair*, %struct.keyitem_pair** %7, align 8
  %15 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %14, i32 0, i32 1
  %16 = call i64 @is_string_key(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.keyitem_pair*, %struct.keyitem_pair** %7, align 8
  %21 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %61

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.keyitem_pair*, %struct.keyitem_pair** %7, align 8
  %30 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %29, i32 0, i32 1
  %31 = call i64 @strcmp_key(i32* %27, i32* %28, i32* %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %61

34:                                               ; preds = %13, %4
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @is_string_key(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.keyitem_pair*, %struct.keyitem_pair** %7, align 8
  %40 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %39, i32 0, i32 1
  %41 = call i64 @is_string_key(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38, %34
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @is_string_key(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load %struct.keyitem_pair*, %struct.keyitem_pair** %7, align 8
  %49 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %48, i32 0, i32 1
  %50 = call i64 @is_string_key(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %38
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %5, align 4
  br label %61

54:                                               ; preds = %47, %43
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.keyitem_pair*, %struct.keyitem_pair** %7, align 8
  %57 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %54, %52, %26, %24
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @is_string_key(i32*) #1

declare dso_local i64 @strcmp_key(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
