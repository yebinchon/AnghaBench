; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-pnm.c_pnm_read_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-pnm.c_pnm_read_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"P1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"P2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"P3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"P4\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"P5\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"P6\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"P7\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"unsupported portable anymap signature (0x%02x, 0x%02x)\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"subimage count out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.info*, i8*, i64, i32, i32)* @pnm_read_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pnm_read_image(i32* %0, %struct.info* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [3 x i8], align 1
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.info* %1, %struct.info** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %13, align 8
  %20 = bitcast [3 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %20, i8 0, i64 3, i1 false)
  store i32* null, i32** %15, align 8
  br label %21

21:                                               ; preds = %186, %6
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ true, %28 ], [ %33, %31 ]
  br label %36

36:                                               ; preds = %34, %21
  %37 = phi i1 [ false, %21 ], [ %35, %34 ]
  br i1 %37, label %38, label %187

38:                                               ; preds = %36
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 0
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ true, %38 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %16, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %51 = call i8* @pnm_read_signature(i32* %47, i8* %48, i8* %49, i8* %50)
  store i8* %51, i8** %9, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = call i8* @pnm_read_white(i32* %52, i8* %53, i8* %54, i32 0)
  store i8* %55, i8** %9, align 8
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %44
  %60 = load i32*, i32** %7, align 8
  %61 = call i8* @fz_device_gray(i32* %60)
  %62 = load %struct.info*, %struct.info** %8, align 8
  %63 = getelementptr inbounds %struct.info, %struct.info* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.info*, %struct.info** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i32* @pnm_ascii_read_image(i32* %64, %struct.info* %65, i8* %66, i8* %67, i32 %68, i32 1, i8** %9)
  store i32* %69, i32** %15, align 8
  br label %172

70:                                               ; preds = %44
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = call i8* @fz_device_gray(i32* %75)
  %77 = load %struct.info*, %struct.info** %8, align 8
  %78 = getelementptr inbounds %struct.info, %struct.info* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.info*, %struct.info** %8, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32* @pnm_ascii_read_image(i32* %79, %struct.info* %80, i8* %81, i8* %82, i32 %83, i32 0, i8** %9)
  store i32* %84, i32** %15, align 8
  br label %171

85:                                               ; preds = %70
  %86 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %85
  %90 = load i32*, i32** %7, align 8
  %91 = call i8* @fz_device_rgb(i32* %90)
  %92 = load %struct.info*, %struct.info** %8, align 8
  %93 = getelementptr inbounds %struct.info, %struct.info* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.info*, %struct.info** %8, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32* @pnm_ascii_read_image(i32* %94, %struct.info* %95, i8* %96, i8* %97, i32 %98, i32 0, i8** %9)
  store i32* %99, i32** %15, align 8
  br label %170

100:                                              ; preds = %85
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %100
  %105 = load i32*, i32** %7, align 8
  %106 = call i8* @fz_device_gray(i32* %105)
  %107 = load %struct.info*, %struct.info** %8, align 8
  %108 = getelementptr inbounds %struct.info, %struct.info* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.info*, %struct.info** %8, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32* @pnm_binary_read_image(i32* %109, %struct.info* %110, i8* %111, i8* %112, i32 %113, i32 1, i8** %9)
  store i32* %114, i32** %15, align 8
  br label %169

115:                                              ; preds = %100
  %116 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %115
  %120 = load i32*, i32** %7, align 8
  %121 = call i8* @fz_device_gray(i32* %120)
  %122 = load %struct.info*, %struct.info** %8, align 8
  %123 = getelementptr inbounds %struct.info, %struct.info* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load %struct.info*, %struct.info** %8, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32* @pnm_binary_read_image(i32* %124, %struct.info* %125, i8* %126, i8* %127, i32 %128, i32 0, i8** %9)
  store i32* %129, i32** %15, align 8
  br label %168

130:                                              ; preds = %115
  %131 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = load i32*, i32** %7, align 8
  %136 = call i8* @fz_device_rgb(i32* %135)
  %137 = load %struct.info*, %struct.info** %8, align 8
  %138 = getelementptr inbounds %struct.info, %struct.info* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.info*, %struct.info** %8, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call i32* @pnm_binary_read_image(i32* %139, %struct.info* %140, i8* %141, i8* %142, i32 %143, i32 0, i8** %9)
  store i32* %144, i32** %15, align 8
  br label %167

145:                                              ; preds = %130
  %146 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = load i32*, i32** %7, align 8
  %151 = load %struct.info*, %struct.info** %8, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = load i32, i32* %16, align 4
  %155 = call i32* @pam_binary_read_image(i32* %150, %struct.info* %151, i8* %152, i8* %153, i32 %154, i8** %9)
  store i32* %155, i32** %15, align 8
  br label %166

156:                                              ; preds = %145
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %159 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 1
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %157, i32 %158, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %156, %149
  br label %167

167:                                              ; preds = %166, %134
  br label %168

168:                                              ; preds = %167, %119
  br label %169

169:                                              ; preds = %168, %104
  br label %170

170:                                              ; preds = %169, %89
  br label %171

171:                                              ; preds = %170, %74
  br label %172

172:                                              ; preds = %171, %59
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load %struct.info*, %struct.info** %8, align 8
  %177 = getelementptr inbounds %struct.info, %struct.info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %175, %172
  %181 = load i32, i32* %12, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %183, %180
  br label %21

187:                                              ; preds = %36
  %188 = load i8*, i8** %9, align 8
  %189 = load i8*, i8** %13, align 8
  %190 = icmp uge i8* %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %187
  %192 = load i32, i32* %12, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %197 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %195, i32 %196, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %198

198:                                              ; preds = %194, %191, %187
  %199 = load i32*, i32** %15, align 8
  ret i32* %199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @pnm_read_signature(i32*, i8*, i8*, i8*) #2

declare dso_local i8* @pnm_read_white(i32*, i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @fz_device_gray(i32*) #2

declare dso_local i32* @pnm_ascii_read_image(i32*, %struct.info*, i8*, i8*, i32, i32, i8**) #2

declare dso_local i8* @fz_device_rgb(i32*) #2

declare dso_local i32* @pnm_binary_read_image(i32*, %struct.info*, i8*, i8*, i32, i32, i8**) #2

declare dso_local i32* @pam_binary_read_image(i32*, %struct.info*, i8*, i8*, i32, i8**) #2

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
