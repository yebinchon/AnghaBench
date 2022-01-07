; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_sw.c_upload_plane.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_sw.c_upload_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.priv* }
%struct.TYPE_6__ = type { i32 (i32, i32, i32, i32, i32, i32, i32, i32, i8*)*, i32 (i32, i32)* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.priv = type { i64, i8*, i32 }

@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@GL_UNPACK_ROW_LENGTH = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, i32, i32, i8*)* @upload_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_plane(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.priv*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load %struct.priv*, %struct.priv** %24, align 8
  store %struct.priv* %25, %struct.priv** %16, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %18, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %48 = call i32 %46(i32 %47, i32 4)
  %49 = load %struct.priv*, %struct.priv** %16, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %148, label %53

53:                                               ; preds = %7
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %132

57:                                               ; preds = %53
  %58 = load i32, i32* %14, align 4
  %59 = add i32 %58, 3
  %60 = and i32 %59, -4
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %12, align 4
  %63 = mul i32 %61, %62
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %19, align 8
  %65 = load i8*, i8** %15, align 8
  store i8* %65, i8** %20, align 8
  %66 = load %struct.priv*, %struct.priv** %16, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %19, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %57
  %72 = load %struct.priv*, %struct.priv** %16, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %19, align 8
  %76 = call i8* @realloc_or_free(i8* %74, i64 %75)
  %77 = load %struct.priv*, %struct.priv** %16, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.priv*, %struct.priv** %16, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.priv*, %struct.priv** %16, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %86, i32* %8, align 4
  br label %183

87:                                               ; preds = %71
  %88 = load i64, i64* %19, align 8
  %89 = load %struct.priv*, %struct.priv** %16, align 8
  %90 = getelementptr inbounds %struct.priv, %struct.priv* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %57
  %92 = load %struct.priv*, %struct.priv** %16, align 8
  %93 = getelementptr inbounds %struct.priv, %struct.priv* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %21, align 8
  store i32 0, i32* %22, align 4
  br label %95

95:                                               ; preds = %112, %91
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i8*, i8** %21, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @memcpy(i8* %100, i8* %101, i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = load i8*, i8** %20, align 8
  %106 = zext i32 %104 to i64
  %107 = getelementptr i8, i8* %105, i64 %106
  store i8* %107, i8** %20, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i8*, i8** %21, align 8
  %110 = zext i32 %108 to i64
  %111 = getelementptr i8, i8* %109, i64 %110
  store i8* %111, i8** %21, align 8
  br label %112

112:                                              ; preds = %99
  %113 = load i32, i32* %22, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %22, align 4
  br label %95

115:                                              ; preds = %95
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i8*)** %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.priv*, %struct.priv** %16, align 8
  %129 = getelementptr inbounds %struct.priv, %struct.priv* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 %120(i32 %123, i32 0, i32 0, i32 0, i32 %124, i32 %125, i32 %126, i32 %127, i8* %130)
  br label %147

132:                                              ; preds = %53
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i8*)** %136, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load i8*, i8** %15, align 8
  %146 = call i32 %137(i32 %140, i32 0, i32 0, i32 0, i32 %141, i32 %142, i32 %143, i32 %144, i8* %145)
  br label %147

147:                                              ; preds = %132, %115
  br label %181

148:                                              ; preds = %7
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32 (i32, i32)*, i32 (i32, i32)** %152, align 8
  %154 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %11, align 4
  %157 = mul i32 %155, %156
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %148
  %161 = load i32, i32* %14, align 4
  br label %163

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi i32 [ %161, %160 ], [ 1, %162 ]
  %165 = udiv i32 %157, %164
  %166 = call i32 %153(i32 %154, i32 %165)
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i8*)** %170, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %18, align 4
  %179 = load i8*, i8** %15, align 8
  %180 = call i32 %171(i32 %174, i32 0, i32 0, i32 0, i32 %175, i32 %176, i32 %177, i32 %178, i8* %179)
  br label %181

181:                                              ; preds = %163, %147
  %182 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %181, %83
  %184 = load i32, i32* %8, align 4
  ret i32 %184
}

declare dso_local i8* @realloc_or_free(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
