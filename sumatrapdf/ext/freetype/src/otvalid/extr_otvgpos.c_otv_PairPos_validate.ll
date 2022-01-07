; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/otvalid/extr_otvgpos.c_otv_PairPos_validate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/otvalid/extr_otvgpos.c_otv_PairPos_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"PairPos\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" (format %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c" (PairSetCount = %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" (ClassCount1 = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" (ClassCount2 = %d)\0A\00", align 1
@FT_INVALID_FORMAT = common dso_local global i32 0, align 4
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*)* @otv_PairPos_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_PairPos_validate(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %5, align 4
  %22 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @OTV_LIMIT_CHECK(i32 2)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @FT_NEXT_USHORT(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @OTV_TRACE(i8* %28)
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %162 [
    i32 1, label %31
    i32 2, label %69
  ]

31:                                               ; preds = %2
  %32 = call i32 @OTV_LIMIT_CHECK(i32 8)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @FT_NEXT_USHORT(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @FT_NEXT_USHORT(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @FT_NEXT_USHORT(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @FT_NEXT_USHORT(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @OTV_TRACE(i8* %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = call i32 @otv_Coverage_validate(i32 %47, %struct.TYPE_7__* %48, i32 -1)
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 2
  %52 = call i32 @OTV_LIMIT_CHECK(i32 %51)
  br label %53

53:                                               ; preds = %65, %31
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @FT_NEXT_USHORT(i32 %58)
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = call i32 @otv_PairSet_validate(i32 %60, i32 %61, i32 %62, %struct.TYPE_7__* %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  br label %53

68:                                               ; preds = %53
  br label %164

69:                                               ; preds = %2
  %70 = call i32 @OTV_LIMIT_CHECK(i32 14)
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @FT_NEXT_USHORT(i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @FT_NEXT_USHORT(i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @FT_NEXT_USHORT(i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @FT_NEXT_USHORT(i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @FT_NEXT_USHORT(i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @FT_NEXT_USHORT(i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @FT_NEXT_USHORT(i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @OTV_TRACE(i8* %87)
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @OTV_TRACE(i8* %91)
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @otv_value_length(i32 %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @otv_value_length(i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = call i32 @otv_Coverage_validate(i32 %99, %struct.TYPE_7__* %100, i32 -1)
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %102, %103
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = call i32 @otv_ClassDef_validate(i32 %104, %struct.TYPE_7__* %105)
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %107, %108
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = call i32 @otv_ClassDef_validate(i32 %109, %struct.TYPE_7__* %110)
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %115, %116
  %118 = mul nsw i32 %114, %117
  %119 = call i32 @OTV_LIMIT_CHECK(i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %158, %69
  %124 = load i32, i32* %16, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %161

126:                                              ; preds = %123
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %20, align 4
  br label %128

128:                                              ; preds = %154, %126
  %129 = load i32, i32* %20, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %128
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = call i32 @otv_ValueRecord_validate(i32 %135, i32 %136, %struct.TYPE_7__* %137)
  br label %139

139:                                              ; preds = %134, %131
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = call i32 @otv_ValueRecord_validate(i32 %146, i32 %147, %struct.TYPE_7__* %148)
  br label %150

150:                                              ; preds = %145, %139
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %20, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %20, align 4
  br label %128

157:                                              ; preds = %128
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %16, align 4
  br label %123

161:                                              ; preds = %123
  br label %164

162:                                              ; preds = %2
  %163 = load i32, i32* @FT_INVALID_FORMAT, align 4
  br label %164

164:                                              ; preds = %162, %161, %68
  %165 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @otv_Coverage_validate(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @otv_PairSet_validate(i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @otv_value_length(i32) #1

declare dso_local i32 @otv_ClassDef_validate(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @otv_ValueRecord_validate(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
