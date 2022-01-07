; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_AlternateSubst.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_AlternateSubst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Alternate Substitution Subtable\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%i alternates, picking index 0\0A\00", align 1
@GSUB_E_NOGLYPH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"  Glyph 0x%x ->\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64*, i64, i64, i64*)* @GSUB_apply_AlternateSubst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GSUB_apply_AlternateSubst(%struct.TYPE_6__* %0, i64* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %105, %5
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @GET_BE_WORD(i32 %23)
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %108

26:                                               ; preds = %18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @GSUB_get_subtable(%struct.TYPE_6__* %27, i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %14, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @GET_BE_WORD(i32 %33)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %37 = bitcast %struct.TYPE_7__* %36 to i32*
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @GSUB_is_glyph_covered(i32* %40, i64 %44)
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = icmp ne i64 %46, -1
  br i1 %47, label %48, label %104

48:                                               ; preds = %26
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %15, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @GET_BE_WORD(i32 %54)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = bitcast %struct.TYPE_7__* %57 to i32*
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = bitcast i32* %61 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %16, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @GET_BE_WORD(i32 %65)
  %67 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load i64*, i64** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @GET_BE_WORD(i32 %76)
  %78 = icmp eq i64 %71, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %48
  %80 = load i64, i64* @GSUB_E_NOGLYPH, align 8
  store i64 %80, i64* %6, align 8
  br label %110

81:                                               ; preds = %48
  %82 = load i64*, i64** %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @GET_BE_WORD(i32 %91)
  %93 = load i64*, i64** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %92, i64* %95, align 8
  %96 = load i64*, i64** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %101, %102
  store i64 %103, i64* %6, align 8
  br label %110

104:                                              ; preds = %26
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %18

108:                                              ; preds = %18
  %109 = load i64, i64* @GSUB_E_NOGLYPH, align 8
  store i64 %109, i64* %6, align 8
  br label %110

110:                                              ; preds = %108, %81, %79
  %111 = load i64, i64* %6, align 8
  ret i64 %111
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @GET_BE_WORD(i32) #1

declare dso_local i64 @GSUB_get_subtable(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @GSUB_is_glyph_covered(i32*, i64) #1

declare dso_local i32 @FIXME(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
