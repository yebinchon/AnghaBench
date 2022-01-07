; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_djpeg.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_djpeg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { i64, i64, i32 }
%struct.jpeg_error_mgr = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_12__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_12__*, i32)*, i32, i32, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_12__*)*, i32* }

@progname = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"djpeg\00", align 1
@cdjpeg_message_table = common dso_local global i32 0, align 4
@JMSG_FIRSTADDONCODE = common dso_local global i32 0, align 4
@JMSG_LASTADDONCODE = common dso_local global i32 0, align 4
@JPEG_COM = common dso_local global i64 0, align 8
@print_text_marker = common dso_local global i32 0, align 4
@JPEG_APP0 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@READ_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@outfilename = common dso_local global i8* null, align 8
@WRITE_BINARY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@requested_fmt = common dso_local global i32 0, align 4
@JERR_UNSUPPORTED_FORMAT = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@memsrc = common dso_local global i64 0, align 8
@EXIT_WARNING = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@INPUT_BUF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jpeg_decompress_struct, align 8
  %7 = alloca %struct.jpeg_error_mgr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** @progname, align 8
  %19 = load i64*, i64** @progname, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i64*, i64** @progname, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %2
  store i64* bitcast ([6 x i8]* @.str to i64*), i64** @progname, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = call i32 @jpeg_std_error(%struct.jpeg_error_mgr* %7)
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = call i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct* %6)
  %31 = load i32, i32* @cdjpeg_message_table, align 4
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @JMSG_FIRSTADDONCODE, align 4
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @JMSG_LASTADDONCODE, align 4
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load i64, i64* @JPEG_COM, align 8
  %38 = load i32, i32* @print_text_marker, align 4
  %39 = call i32 @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* %6, i64 %37, i32 %38)
  %40 = load i64, i64* @JPEG_APP0, align 8
  %41 = add nsw i64 %40, 12
  %42 = load i32, i32* @print_text_marker, align 4
  %43 = call i32 @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* %6, i64 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @parse_switches(%struct.jpeg_decompress_struct* %6, i32 %44, i8** %45, i32 0, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %27
  %53 = load i32, i32* @stderr, align 4
  %54 = load i64*, i64** @progname, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64* %54)
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %52, %27
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @READ_BINARY, align 4
  %68 = call i32* @fopen(i8* %66, i32 %67)
  store i32* %68, i32** %10, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %61
  %71 = load i32, i32* @stderr, align 4
  %72 = load i64*, i64** @progname, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %72, i8* %77)
  %79 = load i32, i32* @EXIT_FAILURE, align 4
  %80 = call i32 @exit(i32 %79) #3
  unreachable

81:                                               ; preds = %61
  br label %84

82:                                               ; preds = %57
  %83 = call i32* (...) @read_stdin()
  store i32* %83, i32** %10, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = load i8*, i8** @outfilename, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i8*, i8** @outfilename, align 8
  %89 = load i32, i32* @WRITE_BINARY, align 4
  %90 = call i32* @fopen(i8* %88, i32 %89)
  store i32* %90, i32** %11, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* @stderr, align 4
  %94 = load i64*, i64** @progname, align 8
  %95 = load i8*, i8** @outfilename, align 8
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %94, i8* %95)
  %97 = load i32, i32* @EXIT_FAILURE, align 4
  %98 = call i32 @exit(i32 %97) #3
  unreachable

99:                                               ; preds = %87
  br label %102

100:                                              ; preds = %84
  %101 = call i32* (...) @write_stdout()
  store i32* %101, i32** %11, align 8
  br label %102

102:                                              ; preds = %100, %99
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct* %6, i32* %103)
  %105 = load i32, i32* @TRUE, align 4
  %106 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %6, i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* @TRUE, align 4
  %110 = call i32 @parse_switches(%struct.jpeg_decompress_struct* %6, i32 %107, i8** %108, i32 0, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @requested_fmt, align 4
  switch i32 %111, label %112 [
  ]

112:                                              ; preds = %102
  %113 = load i32, i32* @JERR_UNSUPPORTED_FORMAT, align 4
  %114 = call i32 @ERREXIT(%struct.jpeg_decompress_struct* %6, i32 %113)
  br label %115

115:                                              ; preds = %112
  %116 = load i32*, i32** %11, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 5
  store i32* %116, i32** %118, align 8
  %119 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* %6)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 4
  %122 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_12__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_12__*)** %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = call i32 %122(%struct.jpeg_decompress_struct* %6, %struct.TYPE_12__* %123)
  br label %125

125:                                              ; preds = %131, %115
  %126 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %127, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %125
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* %6, i32 %134, i32 %137)
  store i32 %138, i32* %14, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_12__*, i32)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_12__*, i32)** %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i32 %141(%struct.jpeg_decompress_struct* %6, %struct.TYPE_12__* %142, i32 %143)
  br label %125

145:                                              ; preds = %125
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_12__*)*, i32 (%struct.jpeg_decompress_struct*, %struct.TYPE_12__*)** %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %150 = call i32 %148(%struct.jpeg_decompress_struct* %6, %struct.TYPE_12__* %149)
  %151 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %6)
  %152 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %6)
  %153 = load i32*, i32** %10, align 8
  %154 = load i32*, i32** @stdin, align 8
  %155 = icmp ne i32* %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load i32*, i32** %10, align 8
  %158 = call i32 @fclose(i32* %157)
  br label %159

159:                                              ; preds = %156, %145
  %160 = load i32*, i32** %11, align 8
  %161 = load i32*, i32** @stdout, align 8
  %162 = icmp ne i32* %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 @fclose(i32* %164)
  br label %166

166:                                              ; preds = %163, %159
  %167 = load i64, i64* @memsrc, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i8*, i8** %12, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 @free(i8* %173)
  br label %175

175:                                              ; preds = %172, %169, %166
  %176 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* @EXIT_WARNING, align 4
  br label %183

181:                                              ; preds = %175
  %182 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  %185 = call i32 @exit(i32 %184) #3
  unreachable
}

declare dso_local i32 @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_set_marker_processor(%struct.jpeg_decompress_struct*, i64, i32) #1

declare dso_local i32 @parse_switches(%struct.jpeg_decompress_struct*, i32, i8**, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @read_stdin(...) #1

declare dso_local i32* @write_stdout(...) #1

declare dso_local i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct*, i32*) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32 @ERREXIT(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct*, i32, i32) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
