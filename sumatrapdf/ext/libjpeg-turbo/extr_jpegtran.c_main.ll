; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_jpegtran.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_jpegtran.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.jpeg_compress_struct = type { %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.jpeg_error_mgr = type { i64, i32 }

@progname = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"jpegtran\00", align 1
@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@READ_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: can't open %s for reading\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@copyoption = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@outfilename = common dso_local global i8* null, align 8
@WRITE_BINARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: can't open %s for writing\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@EXIT_WARNING = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@transformoption = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jpeg_decompress_struct, align 8
  %7 = alloca %struct.jpeg_compress_struct, align 8
  %8 = alloca %struct.jpeg_error_mgr, align 8
  %9 = alloca %struct.jpeg_error_mgr, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** @progname, align 8
  %18 = load i64*, i64** @progname, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i64*, i64** @progname, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %2
  store i64* bitcast ([9 x i8]* @.str to i64*), i64** @progname, align 8
  br label %26

26:                                               ; preds = %25, %20
  %27 = call i8* @jpeg_std_error(%struct.jpeg_error_mgr* %8)
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = call i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct* %6)
  %30 = call i8* @jpeg_std_error(%struct.jpeg_error_mgr* %9)
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = call i32 @jpeg_create_compress(%struct.jpeg_compress_struct* %7)
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @parse_switches(%struct.jpeg_compress_struct* %7, i32 %33, i8** %34, i32 0, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %26
  %52 = load i32, i32* @stderr, align 4
  %53 = load i64*, i64** @progname, align 8
  %54 = call i32 (i32, i8*, i64*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64* %53)
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %51, %26
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @READ_BINARY, align 4
  %67 = call i32* @fopen(i8* %65, i32 %66)
  store i32* %67, i32** %13, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %60
  %70 = load i32, i32* @stderr, align 4
  %71 = load i64*, i64** @progname, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32, i8*, i64*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64* %71, i8* %76)
  %78 = load i32, i32* @EXIT_FAILURE, align 4
  %79 = call i32 @exit(i32 %78) #3
  unreachable

80:                                               ; preds = %60
  br label %83

81:                                               ; preds = %56
  %82 = call i32* (...) @read_stdin()
  store i32* %82, i32** %13, align 8
  br label %83

83:                                               ; preds = %81, %80
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct* %6, i32* %84)
  %86 = load i32, i32* @copyoption, align 4
  %87 = call i32 @jcopy_markers_setup(%struct.jpeg_decompress_struct* %6, i32 %86)
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* %6, i32 %88)
  %90 = call i32* @jpeg_read_coefficients(%struct.jpeg_decompress_struct* %6)
  store i32* %90, i32** %10, align 8
  %91 = call i32 @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct* %6, %struct.jpeg_compress_struct* %7)
  %92 = load i32*, i32** %10, align 8
  store i32* %92, i32** %11, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i32*, i32** @stdin, align 8
  %95 = icmp ne i32* %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @fclose(i32* %97)
  br label %99

99:                                               ; preds = %96, %83
  %100 = load i8*, i8** @outfilename, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load i8*, i8** @outfilename, align 8
  %104 = load i32, i32* @WRITE_BINARY, align 4
  %105 = call i32* @fopen(i8* %103, i32 %104)
  store i32* %105, i32** %13, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32, i32* @stderr, align 4
  %109 = load i64*, i64** @progname, align 8
  %110 = load i8*, i8** @outfilename, align 8
  %111 = call i32 (i32, i8*, i64*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64* %109, i8* %110)
  %112 = load i32, i32* @EXIT_FAILURE, align 4
  %113 = call i32 @exit(i32 %112) #3
  unreachable

114:                                              ; preds = %102
  br label %117

115:                                              ; preds = %99
  %116 = call i32* (...) @write_stdout()
  store i32* %116, i32** %13, align 8
  br label %117

117:                                              ; preds = %115, %114
  %118 = load i32, i32* %4, align 4
  %119 = load i8**, i8*** %5, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = call i32 @parse_switches(%struct.jpeg_compress_struct* %7, i32 %118, i8** %119, i32 0, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @jpeg_stdio_dest(%struct.jpeg_compress_struct* %7, i32* %122)
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @jpeg_write_coefficients(%struct.jpeg_compress_struct* %7, i32* %124)
  %126 = load i32, i32* @copyoption, align 4
  %127 = call i32 @jcopy_markers_execute(%struct.jpeg_decompress_struct* %6, %struct.jpeg_compress_struct* %7, i32 %126)
  %128 = call i32 @jpeg_finish_compress(%struct.jpeg_compress_struct* %7)
  %129 = call i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct* %7)
  %130 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* %6)
  %131 = call i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* %6)
  %132 = load i32*, i32** %13, align 8
  %133 = load i32*, i32** @stdout, align 8
  %134 = icmp ne i32* %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %117
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @fclose(i32* %136)
  br label %138

138:                                              ; preds = %135, %117
  %139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %140, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @EXIT_WARNING, align 4
  br label %149

147:                                              ; preds = %138
  %148 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = call i32 @exit(i32 %150) #3
  unreachable
}

declare dso_local i8* @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_create_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @parse_switches(%struct.jpeg_compress_struct*, i32, i8**, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @read_stdin(...) #1

declare dso_local i32 @jpeg_stdio_src(%struct.jpeg_decompress_struct*, i32*) #1

declare dso_local i32 @jcopy_markers_setup(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct*, i32) #1

declare dso_local i32* @jpeg_read_coefficients(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct*, %struct.jpeg_compress_struct*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @write_stdout(...) #1

declare dso_local i32 @jpeg_stdio_dest(%struct.jpeg_compress_struct*, i32*) #1

declare dso_local i32 @jpeg_write_coefficients(%struct.jpeg_compress_struct*, i32*) #1

declare dso_local i32 @jcopy_markers_execute(%struct.jpeg_decompress_struct*, %struct.jpeg_compress_struct*, i32) #1

declare dso_local i32 @jpeg_finish_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct*) #1

declare dso_local i32 @jpeg_destroy_decompress(%struct.jpeg_decompress_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
