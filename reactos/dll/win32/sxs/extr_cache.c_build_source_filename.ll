; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/sxs/extr_cache.c_build_source_filename.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/sxs/extr_cache.c_build_source_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.file*)* @build_source_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_source_filename(i32* %0, %struct.file* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @strrchrW(i32* %9, i8 signext 92)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @strrchrW(i32* %14, i8 signext 47)
  store i32* %15, i32** %7, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @strdupW(i32* %20)
  store i32* %21, i32** %3, align 8
  br label %62

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = add nsw i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strlenW(i32 %35)
  %37 = add nsw i32 %32, %36
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32* @HeapAlloc(i32 %31, i32 0, i32 %41)
  store i32* %42, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %62

45:                                               ; preds = %22
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(i32* %46, i32* %47, i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcpyW(i32* %56, i32 %59)
  %61 = load i32*, i32** %6, align 8
  store i32* %61, i32** %3, align 8
  br label %62

62:                                               ; preds = %45, %44, %19
  %63 = load i32*, i32** %3, align 8
  ret i32* %63
}

declare dso_local i32* @strrchrW(i32*, i8 signext) #1

declare dso_local i32* @strdupW(i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @strcpyW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
