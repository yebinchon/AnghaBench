; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/otvalid/extr_otvjstf.c_otv_JstfScript_validate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/otvalid/extr_otvjstf.c_otv_JstfScript_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@ExtGlyph = common dso_local global i32 0, align 4
@DefJstfLangSys = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"JstfScript\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" (JstfLangSysCount = %d)\0A\00", align 1
@ExtenderGlyph = common dso_local global i32 0, align 4
@JstfLangSys = common dso_local global i32 0, align 4
@JstfPriority = common dso_local global i32 0, align 4
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @otv_JstfScript_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_JstfScript_validate(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @ExtGlyph, align 4
  %10 = call i32 @OTV_OPTIONAL_TABLE(i32 %9)
  %11 = load i32, i32* @DefJstfLangSys, align 4
  %12 = call i32 @OTV_OPTIONAL_TABLE(i32 %11)
  %13 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @OTV_LIMIT_CHECK(i32 6)
  %15 = load i32, i32* @ExtGlyph, align 4
  %16 = call i32 @OTV_OPTIONAL_OFFSET(i32 %15)
  %17 = load i32, i32* @DefJstfLangSys, align 4
  %18 = call i32 @OTV_OPTIONAL_OFFSET(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @FT_NEXT_USHORT(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @OTV_TRACE(i8* %23)
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 6
  %27 = add nsw i32 %26, 6
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @ExtGlyph, align 4
  %29 = call i32 @OTV_SIZE_CHECK(i32 %28)
  %30 = load i32, i32* @ExtGlyph, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ExtenderGlyph, align 4
  %39 = call i32 @OTV_NEST1(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ExtGlyph, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = call i32 @OTV_RUN(i32 %42, %struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %32, %2
  %46 = load i32, i32* @DefJstfLangSys, align 4
  %47 = call i32 @OTV_SIZE_CHECK(i32 %46)
  %48 = load i32, i32* @DefJstfLangSys, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @JstfLangSys, align 4
  %52 = load i32, i32* @JstfPriority, align 4
  %53 = call i32 @OTV_NEST2(i32 %51, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @DefJstfLangSys, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = call i32 @OTV_RUN(i32 %56, %struct.TYPE_4__* %57)
  br label %59

59:                                               ; preds = %50, %45
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 6, %60
  %62 = call i32 @OTV_LIMIT_CHECK(i32 %61)
  %63 = load i32, i32* @JstfLangSys, align 4
  %64 = load i32, i32* @JstfPriority, align 4
  %65 = call i32 @OTV_NEST2(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %78, %59
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 4
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @FT_NEXT_USHORT(i32 %73)
  %75 = add nsw i32 %72, %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = call i32 @OTV_RUN(i32 %75, %struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %7, align 4
  br label %66

81:                                               ; preds = %66
  %82 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_OPTIONAL_TABLE(i32) #1

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @OTV_SIZE_CHECK(i32) #1

declare dso_local i32 @OTV_NEST1(i32) #1

declare dso_local i32 @OTV_RUN(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @OTV_NEST2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
