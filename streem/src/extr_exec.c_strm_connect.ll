; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_strm_connect.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_strm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.strm_lambda = type { i32 }
%struct.array_data = type { i64, i32 }

@STRM_IO_READ = common dso_local global i32 0, align 4
@strm_filter = common dso_local global i64 0, align 8
@blk_exec = common dso_local global i32 0, align 4
@strm_producer = common dso_local global i64 0, align 8
@arr_exec = common dso_local global i32 0, align 4
@STRM_IO_WRITE = common dso_local global i32 0, align 4
@cfunc_exec = common dso_local global i32 0, align 4
@cfunc_closer = common dso_local global i32* null, align 8
@strm_consumer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"stream error\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strm_connect(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.strm_lambda*, align 8
  %11 = alloca %struct.array_data*, align 8
  %12 = alloca %struct.strm_lambda*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @strm_io_p(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @STRM_IO_READ, align 4
  %22 = call i32 @strm_io_stream(i32 %20, i32 %21)
  %23 = call i32 @strm_stream_value(i32 %22)
  store i32 %23, i32* %7, align 4
  br label %57

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @strm_lambda_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.strm_lambda* @strm_value_lambda(i32 %29)
  store %struct.strm_lambda* %30, %struct.strm_lambda** %10, align 8
  %31 = load i64, i64* @strm_filter, align 8
  %32 = load i32, i32* @blk_exec, align 4
  %33 = load %struct.strm_lambda*, %struct.strm_lambda** %10, align 8
  %34 = bitcast %struct.strm_lambda* %33 to i8*
  %35 = call i32 @strm_stream_new(i64 %31, i32 %32, i32* null, i8* %34)
  %36 = call i32 @strm_stream_value(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %56

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @strm_array_p(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = call %struct.array_data* @malloc(i32 16)
  store %struct.array_data* %42, %struct.array_data** %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @strm_value_ary(i32 %43)
  %45 = load %struct.array_data*, %struct.array_data** %11, align 8
  %46 = getelementptr inbounds %struct.array_data, %struct.array_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.array_data*, %struct.array_data** %11, align 8
  %48 = getelementptr inbounds %struct.array_data, %struct.array_data* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* @strm_producer, align 8
  %50 = load i32, i32* @arr_exec, align 4
  %51 = load %struct.array_data*, %struct.array_data** %11, align 8
  %52 = bitcast %struct.array_data* %51 to i8*
  %53 = call i32 @strm_stream_new(i64 %49, i32 %50, i32* null, i8* %52)
  %54 = call i32 @strm_stream_value(i32 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %41, %37
  br label %56

56:                                               ; preds = %55, %28
  br label %57

57:                                               ; preds = %56, %19
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @strm_io_p(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @STRM_IO_WRITE, align 4
  %64 = call i32 @strm_io_stream(i32 %62, i32 %63)
  %65 = call i32 @strm_stream_value(i32 %64)
  store i32 %65, i32* %8, align 4
  br label %94

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @strm_lambda_p(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = call %struct.strm_lambda* @strm_value_lambda(i32 %71)
  store %struct.strm_lambda* %72, %struct.strm_lambda** %12, align 8
  %73 = load i64, i64* @strm_filter, align 8
  %74 = load i32, i32* @blk_exec, align 4
  %75 = load %struct.strm_lambda*, %struct.strm_lambda** %12, align 8
  %76 = bitcast %struct.strm_lambda* %75 to i8*
  %77 = call i32 @strm_stream_new(i64 %73, i32 %74, i32* null, i8* %76)
  %78 = call i32 @strm_stream_value(i32 %77)
  store i32 %78, i32* %8, align 4
  br label %93

79:                                               ; preds = %66
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @strm_cfunc_p(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = call i8* @strm_value_cfunc(i32 %84)
  store i8* %85, i8** %13, align 8
  %86 = load i64, i64* @strm_filter, align 8
  %87 = load i32, i32* @cfunc_exec, align 4
  %88 = load i32*, i32** @cfunc_closer, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @strm_stream_new(i64 %86, i32 %87, i32* %88, i8* %89)
  %91 = call i32 @strm_stream_value(i32 %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %83, %79
  br label %93

93:                                               ; preds = %92, %70
  br label %94

94:                                               ; preds = %93, %61
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @strm_stream_p(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %137

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @strm_stream_p(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = call %struct.TYPE_7__* @strm_value_stream(i32 %103)
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %14, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call %struct.TYPE_7__* @strm_value_stream(i32 %105)
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %15, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %108 = icmp eq %struct.TYPE_7__* %107, null
  br i1 %108, label %124, label %109

109:                                              ; preds = %102
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %111 = icmp eq %struct.TYPE_7__* %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %109
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @strm_consumer, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @strm_producer, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118, %112, %109, %102
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = call i32 @strm_raise(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %127 = load i32, i32* @STRM_NG, align 4
  store i32 %127, i32* %5, align 4
  br label %139

128:                                              ; preds = %118
  %129 = load i32, i32* %7, align 4
  %130 = call %struct.TYPE_7__* @strm_value_stream(i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = call %struct.TYPE_7__* @strm_value_stream(i32 %131)
  %133 = call i32 @strm_stream_connect(%struct.TYPE_7__* %130, %struct.TYPE_7__* %132)
  %134 = load i32, i32* %8, align 4
  %135 = load i32*, i32** %9, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @STRM_OK, align 4
  store i32 %136, i32* %5, align 4
  br label %139

137:                                              ; preds = %98, %94
  %138 = load i32, i32* @STRM_NG, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %128, %124
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i64 @strm_io_p(i32) #1

declare dso_local i32 @strm_stream_value(i32) #1

declare dso_local i32 @strm_io_stream(i32, i32) #1

declare dso_local i64 @strm_lambda_p(i32) #1

declare dso_local %struct.strm_lambda* @strm_value_lambda(i32) #1

declare dso_local i32 @strm_stream_new(i64, i32, i32*, i8*) #1

declare dso_local i64 @strm_array_p(i32) #1

declare dso_local %struct.array_data* @malloc(i32) #1

declare dso_local i32 @strm_value_ary(i32) #1

declare dso_local i64 @strm_cfunc_p(i32) #1

declare dso_local i8* @strm_value_cfunc(i32) #1

declare dso_local i64 @strm_stream_p(i32) #1

declare dso_local %struct.TYPE_7__* @strm_value_stream(i32) #1

declare dso_local i32 @strm_raise(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @strm_stream_connect(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
