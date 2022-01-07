; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvmath.c_otv_MathGlyphConstruction_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvmath.c_otv_MathGlyphConstruction_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GlyphAssembly = common dso_local global i32 0, align 4
@FT_INVALID_GLYPH_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @otv_MathGlyphConstruction_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_MathGlyphConstruction_validate(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @GlyphAssembly, align 4
  %12 = call i32 @OTV_OPTIONAL_TABLE(i32 %11)
  %13 = call i32 @OTV_LIMIT_CHECK(i32 4)
  %14 = load i32, i32* @GlyphAssembly, align 4
  %15 = call i32 @OTV_OPTIONAL_OFFSET(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @FT_NEXT_USHORT(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 4, %18
  %20 = call i32 @OTV_LIMIT_CHECK(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 4, %21
  %23 = add nsw i32 4, %22
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %41, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @FT_NEXT_USHORT(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @FT_INVALID_GLYPH_ID, align 4
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load i32, i32* @GlyphAssembly, align 4
  %46 = call i32 @OTV_SIZE_CHECK(i32 %45)
  %47 = load i32, i32* @GlyphAssembly, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @GlyphAssembly, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = call i32 @otv_GlyphAssembly_validate(i32 %52, %struct.TYPE_4__* %53)
  br label %55

55:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @OTV_OPTIONAL_TABLE(i32) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_SIZE_CHECK(i32) #1

declare dso_local i32 @otv_GlyphAssembly_validate(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
