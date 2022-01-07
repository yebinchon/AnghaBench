; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_headers_end.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_parse_headers_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_parser = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (i8*)*, i32 (i8*, i32, i8***)* }

@VLC_H2_MAX_HEADERS = common dso_local global i32 0, align 4
@VLC_H2_COMPRESSION_ERROR = common dso_local global i32 0, align 4
@VLC_H2_REFUSED_STREAM = common dso_local global i32 0, align 4
@vlc_h2_parse_generic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_h2_parser*)* @vlc_h2_parse_headers_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_h2_parse_headers_end(%struct.vlc_h2_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vlc_h2_parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vlc_h2_parser* %0, %struct.vlc_h2_parser** %3, align 8
  %15 = load i32, i32* @VLC_H2_MAX_HEADERS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca [2 x i8*], i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %20 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %24 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %28 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = bitcast [2 x i8*]* %18 to i8***
  %32 = load i32, i32* @VLC_H2_MAX_HEADERS, align 4
  %33 = call i32 @hpack_decode(i32 %22, i32 %26, i32 %30, i8*** %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @VLC_H2_MAX_HEADERS, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %55, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @VLC_H2_MAX_HEADERS, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 %44
  %46 = getelementptr inbounds [2 x i8*], [2 x i8*]* %45, i64 0, i64 0
  %47 = load i8*, i8** %46, align 16
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 %50
  %52 = getelementptr inbounds [2 x i8*], [2 x i8*]* %51, i64 0, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %38

58:                                               ; preds = %38
  store i32 -1, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %1
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %64 = load i32, i32* @VLC_H2_COMPRESSION_ERROR, align 4
  %65 = call i32 @vlc_h2_parse_error(%struct.vlc_h2_parser* %63, i32 %64)
  store i32 %65, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %174

66:                                               ; preds = %59
  %67 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %68 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %69 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @vlc_h2_stream_lookup(%struct.vlc_h2_parser* %67, i64 %71)
  store i8* %72, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %137

75:                                               ; preds = %66
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  br label %81

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 1, %80 ]
  %83 = zext i32 %82 to i64
  %84 = call i8* @llvm.stacksave()
  store i8* %84, i8** %11, align 8
  %85 = alloca [2 x i8*], i64 %83, align 16
  store i64 %83, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %109, %81
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 %92
  %94 = getelementptr inbounds [2 x i8*], [2 x i8*]* %93, i64 0, i64 0
  %95 = load i8*, i8** %94, align 16
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x i8*], [2 x i8*]* %85, i64 %97
  %99 = getelementptr inbounds [2 x i8*], [2 x i8*]* %98, i64 0, i64 0
  store i8* %95, i8** %99, align 16
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 %101
  %103 = getelementptr inbounds [2 x i8*], [2 x i8*]* %102, i64 0, i64 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x i8*], [2 x i8*]* %85, i64 %106
  %108 = getelementptr inbounds [2 x i8*], [2 x i8*]* %107, i64 0, i64 1
  store i8* %104, i8** %108, align 8
  br label %109

109:                                              ; preds = %90
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %86

112:                                              ; preds = %86
  %113 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %114 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %113, i32 0, i32 2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32 (i8*, i32, i8***)*, i32 (i8*, i32, i8***)** %116, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load i32, i32* %6, align 4
  %120 = bitcast [2 x i8*]* %85 to i8***
  %121 = call i32 %117(i8* %118, i32 %119, i8*** %120)
  %122 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %123 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %112
  %128 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %129 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %128, i32 0, i32 2
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32 (i8*)*, i32 (i8*)** %131, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 %132(i8* %133)
  br label %135

135:                                              ; preds = %127, %112
  %136 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %136)
  br label %145

137:                                              ; preds = %66
  %138 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %139 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %140 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @VLC_H2_REFUSED_STREAM, align 4
  %144 = call i32 @vlc_h2_stream_error(%struct.vlc_h2_parser* %138, i64 %142, i32 %143)
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %137, %135
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %163, %145
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 %152
  %154 = getelementptr inbounds [2 x i8*], [2 x i8*]* %153, i64 0, i64 0
  %155 = load i8*, i8** %154, align 16
  %156 = call i32 @free(i8* %155)
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 %158
  %160 = getelementptr inbounds [2 x i8*], [2 x i8*]* %159, i64 0, i64 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @free(i8* %161)
  br label %163

163:                                              ; preds = %150
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %146

166:                                              ; preds = %146
  %167 = load i32, i32* @vlc_h2_parse_generic, align 4
  %168 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %169 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 8
  %170 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %3, align 8
  %171 = getelementptr inbounds %struct.vlc_h2_parser, %struct.vlc_h2_parser* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %174

174:                                              ; preds = %166, %62
  %175 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hpack_decode(i32, i32, i32, i8***, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @vlc_h2_parse_error(%struct.vlc_h2_parser*, i32) #2

declare dso_local i8* @vlc_h2_stream_lookup(%struct.vlc_h2_parser*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @vlc_h2_stream_error(%struct.vlc_h2_parser*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
