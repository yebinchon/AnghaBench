; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_need_nb_tile_parts_correction.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_need_nb_tile_parts_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPJ_FALSE = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i32 0, align 4
@J2K_MS_SOT = common dso_local global i64 0, align 8
@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Stream too short\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Inconsistent marker size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32*)* @opj_j2k_need_nb_tile_parts_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_j2k_need_nb_tile_parts_correction(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [10 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @OPJ_FALSE, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @opj_stream_has_seek(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %24, i32* %5, align 4
  br label %166

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @opj_stream_tell(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %31, i32* %5, align 4
  br label %166

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %148, %32
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @opj_stream_read_data(i32* %34, i32* %35, i64 2, i32* %36)
  %38 = icmp ne i64 %37, 2
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @opj_stream_seek(i32* %40, i32 %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %46, i32* %5, align 4
  br label %166

47:                                               ; preds = %39
  %48 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %48, i32* %5, align 4
  br label %166

49:                                               ; preds = %33
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %51 = call i32 @opj_read_bytes(i32* %50, i64* %12, i32 2)
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @J2K_MS_SOT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @opj_stream_seek(i32* %56, i32 %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %62, i32* %5, align 4
  br label %166

63:                                               ; preds = %55
  %64 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %64, i32* %5, align 4
  br label %166

65:                                               ; preds = %49
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @opj_stream_read_data(i32* %66, i32* %67, i64 2, i32* %68)
  %70 = icmp ne i64 %69, 2
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @EVT_ERROR, align 4
  %74 = call i32 @opj_event_msg(i32* %72, i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %75, i32* %5, align 4
  br label %166

76:                                               ; preds = %65
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %78 = call i32 @opj_read_bytes(i32* %77, i64* %13, i32 2)
  %79 = load i64, i64* %13, align 8
  %80 = icmp ne i64 %79, 10
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* @EVT_ERROR, align 4
  %84 = call i32 @opj_event_msg(i32* %82, i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %85, i32* %5, align 4
  br label %166

86:                                               ; preds = %76
  %87 = load i64, i64* %13, align 8
  %88 = sub nsw i64 %87, 2
  store i64 %88, i64* %13, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %91 = load i64, i64* %13, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i64 @opj_stream_read_data(i32* %89, i32* %90, i64 %91, i32* %92)
  %94 = load i64, i64* %13, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* @EVT_ERROR, align 4
  %99 = call i32 @opj_event_msg(i32* %97, i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %100, i32* %5, align 4
  br label %166

101:                                              ; preds = %86
  %102 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %103 = load i64, i64* %13, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @opj_j2k_get_sot_values(i32* %102, i64 %103, i64* %14, i64* %15, i64* %16, i64* %17, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %108, i32* %5, align 4
  br label %166

109:                                              ; preds = %101
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %149

114:                                              ; preds = %109
  %115 = load i64, i64* %15, align 8
  %116 = icmp slt i64 %115, 14
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @opj_stream_seek(i32* %118, i32 %119, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %124, i32* %5, align 4
  br label %166

125:                                              ; preds = %117
  %126 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %126, i32* %5, align 4
  br label %166

127:                                              ; preds = %114
  %128 = load i64, i64* %15, align 8
  %129 = sub nsw i64 %128, 12
  store i64 %129, i64* %15, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = load i64, i64* %15, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @opj_stream_skip(i32* %130, i32 %132, i32* %133)
  %135 = load i64, i64* %15, align 8
  %136 = trunc i64 %135 to i32
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %127
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @opj_stream_seek(i32* %139, i32 %140, i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %145, i32* %5, align 4
  br label %166

146:                                              ; preds = %138
  %147 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %147, i32* %5, align 4
  br label %166

148:                                              ; preds = %127
  br label %33

149:                                              ; preds = %113
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* %17, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* @OPJ_TRUE, align 4
  %155 = load i32*, i32** %8, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32*, i32** %9, align 8
  %160 = call i32 @opj_stream_seek(i32* %157, i32 %158, i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %156
  %163 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %163, i32* %5, align 4
  br label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %162, %146, %144, %125, %123, %107, %96, %81, %71, %63, %61, %47, %45, %30, %23
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @opj_stream_has_seek(i32*) #1

declare dso_local i32 @opj_stream_tell(i32*) #1

declare dso_local i64 @opj_stream_read_data(i32*, i32*, i64, i32*) #1

declare dso_local i32 @opj_stream_seek(i32*, i32, i32*) #1

declare dso_local i32 @opj_read_bytes(i32*, i64*, i32) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*) #1

declare dso_local i32 @opj_j2k_get_sot_values(i32*, i64, i64*, i64*, i64*, i64*, i32*) #1

declare dso_local i32 @opj_stream_skip(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
