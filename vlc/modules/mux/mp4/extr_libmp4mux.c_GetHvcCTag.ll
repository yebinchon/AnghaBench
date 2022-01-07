; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetHvcCTag.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetHvcCTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hevc_dcr_params = type { i64, i64*, i64, i64*, i64, i64*, i64, i64*, i64, i64*, i32**, i32**, i32**, i32**, i32** }

@.str = private unnamed_addr constant [5 x i8] c"hvcC\00", align 1
@HEVC_DCR_VPS_COUNT = common dso_local global i64 0, align 8
@HEVC_DCR_SPS_COUNT = common dso_local global i64 0, align 8
@HEVC_DCR_PPS_COUNT = common dso_local global i64 0, align 8
@HEVC_DCR_SEI_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i32)* @GetHvcCTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetHvcCTag(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hevc_dcr_params, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = call i32* @box_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %3
  %22 = load i32*, i32** %8, align 8
  store i32* %22, i32** %4, align 8
  br label %173

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @hevc_ishvcC(i32* %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @bo_add_mem(i32* %29, i64 %30, i32* %31)
  %33 = load i32*, i32** %8, align 8
  store i32* %33, i32** %4, align 8
  br label %173

34:                                               ; preds = %23
  %35 = bitcast %struct.hevc_dcr_params* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 120, i1 false)
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @hxxx_iterator_init(i32* %12, i32* %36, i64 %37, i32 0)
  br label %39

39:                                               ; preds = %156, %34
  %40 = call i64 @hxxx_annexb_iterate_next(i32* %12, i32** %10, i64* %11)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %157

42:                                               ; preds = %39
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @hevc_getNALType(i32* %43)
  switch i32 %44, label %155 [
    i32 128, label %45
    i32 130, label %67
    i32 132, label %89
    i32 131, label %111
    i32 129, label %133
  ]

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HEVC_DCR_VPS_COUNT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 14
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  store i32* %51, i32** %56, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %57, i64* %62, align 8
  %63 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %50, %45
  br label %156

67:                                               ; preds = %42
  %68 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HEVC_DCR_SPS_COUNT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 13
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* %73, i32** %78, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 3
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 %79, i64* %84, align 8
  %85 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %72, %67
  br label %156

89:                                               ; preds = %42
  %90 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @HEVC_DCR_PPS_COUNT, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 12
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  store i32* %95, i32** %100, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 5
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 %101, i64* %106, align 8
  %107 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %94, %89
  br label %156

111:                                              ; preds = %42
  %112 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @HEVC_DCR_SEI_COUNT, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 11
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  store i32* %117, i32** %122, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 7
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  store i64 %123, i64* %128, align 8
  %129 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %116, %111
  br label %156

133:                                              ; preds = %42
  %134 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @HEVC_DCR_SEI_COUNT, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load i32*, i32** %10, align 8
  %140 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 10
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  store i32* %139, i32** %144, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 9
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 8
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  store i64 %145, i64* %150, align 8
  %151 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %9, i32 0, i32 8
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %138, %133
  br label %156

155:                                              ; preds = %42
  br label %156

156:                                              ; preds = %155, %154, %132, %110, %88, %66
  br label %39

157:                                              ; preds = %39
  %158 = load i32, i32* %7, align 4
  %159 = call i32* @hevc_create_dcr(%struct.hevc_dcr_params* %9, i32 4, i32 %158, i64* %13)
  store i32* %159, i32** %14, align 8
  %160 = load i32*, i32** %14, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @bo_free(i32* %163)
  store i32* null, i32** %4, align 8
  br label %173

165:                                              ; preds = %157
  %166 = load i32*, i32** %8, align 8
  %167 = load i64, i64* %13, align 8
  %168 = load i32*, i32** %14, align 8
  %169 = call i32 @bo_add_mem(i32* %166, i64 %167, i32* %168)
  %170 = load i32*, i32** %14, align 8
  %171 = call i32 @free(i32* %170)
  %172 = load i32*, i32** %8, align 8
  store i32* %172, i32** %4, align 8
  br label %173

173:                                              ; preds = %165, %162, %28, %21
  %174 = load i32*, i32** %4, align 8
  ret i32* %174
}

declare dso_local i32* @box_new(i8*) #1

declare dso_local i64 @hevc_ishvcC(i32*, i64) #1

declare dso_local i32 @bo_add_mem(i32*, i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @hxxx_iterator_init(i32*, i32*, i64, i32) #1

declare dso_local i64 @hxxx_annexb_iterate_next(i32*, i32**, i64*) #1

declare dso_local i32 @hevc_getNALType(i32*) #1

declare dso_local i32* @hevc_create_dcr(%struct.hevc_dcr_params*, i32, i32, i64*) #1

declare dso_local i32 @bo_free(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
