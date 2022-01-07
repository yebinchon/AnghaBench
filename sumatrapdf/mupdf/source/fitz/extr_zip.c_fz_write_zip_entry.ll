; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_zip.c_fz_write_zip_entry.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_zip.c_fz_write_zip_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i64 }

@ZIP_CENTRAL_DIRECTORY_SIG = common dso_local global i32 0, align 4
@ZIP_LOCAL_FILE_SIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_write_zip_entry(i32* %0, %struct.TYPE_5__* %1, i8* %2, %struct.TYPE_6__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fz_tell_output(i32* %13, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = call i32 @crc32(i32 0, i8* null, i32 0)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @crc32(i32 %19, i8* %22, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ZIP_CENTRAL_DIRECTORY_SIG, align 4
  %33 = call i32 @fz_append_int32_le(i32* %28, i32 %31, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fz_append_int16_le(i32* %34, i32 %37, i32 0)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fz_append_int16_le(i32* %39, i32 %42, i32 20)
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fz_append_int16_le(i32* %44, i32 %47, i32 0)
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fz_append_int16_le(i32* %49, i32 %52, i32 0)
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fz_append_int16_le(i32* %54, i32 %57, i32 0)
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fz_append_int16_le(i32* %59, i32 %62, i32 0)
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @fz_append_int32_le(i32* %64, i32 %67, i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @fz_append_int32_le(i32* %70, i32 %73, i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @fz_append_int32_le(i32* %79, i32 %82, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = call i64 @strlen(i8* %92)
  %94 = trunc i64 %93 to i32
  %95 = call i32 @fz_append_int16_le(i32* %88, i32 %91, i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @fz_append_int16_le(i32* %96, i32 %99, i32 0)
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @fz_append_int16_le(i32* %101, i32 %104, i32 0)
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @fz_append_int16_le(i32* %106, i32 %109, i32 0)
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fz_append_int16_le(i32* %111, i32 %114, i32 0)
  %116 = load i32*, i32** %6, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @fz_append_int32_le(i32* %116, i32 %119, i32 0)
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @fz_append_int32_le(i32* %121, i32 %124, i32 %125)
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @fz_append_string(i32* %127, i32 %130, i8* %131)
  %133 = load i32*, i32** %6, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ZIP_LOCAL_FILE_SIG, align 4
  %138 = call i32 @fz_write_int32_le(i32* %133, i32 %136, i32 %137)
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @fz_write_int16_le(i32* %139, i32 %142, i32 20)
  %144 = load i32*, i32** %6, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @fz_write_int16_le(i32* %144, i32 %147, i32 0)
  %149 = load i32*, i32** %6, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @fz_write_int16_le(i32* %149, i32 %152, i32 0)
  %154 = load i32*, i32** %6, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @fz_write_int16_le(i32* %154, i32 %157, i32 0)
  %159 = load i32*, i32** %6, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @fz_write_int16_le(i32* %159, i32 %162, i32 0)
  %164 = load i32*, i32** %6, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @fz_write_int32_le(i32* %164, i32 %167, i32 %168)
  %170 = load i32*, i32** %6, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 @fz_write_int32_le(i32* %170, i32 %173, i32 %177)
  %179 = load i32*, i32** %6, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @fz_write_int32_le(i32* %179, i32 %182, i32 %186)
  %188 = load i32*, i32** %6, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i8*, i8** %8, align 8
  %193 = call i64 @strlen(i8* %192)
  %194 = trunc i64 %193 to i32
  %195 = call i32 @fz_write_int16_le(i32* %188, i32 %191, i32 %194)
  %196 = load i32*, i32** %6, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @fz_write_int16_le(i32* %196, i32 %199, i32 0)
  %201 = load i32*, i32** %6, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i8*, i8** %8, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = call i64 @strlen(i8* %206)
  %208 = call i32 @fz_write_data(i32* %201, i32 %204, i8* %205, i64 %207)
  %209 = load i32*, i32** %6, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @fz_write_data(i32* %209, i32 %212, i8* %215, i64 %218)
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  ret void
}

declare dso_local i32 @fz_tell_output(i32*, i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @fz_append_int32_le(i32*, i32, i32) #1

declare dso_local i32 @fz_append_int16_le(i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fz_append_string(i32*, i32, i8*) #1

declare dso_local i32 @fz_write_int32_le(i32*, i32, i32) #1

declare dso_local i32 @fz_write_int16_le(i32*, i32, i32) #1

declare dso_local i32 @fz_write_data(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
