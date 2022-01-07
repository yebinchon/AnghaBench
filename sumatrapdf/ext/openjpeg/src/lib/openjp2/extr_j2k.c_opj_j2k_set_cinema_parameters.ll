; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_set_cinema_parameters.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_set_cinema_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@OPJ_FALSE = common dso_local global i32 0, align 4
@EVT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [173 x i8] c"JPEG 2000 Profile-3 and 4 (2k/4k dc profile) requires:\0A1 single quality layer-> Number of layers forced to 1 (rather than %d)\0A-> Rate of the last layer (%3.1f) will be used\00", align 1
@.str.1 = private unnamed_addr constant [146 x i8] c"JPEG 2000 Profile-3 (2k dc profile) requires:\0ANumber of decomposition levels <= 5\0A-> Number of decomposition levels forced to 5 (rather than %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [154 x i8] c"JPEG 2000 Profile-4 (4k dc profile) requires:\0ANumber of decomposition levels >= 1 && <= 6\0A-> Number of decomposition levels forced to 1 (rather than %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [154 x i8] c"JPEG 2000 Profile-4 (4k dc profile) requires:\0ANumber of decomposition levels >= 1 && <= 6\0A-> Number of decomposition levels forced to 6 (rather than %d)\0A\00", align 1
@OPJ_CPRL = common dso_local global i32 0, align 4
@OPJ_CINEMA_24_CS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [149 x i8] c"JPEG 2000 Profile-3 and 4 (2k/4k dc profile) requires:\0AMaximum 1302083 compressed bytes @ 24fps\0AAs no rate has been given, this limit will be used.\0A\00", align 1
@.str.5 = private unnamed_addr constant [173 x i8] c"JPEG 2000 Profile-3 and 4 (2k/4k dc profile) requires:\0AMaximum 1302083 compressed bytes @ 24fps\0A-> Specified rate exceeds this limit. Rate will be forced to 1302083 bytes.\0A\00", align 1
@OPJ_CINEMA_24_COMP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [149 x i8] c"JPEG 2000 Profile-3 and 4 (2k/4k dc profile) requires:\0AMaximum 1041666 compressed bytes @ 24fps\0AAs no rate has been given, this limit will be used.\0A\00", align 1
@.str.7 = private unnamed_addr constant [173 x i8] c"JPEG 2000 Profile-3 and 4 (2k/4k dc profile) requires:\0AMaximum 1041666 compressed bytes @ 24fps\0A-> Specified rate exceeds this limit. Rate will be forced to 1041666 bytes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i32*)* @opj_j2k_set_cinema_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_j2k_set_cinema_parameters(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @OPJ_FALSE, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 29
  store i32 %8, i32* %10, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i8 67, i8* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i32 1, i32* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 28
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 27
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 26
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 25
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  store i32 32, i32* %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  store i32 32, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 24
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 6
  store i32 -1, i32* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 7
  store i32 1, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 8
  store i32 1, i32* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 9
  store i32 1, i32* %40, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %78

45:                                               ; preds = %3
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @EVT_WARNING, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 11
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %46, i32 %47, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 11
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 11
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 10
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %45, %3
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %130 [
    i32 129, label %82
    i32 128, label %98
  ]

82:                                               ; preds = %78
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 6
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @EVT_WARNING, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 13
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %88, i32 %89, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 13
  store i32 6, i32* %96, align 4
  br label %97

97:                                               ; preds = %87, %82
  br label %131

98:                                               ; preds = %78
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 13
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @EVT_WARNING, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 13
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %104, i32 %105, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 13
  store i32 1, i32* %112, align 4
  br label %129

113:                                              ; preds = %98
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 7
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* @EVT_WARNING, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 13
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %119, i32 %120, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 13
  store i32 7, i32* %127, align 4
  br label %128

128:                                              ; preds = %118, %113
  br label %129

129:                                              ; preds = %128, %103
  br label %131

130:                                              ; preds = %78
  br label %131

131:                                              ; preds = %130, %129, %97
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 14
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %151

140:                                              ; preds = %131
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 15
  store i32 1, i32* %142, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 16
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 128, i32* %146, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 17
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 128, i32* %150, align 4
  br label %181

151:                                              ; preds = %131
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 13
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 15
  store i32 %155, i32* %157, align 4
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %177, %151
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 15
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 16
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 256, i32* %170, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 17
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 256, i32* %176, align 4
  br label %177

177:                                              ; preds = %164
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %158

180:                                              ; preds = %158
  br label %181

181:                                              ; preds = %180, %140
  %182 = load i32, i32* @OPJ_CPRL, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 23
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 12
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 128
  br i1 %188, label %189, label %200

189:                                              ; preds = %181
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 22
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @opj_j2k_initialise_4K_poc(i32 %192, i32 %195)
  %197 = trunc i64 %196 to i32
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 18
  store i32 %197, i32* %199, align 8
  br label %203

200:                                              ; preds = %181
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 18
  store i32 0, i32* %202, align 8
  br label %203

203:                                              ; preds = %200, %189
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 19
  store i32 1, i32* %205, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 20
  %208 = load i64, i64* %207, align 8
  %209 = icmp sle i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %203
  %211 = load i64, i64* @OPJ_CINEMA_24_CS, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 20
  store i64 %211, i64* %213, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = load i32, i32* @EVT_WARNING, align 4
  %216 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %214, i32 %215, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.4, i64 0, i64 0))
  br label %231

217:                                              ; preds = %203
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 20
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @OPJ_CINEMA_24_CS, align 8
  %222 = icmp sgt i64 %220, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %217
  %224 = load i32*, i32** %6, align 8
  %225 = load i32, i32* @EVT_WARNING, align 4
  %226 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %224, i32 %225, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.5, i64 0, i64 0))
  %227 = load i64, i64* @OPJ_CINEMA_24_CS, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 20
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %223, %217
  br label %231

231:                                              ; preds = %230, %210
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 21
  %234 = load i64, i64* %233, align 8
  %235 = icmp sle i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %231
  %237 = load i64, i64* @OPJ_CINEMA_24_COMP, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 21
  store i64 %237, i64* %239, align 8
  %240 = load i32*, i32** %6, align 8
  %241 = load i32, i32* @EVT_WARNING, align 4
  %242 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %240, i32 %241, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.6, i64 0, i64 0))
  br label %257

243:                                              ; preds = %231
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 21
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @OPJ_CINEMA_24_COMP, align 8
  %248 = icmp sgt i64 %246, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %243
  %250 = load i32*, i32** %6, align 8
  %251 = load i32, i32* @EVT_WARNING, align 4
  %252 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %250, i32 %251, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.7, i64 0, i64 0))
  %253 = load i64, i64* @OPJ_CINEMA_24_COMP, align 8
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 21
  store i64 %253, i64* %255, align 8
  br label %256

256:                                              ; preds = %249, %243
  br label %257

257:                                              ; preds = %256, %236
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i64 0
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = mul nsw i32 %260, %266
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = mul nsw i32 %267, %273
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = mul nsw i32 %274, %280
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 20
  %284 = load i64, i64* %283, align 8
  %285 = trunc i64 %284 to i32
  %286 = mul nsw i32 %285, 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = mul nsw i32 %286, %292
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i64 0
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %293, %299
  %301 = sdiv i32 %281, %300
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 11
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  store i32 %301, i32* %305, align 4
  ret void
}

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i64 @opj_j2k_initialise_4K_poc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
