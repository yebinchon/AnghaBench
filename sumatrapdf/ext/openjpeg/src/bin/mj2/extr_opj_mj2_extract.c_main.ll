; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_opj_mj2_extract.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_opj_mj2_extract.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Usage: %s mj2filename output_location\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Example: %s foreman.mj2 output/foreman\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to open %s for reading\0A\00", align 1
@error_callback = common dso_local global i32 0, align 4
@warning_callback = common dso_local global i32 0, align 4
@info_callback = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Extracting %d frames from file...\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"%s_%05d.j2k\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to open %s for writing\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%d frames correctly extracted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [50 x i8], align 16
  %17 = alloca %struct.TYPE_15__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  br label %170

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  store i32 1, i32* %3, align 4
  br label %170

42:                                               ; preds = %29
  %43 = call i32 @memset(%struct.TYPE_15__* %7, i32 0, i32 12)
  %44 = load i32, i32* @error_callback, align 4
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @warning_callback, align 4
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @info_callback, align 4
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = call %struct.TYPE_16__* (...) @mj2_create_decompress()
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %6, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = ptrtoint %struct.TYPE_16__* %51 to i32
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @opj_set_event_mgr(i32 %52, %struct.TYPE_15__* %7, i32 %53)
  %55 = call i32 @memset(%struct.TYPE_15__* %17, i32 0, i32 12)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %10, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %61 = call i32 @mj2_setup_decoder(%struct.TYPE_14__* %60, %struct.TYPE_15__* %17)
  %62 = load i32*, i32** %14, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = call i64 @mj2_read_struct(i32* %62, %struct.TYPE_14__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %170

67:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %78, %67
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %68

81:                                               ; preds = %68
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i64 %86
  store %struct.TYPE_17__* %87, %struct.TYPE_17__** %11, align 8
  %88 = load i32, i32* @stdout, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %152, %81
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %155

99:                                               ; preds = %93
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i64 %104
  store %struct.TYPE_18__* %105, %struct.TYPE_18__** %12, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %108, 8
  %110 = call i64 @malloc(i64 %109)
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %13, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 8
  %117 = load i32, i32* @SEEK_SET, align 4
  %118 = call i32 @fseek(i32* %112, i64 %116, i32 %117)
  %119 = load i8*, i8** %13, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, 8
  %124 = load i32*, i32** %14, align 8
  %125 = call i32 @fread(i8* %119, i64 %123, i32 1, i32* %124)
  %126 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 2
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @sprintf(i8* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %129, i32 %130)
  %132 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %133 = call i32* @fopen(i8* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %133, i32** %15, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %99
  %137 = load i32, i32* @stderr, align 4
  %138 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %138)
  store i32 1, i32* %3, align 4
  br label %170

140:                                              ; preds = %99
  %141 = load i8*, i8** %13, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, 8
  %146 = load i32*, i32** %15, align 8
  %147 = call i32 @fwrite(i8* %141, i64 %145, i32 1, i32* %146)
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @fclose(i32* %148)
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @free(i8* %150)
  br label %152

152:                                              ; preds = %140
  %153 = load i32, i32* %9, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %93

155:                                              ; preds = %93
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @fclose(i32* %156)
  %158 = load i32, i32* @stdout, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = icmp ne %struct.TYPE_16__* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %155
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to %struct.TYPE_14__*
  %168 = call i32 @mj2_destroy_decompress(%struct.TYPE_14__* %167)
  br label %169

169:                                              ; preds = %163, %155
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %136, %66, %36, %20
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @mj2_create_decompress(...) #1

declare dso_local i32 @opj_set_event_mgr(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @mj2_setup_decoder(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i64 @mj2_read_struct(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mj2_destroy_decompress(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
