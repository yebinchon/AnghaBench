; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_gif_compress.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_gif_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_stream = type { i32, i32* }
%struct.output_stream = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.lzw_state = type { i32 }

@S_OK = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@write_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @gif_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gif_compress(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.input_stream, align 8
  %9 = alloca %struct.output_stream, align 8
  %10 = alloca %struct.lzw_state, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %8, i32 0, i32 1
  store i32* %15, i32** %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %9, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %9, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  store i8 8, i8* %14, align 1
  store i16 8, i16* %11, align 2
  %23 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %9, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @IStream_Write(i32* %24, i8* %14, i32 1, i32* null)
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i64, i64* @E_FAIL, align 8
  store i64 %29, i64* %4, align 8
  br label %104

30:                                               ; preds = %3
  %31 = load i16, i16* %11, align 2
  %32 = load i32, i32* @write_data, align 4
  %33 = call i32 @lzw_state_init(%struct.lzw_state* %10, i16 signext %31, i32 %32, %struct.output_stream* %9)
  %34 = call i32 @lzw_output_clear_code(%struct.lzw_state* %10)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @E_FAIL, align 8
  store i64 %37, i64* %4, align 8
  br label %104

38:                                               ; preds = %30
  %39 = call i64 @read_byte(%struct.input_stream* %8, i8* %14)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %95

41:                                               ; preds = %38
  %42 = load i8, i8* %14, align 1
  %43 = zext i8 %42 to i16
  store i16 %43, i16* %12, align 2
  br label %44

44:                                               ; preds = %77, %41
  %45 = call i64 @read_byte(%struct.input_stream* %8, i8* %14)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %44
  %48 = load i16, i16* %12, align 2
  %49 = load i8, i8* %14, align 1
  %50 = call signext i16 @lzw_dict_lookup(%struct.lzw_state* %10, i16 signext %48, i8 zeroext %49)
  store i16 %50, i16* %13, align 2
  %51 = load i16, i16* %13, align 2
  %52 = sext i16 %51 to i32
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load i16, i16* %12, align 2
  %56 = call i32 @lzw_output_code(%struct.lzw_state* %10, i16 signext %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* @E_FAIL, align 8
  store i64 %59, i64* %4, align 8
  br label %104

60:                                               ; preds = %54
  %61 = load i16, i16* %12, align 2
  %62 = load i8, i8* %14, align 1
  %63 = call i32 @lzw_dict_add(%struct.lzw_state* %10, i16 signext %61, i8 zeroext %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = call i32 @lzw_output_clear_code(%struct.lzw_state* %10)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* @E_FAIL, align 8
  store i64 %69, i64* %4, align 8
  br label %104

70:                                               ; preds = %65
  %71 = call i32 @lzw_dict_reset(%struct.lzw_state* %10)
  br label %72

72:                                               ; preds = %70, %60
  %73 = load i8, i8* %14, align 1
  %74 = zext i8 %73 to i16
  store i16 %74, i16* %12, align 2
  br label %77

75:                                               ; preds = %47
  %76 = load i16, i16* %13, align 2
  store i16 %76, i16* %12, align 2
  br label %77

77:                                               ; preds = %75, %72
  br label %44

78:                                               ; preds = %44
  %79 = load i16, i16* %12, align 2
  %80 = call i32 @lzw_output_code(%struct.lzw_state* %10, i16 signext %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* @E_FAIL, align 8
  store i64 %83, i64* %4, align 8
  br label %104

84:                                               ; preds = %78
  %85 = call i32 @lzw_output_eof_code(%struct.lzw_state* %10)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* @E_FAIL, align 8
  store i64 %88, i64* %4, align 8
  br label %104

89:                                               ; preds = %84
  %90 = call i32 @lzw_flush_bits(%struct.lzw_state* %10)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* @E_FAIL, align 8
  store i64 %93, i64* %4, align 8
  br label %104

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %38
  %96 = call i64 @flush_output_data(%struct.output_stream* %9)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i64, i64* @S_OK, align 8
  br label %102

100:                                              ; preds = %95
  %101 = load i64, i64* @E_FAIL, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i64 [ %99, %98 ], [ %101, %100 ]
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %102, %92, %87, %82, %68, %58, %36, %28
  %105 = load i64, i64* %4, align 8
  ret i64 %105
}

declare dso_local i64 @IStream_Write(i32*, i8*, i32, i32*) #1

declare dso_local i32 @lzw_state_init(%struct.lzw_state*, i16 signext, i32, %struct.output_stream*) #1

declare dso_local i32 @lzw_output_clear_code(%struct.lzw_state*) #1

declare dso_local i64 @read_byte(%struct.input_stream*, i8*) #1

declare dso_local signext i16 @lzw_dict_lookup(%struct.lzw_state*, i16 signext, i8 zeroext) #1

declare dso_local i32 @lzw_output_code(%struct.lzw_state*, i16 signext) #1

declare dso_local i32 @lzw_dict_add(%struct.lzw_state*, i16 signext, i8 zeroext) #1

declare dso_local i32 @lzw_dict_reset(%struct.lzw_state*) #1

declare dso_local i32 @lzw_output_eof_code(%struct.lzw_state*) #1

declare dso_local i32 @lzw_flush_bits(%struct.lzw_state*) #1

declare dso_local i64 @flush_output_data(%struct.output_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
