; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_parse-rar.c_rar_get_name.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_parse-rar.c_rar_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.rar_header = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@LHD_LARGE = common dso_local global i32 0, align 4
@LHD_UNICODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Couldn't seek back to the end of the entry header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rar_get_name(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca [21 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rar_header, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = bitcast %struct.TYPE_8__* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %150, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i32 @ar_seek(i32 %20, i64 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %155

28:                                               ; preds = %17
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = call i32 @rar_parse_header(%struct.TYPE_8__* %29, %struct.rar_header* %8)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i8* null, i8** %2, align 8
  br label %155

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  %38 = call i32 (i32, ...) @ar_read(i32 %36, i8* %37, i64 21)
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 21
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i8* null, i8** %2, align 8
  br label %155

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.rar_header, %struct.rar_header* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LHD_LARGE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ar_skip(i32 %51, i32 8)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i8* null, i8** %2, align 8
  br label %155

55:                                               ; preds = %48, %42
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  %57 = getelementptr inbounds i8, i8* %56, i64 15
  %58 = call i32 @uint16le(i8* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i8* @malloc(i32 %60)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i32, ...) @ar_read(i32 %67, i8* %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64, %55
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @free(i8* %74)
  store i8* null, i8** %2, align 8
  br label %155

76:                                               ; preds = %64
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 0, i8* %80, align 1
  %81 = getelementptr inbounds %struct.rar_header, %struct.rar_header* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @LHD_UNICODE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %76
  %87 = load i8*, i8** %7, align 8
  %88 = call i8* @ar_conv_dos_to_utf8(i8* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @free(i8* %92)
  br label %114

94:                                               ; preds = %76
  %95 = load i32, i32* %6, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i8*, i8** %7, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  br label %113

104:                                              ; preds = %94
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i8* @rar_conv_unicode_to_utf8(i8* %105, i32 %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @free(i8* %111)
  br label %113

113:                                              ; preds = %104, %99
  br label %114

114:                                              ; preds = %113, %86
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %114
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %9, align 8
  br label %125

125:                                              ; preds = %129, %120
  %126 = load i8*, i8** %9, align 8
  %127 = call i8* @strchr(i8* %126, i8 signext 92)
  store i8* %127, i8** %9, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i8*, i8** %9, align 8
  store i8 47, i8* %130, align 1
  br label %125

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %114
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %138, %142
  %144 = load i32, i32* @SEEK_SET, align 4
  %145 = call i32 @ar_seek(i32 %135, i64 %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %132
  %148 = call i32 @warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %132
  br label %150

150:                                              ; preds = %149, %1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  store i8* %154, i8** %2, align 8
  br label %155

155:                                              ; preds = %150, %73, %54, %41, %32, %27
  %156 = load i8*, i8** %2, align 8
  ret i8* %156
}

declare dso_local i32 @ar_seek(i32, i64, i32) #1

declare dso_local i32 @rar_parse_header(%struct.TYPE_8__*, %struct.rar_header*) #1

declare dso_local i32 @ar_read(i32, ...) #1

declare dso_local i32 @ar_skip(i32, i32) #1

declare dso_local i32 @uint16le(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @ar_conv_dos_to_utf8(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @rar_conv_unicode_to_utf8(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
