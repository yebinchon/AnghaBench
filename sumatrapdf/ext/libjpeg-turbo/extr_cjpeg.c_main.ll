; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_cjpeg.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_cjpeg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { i64, i64, i32, i32 }
%struct.jpeg_error_mgr = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.jpeg_compress_struct*, %struct.TYPE_6__*)*, i32, i32 (%struct.jpeg_compress_struct*, %struct.TYPE_6__*)*, i32 (%struct.jpeg_compress_struct*, %struct.TYPE_6__*)*, i32* }

@progname = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cjpeg\00", align 1
@cdjpeg_message_table = common dso_local global i32 0, align 4
@JMSG_FIRSTADDONCODE = common dso_local global i32 0, align 4
@JMSG_LASTADDONCODE = common dso_local global i32 0, align 4
@JCS_RGB = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@READ_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@outfilename = common dso_local global i8* null, align 8
@WRITE_BINARY = common dso_local global i32 0, align 4
@memdst = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Compressed size:  %lu bytes\0A\00", align 1
@EXIT_WARNING = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jpeg_compress_struct, align 8
  %7 = alloca %struct.jpeg_error_mgr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %11, align 8
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
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = call i32 @jpeg_create_compress(%struct.jpeg_compress_struct* %6)
  %31 = load i32, i32* @cdjpeg_message_table, align 4
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @JMSG_FIRSTADDONCODE, align 4
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @JMSG_LASTADDONCODE, align 4
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @JCS_RGB, align 4
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = call i32 @jpeg_set_defaults(%struct.jpeg_compress_struct* %6)
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @parse_switches(%struct.jpeg_compress_struct* %6, i32 %40, i8** %41, i32 0, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %27
  %49 = load i32, i32* @stderr, align 4
  %50 = load i64*, i64** @progname, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64* %50)
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %48, %27
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @READ_BINARY, align 4
  %64 = call i32* @fopen(i8* %62, i32 %63)
  store i32* %64, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load i32, i32* @stderr, align 4
  %68 = load i64*, i64** @progname, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %68, i8* %73)
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  %76 = call i32 @exit(i32 %75) #3
  unreachable

77:                                               ; preds = %57
  br label %80

78:                                               ; preds = %53
  %79 = call i32* (...) @read_stdin()
  store i32* %79, i32** %10, align 8
  br label %80

80:                                               ; preds = %78, %77
  %81 = load i8*, i8** @outfilename, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i8*, i8** @outfilename, align 8
  %85 = load i32, i32* @WRITE_BINARY, align 4
  %86 = call i32* @fopen(i8* %84, i32 %85)
  store i32* %86, i32** %11, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i32, i32* @stderr, align 4
  %90 = load i64*, i64** @progname, align 8
  %91 = load i8*, i8** @outfilename, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %90, i8* %91)
  %93 = load i32, i32* @EXIT_FAILURE, align 4
  %94 = call i32 @exit(i32 %93) #3
  unreachable

95:                                               ; preds = %83
  br label %102

96:                                               ; preds = %80
  %97 = load i64, i64* @memdst, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = call i32* (...) @write_stdout()
  store i32* %100, i32** %11, align 8
  br label %101

101:                                              ; preds = %99, %96
  br label %102

102:                                              ; preds = %101, %95
  %103 = load i32*, i32** %10, align 8
  %104 = call %struct.TYPE_6__* @select_file_type(%struct.jpeg_compress_struct* %6, i32* %103)
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  store i32* %105, i32** %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = load i32 (%struct.jpeg_compress_struct*, %struct.TYPE_6__*)*, i32 (%struct.jpeg_compress_struct*, %struct.TYPE_6__*)** %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %112 = call i32 %110(%struct.jpeg_compress_struct* %6, %struct.TYPE_6__* %111)
  %113 = call i32 @jpeg_default_colorspace(%struct.jpeg_compress_struct* %6)
  %114 = load i32, i32* %4, align 4
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* @TRUE, align 4
  %117 = call i32 @parse_switches(%struct.jpeg_compress_struct* %6, i32 %114, i8** %115, i32 0, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @jpeg_stdio_dest(%struct.jpeg_compress_struct* %6, i32* %118)
  %120 = load i32, i32* @TRUE, align 4
  %121 = call i32 @jpeg_start_compress(%struct.jpeg_compress_struct* %6, i32 %120)
  br label %122

122:                                              ; preds = %128, %102
  %123 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %124, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %122
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32 (%struct.jpeg_compress_struct*, %struct.TYPE_6__*)*, i32 (%struct.jpeg_compress_struct*, %struct.TYPE_6__*)** %130, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %133 = call i32 %131(%struct.jpeg_compress_struct* %6, %struct.TYPE_6__* %132)
  store i32 %133, i32* %14, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* %6, i32 %136, i32 %137)
  br label %122

139:                                              ; preds = %122
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32 (%struct.jpeg_compress_struct*, %struct.TYPE_6__*)*, i32 (%struct.jpeg_compress_struct*, %struct.TYPE_6__*)** %141, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %144 = call i32 %142(%struct.jpeg_compress_struct* %6, %struct.TYPE_6__* %143)
  %145 = call i32 @jpeg_finish_compress(%struct.jpeg_compress_struct* %6)
  %146 = call i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct* %6)
  %147 = load i32*, i32** %10, align 8
  %148 = load i32*, i32** @stdin, align 8
  %149 = icmp ne i32* %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %139
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @fclose(i32* %151)
  br label %153

153:                                              ; preds = %150, %139
  %154 = load i32*, i32** %11, align 8
  %155 = load i32*, i32** @stdout, align 8
  %156 = icmp ne i32* %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load i32*, i32** %11, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @fclose(i32* %161)
  br label %163

163:                                              ; preds = %160, %157, %153
  %164 = load i64, i64* @memdst, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load i32, i32* @stderr, align 4
  %168 = load i64, i64* %13, align 8
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %168)
  %170 = load i8*, i8** %12, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 @free(i8* %173)
  br label %175

175:                                              ; preds = %172, %166
  br label %176

176:                                              ; preds = %175, %163
  %177 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @EXIT_WARNING, align 4
  br label %184

182:                                              ; preds = %176
  %183 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  %186 = call i32 @exit(i32 %185) #3
  unreachable
}

declare dso_local i32 @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_set_defaults(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @parse_switches(%struct.jpeg_compress_struct*, i32, i8**, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @read_stdin(...) #1

declare dso_local i32* @write_stdout(...) #1

declare dso_local %struct.TYPE_6__* @select_file_type(%struct.jpeg_compress_struct*, i32*) #1

declare dso_local i32 @jpeg_default_colorspace(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_stdio_dest(%struct.jpeg_compress_struct*, i32*) #1

declare dso_local i32 @jpeg_start_compress(%struct.jpeg_compress_struct*, i32) #1

declare dso_local i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct*, i32, i32) #1

declare dso_local i32 @jpeg_finish_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct*) #1

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
