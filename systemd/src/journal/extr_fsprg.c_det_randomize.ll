; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_det_randomize.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_det_randomize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RND_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i32)* @det_randomize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @det_randomize(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @RND_HASH, align 4
  %17 = call i64 @gcry_md_get_algo_dlen(i32 %16)
  store i64 %17, i64* %13, align 8
  %18 = load i32, i32* @RND_HASH, align 4
  %19 = call i32 @gcry_md_open(i32* %11, i32 %18, i32 0)
  %20 = load i32, i32* %11, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @gcry_md_write(i32 %20, i8* %21, i64 %22)
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  %28 = call i32 @gcry_md_putc(i32 %24, i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = call i32 @gcry_md_putc(i32 %29, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = call i32 @gcry_md_putc(i32 %34, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = ashr i32 %40, 0
  %42 = and i32 %41, 255
  %43 = call i32 @gcry_md_putc(i32 %39, i32 %42)
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %95, %5
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @gcry_md_copy(i32* %12, i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %15, align 4
  %52 = ashr i32 %51, 24
  %53 = and i32 %52, 255
  %54 = call i32 @gcry_md_putc(i32 %50, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %15, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = call i32 @gcry_md_putc(i32 %55, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %15, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = call i32 @gcry_md_putc(i32 %60, i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %15, align 4
  %67 = ashr i32 %66, 0
  %68 = and i32 %67, 255
  %69 = call i32 @gcry_md_putc(i32 %65, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @gcry_md_final(i32 %70)
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %47
  %76 = load i64, i64* %7, align 8
  br label %79

77:                                               ; preds = %47
  %78 = load i64, i64* %13, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i64 [ %76, %75 ], [ %78, %77 ]
  store i64 %80, i64* %14, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @RND_HASH, align 4
  %84 = call i32 @gcry_md_read(i32 %82, i32 %83)
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @memcpy(i8* %81, i32 %84, i64 %85)
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @gcry_md_close(i32 %87)
  %89 = load i64, i64* %14, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr i8, i8* %90, i64 %89
  store i8* %91, i8** %6, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %79
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %44

98:                                               ; preds = %44
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @gcry_md_close(i32 %99)
  ret void
}

declare dso_local i64 @gcry_md_get_algo_dlen(i32) #1

declare dso_local i32 @gcry_md_open(i32*, i32, i32) #1

declare dso_local i32 @gcry_md_write(i32, i8*, i64) #1

declare dso_local i32 @gcry_md_putc(i32, i32) #1

declare dso_local i32 @gcry_md_copy(i32*, i32) #1

declare dso_local i32 @gcry_md_final(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @gcry_md_read(i32, i32) #1

declare dso_local i32 @gcry_md_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
