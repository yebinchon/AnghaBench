; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_opj_jp3d_compress.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_opj_jp3d_compress.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i8*, i64, i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32 }

@error_callback = common dso_local global i32 0, align 4
@warning_callback = common dso_local global i32 0, align 4
@info_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Created by OpenJPEG version JP3D\00", align 1
@J3D_CFMT = common dso_local global i64 0, align 8
@J2K_CFMT = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"[INFO] Loading pgx file(s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"[ERROR] Unable to load pgx files\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"[INFO] Loading bin file\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"[ERROR] Unable to load bin file\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"[INFO] Loading img file\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"[ERROR] Unable to load img file\0A\00", align 1
@CODEC_J3D = common dso_local global i32 0, align 4
@CODEC_J2K = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"[ERROR] Failed to encode volume\0A\00", align 1
@.str.8 = private unnamed_addr constant [94 x i8] c"[RESULT] Volume: %d x %d x %d (x %d bpv)\0A Codestream: %d B,  Ratio: %5.3f bpv,  (%5.3f : 1) \0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"[ERROR] Failed to open %s for writing\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"[ERROR] Cod_format != JP3d !!! \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__, align 8
  %9 = alloca %struct.TYPE_26__, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %10, align 8
  %17 = call i32 @memset(%struct.TYPE_26__* %9, i32 0, i32 12)
  %18 = load i32, i32* @error_callback, align 4
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @warning_callback, align 4
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @info_callback, align 4
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = call i32 @opj_set_default_encoder_parameters(%struct.TYPE_27__* %8)
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @parse_cmdline_encoder(i32 %25, i8** %26, %struct.TYPE_27__* %8)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %253

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @J3D_CFMT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @J2K_CFMT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %227

46:                                               ; preds = %41, %36
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %87 [
    i32 128, label %49
    i32 130, label %61
    i32 129, label %75
  ]

49:                                               ; preds = %46
  %50 = load i32, i32* @stdout, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_25__* @pgxtovolume(i32 %53, %struct.TYPE_27__* %8)
  store %struct.TYPE_25__* %54, %struct.TYPE_25__** %10, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %56 = icmp ne %struct.TYPE_25__* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %253

60:                                               ; preds = %49
  br label %87

61:                                               ; preds = %46
  %62 = load i32, i32* @stdout, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_25__* @bintovolume(i32 %65, i32 %67, %struct.TYPE_27__* %8)
  store %struct.TYPE_25__* %68, %struct.TYPE_25__** %10, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %70 = icmp ne %struct.TYPE_25__* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @stdout, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %253

74:                                               ; preds = %61
  br label %87

75:                                               ; preds = %46
  %76 = load i32, i32* @stdout, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_25__* @imgtovolume(i32 %79, %struct.TYPE_27__* %8)
  store %struct.TYPE_25__* %80, %struct.TYPE_25__** %10, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %82 = icmp ne %struct.TYPE_25__* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %253

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %46, %86, %74, %60
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @J3D_CFMT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @CODEC_J3D, align 4
  %94 = call i32* @opj_create_compress(i32 %93)
  store i32* %94, i32** %16, align 8
  br label %104

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @J2K_CFMT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @CODEC_J2K, align 4
  %102 = call i32* @opj_create_compress(i32 %101)
  store i32* %102, i32** %16, align 8
  br label %103

103:                                              ; preds = %100, %95
  br label %104

104:                                              ; preds = %103, %92
  %105 = load i32*, i32** %16, align 8
  %106 = ptrtoint i32* %105 to i32
  %107 = load i32, i32* @stdout, align 4
  %108 = call i32 @opj_set_event_mgr(i32 %106, %struct.TYPE_26__* %9, i32 %107)
  %109 = load i32*, i32** %16, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %111 = call i32 @opj_setup_encoder(i32* %109, %struct.TYPE_27__* %8, %struct.TYPE_25__* %110)
  %112 = load i32*, i32** %16, align 8
  %113 = ptrtoint i32* %112 to i32
  %114 = call %struct.TYPE_28__* @opj_cio_open(i32 %113, i32* null, i32 0)
  store %struct.TYPE_28__* %114, %struct.TYPE_28__** %14, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @opj_encode(i32* %115, %struct.TYPE_28__* %116, %struct.TYPE_25__* %117, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %104
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %125 = call i32 @opj_cio_close(%struct.TYPE_28__* %124)
  %126 = load i32, i32* @stdout, align 4
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %253

128:                                              ; preds = %104
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %130 = call i32 @cio_tell(%struct.TYPE_28__* %129)
  store i32 %130, i32* %11, align 4
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %133, %136
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %140, %143
  %145 = mul nsw i32 %137, %144
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %148, %151
  %153 = mul nsw i32 %145, %152
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %154, %160
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* @stdout, align 4
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %165, %168
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %172, %175
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %179, %182
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 6
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sitofp i32 %191 to double
  %193 = fmul double %192, 8.000000e+00
  %194 = load i32, i32* %12, align 4
  %195 = sitofp i32 %194 to double
  %196 = fdiv double %193, %195
  %197 = load i32, i32* %13, align 4
  %198 = sitofp i32 %197 to double
  %199 = load i32, i32* %11, align 4
  %200 = sitofp i32 %199 to double
  %201 = fmul double 8.000000e+00, %200
  %202 = fdiv double %198, %201
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %162, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.8, i64 0, i64 0), i32 %169, i32 %176, i32 %183, i32 %189, i32 %190, double %196, double %202)
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 3
  %205 = load i8*, i8** %204, align 8
  %206 = call i32* @fopen(i8* %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32* %206, i32** %15, align 8
  %207 = load i32*, i32** %15, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %214, label %209

209:                                              ; preds = %128
  %210 = load i32, i32* @stdout, align 4
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %212)
  store i32 1, i32* %3, align 4
  br label %253

214:                                              ; preds = %128
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32*, i32** %15, align 8
  %220 = call i32 @fwrite(i32 %217, i32 1, i32 %218, i32* %219)
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @fclose(i32* %221)
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %224 = call i32 @opj_cio_close(%struct.TYPE_28__* %223)
  %225 = load i32*, i32** %16, align 8
  %226 = call i32 @opj_destroy_compress(i32* %225)
  br label %230

227:                                              ; preds = %41
  %228 = load i32, i32* @stdout, align 4
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %253

230:                                              ; preds = %214
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @free(i8* %239)
  br label %241

241:                                              ; preds = %237, %233
  br label %242

242:                                              ; preds = %241, %230
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 4
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @free(i8* %248)
  br label %250

250:                                              ; preds = %246, %242
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %252 = call i32 @opj_volume_destroy(%struct.TYPE_25__* %251)
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %250, %227, %209, %123, %83, %71, %57, %29
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @opj_set_default_encoder_parameters(%struct.TYPE_27__*) #1

declare dso_local i32 @parse_cmdline_encoder(i32, i8**, %struct.TYPE_27__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_25__* @pgxtovolume(i32, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_25__* @bintovolume(i32, i32, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_25__* @imgtovolume(i32, %struct.TYPE_27__*) #1

declare dso_local i32* @opj_create_compress(i32) #1

declare dso_local i32 @opj_set_event_mgr(i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @opj_setup_encoder(i32*, %struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_28__* @opj_cio_open(i32, i32*, i32) #1

declare dso_local i32 @opj_encode(i32*, %struct.TYPE_28__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @opj_cio_close(%struct.TYPE_28__*) #1

declare dso_local i32 @cio_tell(%struct.TYPE_28__*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @opj_destroy_compress(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @opj_volume_destroy(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
