; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_dump_tile_info.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_dump_tile_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"\09 default tile {\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\09\09 csty=%#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\09\09 prg=%#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09\09 numlayers=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\09\09 mct=%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\09\09 comp %d {\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"\09\09\09 csty=%#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\09\09\09 numresolutions=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"\09\09\09 cblkw=2^%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\09\09\09 cblkh=2^%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"\09\09\09 cblksty=%#x\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"\09\09\09 qmfbid=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"\09\09\09 preccintsize (w,h)=\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"(%d,%d) \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\09\09\09 qntsty=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"\09\09\09 numgbits=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"\09\09\09 stepsizes (m,e)=\00", align 1
@J2K_CCP_QNTSTY_SIQNT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"\09\09\09 roishift=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"\09\09 }\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\09 }\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i32*)* @opj_j2k_dump_tile_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_j2k_dump_tile_info(%struct.TYPE_6__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %177

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %171, %14
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %174

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %45
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %8, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %82

82:                                               ; preds = %104, %41
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ult i64 %83, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %82
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %96, i32 %102)
  br label %104

104:                                              ; preds = %89
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %9, align 8
  br label %82

107:                                              ; preds = %82
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @J2K_CCP_QNTSTY_SIQNT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %107
  br label %135

128:                                              ; preds = %107
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 3
  %134 = sub i64 %133, 2
  br label %135

135:                                              ; preds = %128, %127
  %136 = phi i64 [ 1, %127 ], [ %134, %128 ]
  store i64 %136, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %137

137:                                              ; preds = %158, %135
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %11, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %137
  %142 = load i32*, i32** %6, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 11
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 11
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %149, i32 %156)
  br label %158

158:                                              ; preds = %141
  %159 = load i64, i64* %10, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %10, align 8
  br label %137

161:                                              ; preds = %137
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %164 = load i32*, i32** %6, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 10
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 (i32*, i8*, ...) @fprintf(i32* %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %171

171:                                              ; preds = %161
  %172 = load i64, i64* %7, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %7, align 8
  br label %37

174:                                              ; preds = %37
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 (i32*, i8*, ...) @fprintf(i32* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %3
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
