; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_create_wide_manifest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_create_wide_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i64)* @create_wide_manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_wide_manifest(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = add nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32* @HeapAlloc(i32 %13, i32 0, i32 %19)
  store i32* %20, i32** %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @CP_ACP, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 %30, 1
  %32 = call i32 @MultiByteToWideChar(i32 %25, i32 0, i8* %26, i32 -1, i32* %28, i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 65279, i32* %34, align 4
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %61, %37
  %39 = load i64, i64* %12, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load i32*, i32** %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = or i32 %50, %56
  %58 = load i32*, i32** %9, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %45
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %12, align 8
  br label %38

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64, %4
  %66 = load i8*, i8** %5, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = bitcast i32* %70 to i8*
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i64 @create_manifest_file(i8* %66, i8* %71, i32 %79, i32* null, i32* null)
  store i64 %80, i64* %10, align 8
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @HeapFree(i32 %81, i32 0, i32* %82)
  %84 = load i64, i64* %10, align 8
  ret i64 %84
}

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i64 @create_manifest_file(i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
