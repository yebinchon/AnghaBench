; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_parse-zip.c_zip_parse_extra_fields.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_parse-zip.c_zip_parse_extra_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.zip_entry = type { i64, i64, i64, i64, i32, i32 }

@UINT32_MAX = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.zip_entry*)* @zip_parse_extra_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_parse_extra_fields(%struct.TYPE_5__* %0, %struct.zip_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.zip_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.zip_entry* %1, %struct.zip_entry** %5, align 8
  %10 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %11 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %186

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %21 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ar_skip(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %186

26:                                               ; preds = %15
  %27 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %28 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32* @malloc(i64 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %40 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @ar_read(i32 %37, i32* %38, i64 %41)
  %43 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %44 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %33, %26
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @free(i32* %48)
  store i32 0, i32* %3, align 4
  br label %186

50:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %173, %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %56 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %183

59:                                               ; preds = %51
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @uint16le(i32* %63)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %172

66:                                               ; preds = %59
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = call i32 @uint16le(i32* %71)
  store i32 %72, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %73 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %74 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UINT32_MAX, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 8
  %81 = load i32, i32* %8, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  %91 = call i8* @uint64le(i32* %90)
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %94 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 8
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %83, %78, %66
  %98 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %99 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @UINT32_MAX, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 8
  %106 = load i32, i32* %8, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = call i8* @uint64le(i32* %115)
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %119 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 8
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %108, %103, %97
  %123 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %124 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @UINT32_MAX, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %122
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 8
  %131 = load i32, i32* %8, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %128
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %134, i64 %139
  %141 = call i8* @uint64le(i32* %140)
  %142 = ptrtoint i8* %141 to i64
  %143 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %144 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %143, i32 0, i32 3
  store i64 %142, i64* %144, align 8
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 8
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %133, %128, %122
  %148 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %149 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @UINT16_MAX, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %147
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 4
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  %166 = call i32 @uint32le(i32* %165)
  %167 = load %struct.zip_entry*, %struct.zip_entry** %5, align 8
  %168 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 4
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %158, %153, %147
  br label %183

172:                                              ; preds = %59
  br label %173

173:                                              ; preds = %172
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = call i32 @uint16le(i32* %178)
  %180 = add nsw i32 4, %179
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %7, align 4
  br label %51

183:                                              ; preds = %171, %51
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @free(i32* %184)
  store i32 1, i32* %3, align 4
  br label %186

186:                                              ; preds = %183, %47, %25, %14
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @ar_skip(i32, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @ar_read(i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @uint16le(i32*) #1

declare dso_local i8* @uint64le(i32*) #1

declare dso_local i32 @uint32le(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
