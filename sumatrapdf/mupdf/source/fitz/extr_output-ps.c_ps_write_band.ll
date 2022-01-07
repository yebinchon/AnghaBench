; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-ps.c_ps_write_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-ps.c_ps_write_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i8*, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"compression error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i8*)* @ps_write_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_write_band(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %13, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %14, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %17, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %6
  br label %217

46:                                               ; preds = %6
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %16, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %17, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %59, %60
  store i32 %61, i32* %22, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i32, i32* %22, align 4
  %65 = call i64 @deflateBound(%struct.TYPE_7__* %63, i32 %64)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %23, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %56
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %22, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %71, %56
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @fz_free(i32* %78, i8* %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i8* null, i8** %84, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %22, align 4
  %87 = call i8* @fz_malloc(i32* %85, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %22, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %77, %71
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %23, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %98, %93
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @fz_free(i32* %105, i8* %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i8* null, i8** %111, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %23, align 4
  %114 = call i8* @fz_malloc(i32* %112, i32 %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %23, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %104, %98
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %24, align 8
  store i32 0, i32* %19, align 4
  br label %124

124:                                              ; preds = %160, %120
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %163

128:                                              ; preds = %124
  store i32 0, i32* %18, align 4
  br label %129

129:                                              ; preds = %148, %128
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %129
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %20, align 4
  br label %135

135:                                              ; preds = %144, %133
  %136 = load i32, i32* %20, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i8*, i8** %12, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %12, align 8
  %141 = load i8, i8* %139, align 1
  %142 = load i8*, i8** %24, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %24, align 8
  store i8 %141, i8* %142, align 1
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %20, align 4
  br label %135

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %18, align 4
  br label %129

151:                                              ; preds = %129
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %17, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sub nsw i32 %152, %155
  %157 = load i8*, i8** %12, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %12, align 8
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %19, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %19, align 4
  br label %124

163:                                              ; preds = %124
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = bitcast i8* %166 to i32*
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  store i32* %167, i32** %170, align 8
  %171 = load i32, i32* %22, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = bitcast i8* %177 to i32*
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  store i32* %178, i32** %181, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  store i64 %185, i64* %188, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 4
  %191 = load i32, i32* @Z_NO_FLUSH, align 4
  %192 = call i32 @deflate(%struct.TYPE_7__* %190, i32 %191)
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %21, align 4
  %194 = load i32, i32* @Z_OK, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %163
  %197 = load i32*, i32** %7, align 8
  %198 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %199 = load i32, i32* %21, align 4
  %200 = call i32 @fz_throw(i32* %197, i32 %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %196, %163
  %202 = load i32*, i32** %7, align 8
  %203 = load i32*, i32** %14, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = sub nsw i64 %210, %214
  %216 = call i32 @fz_write_data(i32* %202, i32* %203, i8* %206, i64 %215)
  br label %217

217:                                              ; preds = %201, %45
  ret void
}

declare dso_local i64 @deflateBound(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fz_free(i32*, i8*) #1

declare dso_local i8* @fz_malloc(i32*, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @fz_write_data(i32*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
