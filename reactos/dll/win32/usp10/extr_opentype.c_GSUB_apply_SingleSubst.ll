; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_SingleSubst.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_SingleSubst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Single Substitution Subtable\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"  subtype 1, delta %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"  Glyph 0x%x ->\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"  subtype 2,  glyph count %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"  Coverage index %i\0A\00", align 1
@GSUB_E_NOGLYPH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"    Glyph is 0x%x ->\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64*, i64, i64, i64*)* @GSUB_apply_SingleSubst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GSUB_apply_SingleSubst(%struct.TYPE_6__* %0, i64* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %153, %5
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @GET_BE_WORD(i32 %24)
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %156

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @GSUB_get_subtable(%struct.TYPE_6__* %28, i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %13, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @GET_BE_WORD(i32 %34)
  %36 = icmp eq i64 %35, 1
  br i1 %36, label %37, label %86

37:                                               ; preds = %27
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @GET_BE_WORD(i32 %40)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @GET_BE_WORD(i32 %45)
  %47 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = bitcast %struct.TYPE_8__* %48 to i32*
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @GSUB_is_glyph_covered(i32* %52, i64 %56)
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %85

59:                                               ; preds = %37
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @GET_BE_WORD(i32 %71)
  %73 = add i64 %68, %72
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %73, i64* %76, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %80)
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %82, %83
  store i64 %84, i64* %6, align 8
  br label %158

85:                                               ; preds = %37
  br label %152

86:                                               ; preds = %27
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %88 = bitcast %struct.TYPE_8__* %87 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %15, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @GET_BE_WORD(i32 %91)
  store i64 %92, i64* %17, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @GET_BE_WORD(i32 %95)
  %97 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %99 = bitcast %struct.TYPE_7__* %98 to i32*
  %100 = load i64, i64* %17, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i64*, i64** %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @GSUB_is_glyph_covered(i32* %101, i64 %105)
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %16, align 8
  %108 = load i64, i64* %16, align 8
  %109 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %108)
  %110 = load i64, i64* %16, align 8
  %111 = icmp ne i64 %110, -1
  br i1 %111, label %112, label %151

112:                                              ; preds = %86
  %113 = load i64*, i64** %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %16, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @GET_BE_WORD(i32 %122)
  %124 = icmp eq i64 %116, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i64, i64* @GSUB_E_NOGLYPH, align 8
  store i64 %126, i64* %6, align 8
  br label %158

127:                                              ; preds = %112
  %128 = load i64*, i64** %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %16, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @GET_BE_WORD(i32 %138)
  %140 = load i64*, i64** %8, align 8
  %141 = load i64, i64* %9, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  store i64 %139, i64* %142, align 8
  %143 = load i64*, i64** %8, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %146)
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* %10, align 8
  %150 = add i64 %148, %149
  store i64 %150, i64* %6, align 8
  br label %158

151:                                              ; preds = %86
  br label %152

152:                                              ; preds = %151, %85
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %19

156:                                              ; preds = %19
  %157 = load i64, i64* @GSUB_E_NOGLYPH, align 8
  store i64 %157, i64* %6, align 8
  br label %158

158:                                              ; preds = %156, %127, %125, %59
  %159 = load i64, i64* %6, align 8
  ret i64 %159
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @GET_BE_WORD(i32) #1

declare dso_local i64 @GSUB_get_subtable(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @GSUB_is_glyph_covered(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
