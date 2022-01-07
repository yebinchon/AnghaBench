; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_compare_bitmap_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_compare_bitmap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_data = type { i32, i32, double, double, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"GetSize(%s) failed, hr=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"expecting %u, got %u (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"GetResolution(%s) failed, hr=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"expecting %0.2f, got %0.2f (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"GetPixelFormat(%s) failed, hr=%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"got unexpected pixel format %s (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"CopyPixels(%s) failed, hr=%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"unexpected pixel data (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"CopyPixels(%s,rc=NULL) failed, hr=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap_data*, %struct.bitmap_data*, i32*, i8*)* @compare_bitmap_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compare_bitmap_data(%struct.bitmap_data* %0, %struct.bitmap_data* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.bitmap_data*, align 8
  %6 = alloca %struct.bitmap_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bitmap_data* %0, %struct.bitmap_data** %5, align 8
  store %struct.bitmap_data* %1, %struct.bitmap_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @IWICBitmapSource_GetSize(i32* %19, i32* %10, i32* %11)
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %18, align 4
  %22 = call i32 @SUCCEEDED(i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %18, align 4
  %25 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %28 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %33 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35, i8* %36)
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %40 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  %43 = zext i1 %42 to i32
  %44 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %45 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i8* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @IWICBitmapSource_GetResolution(i32* %50, double* %12, double* %13)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @SUCCEEDED(i32 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %18, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %55)
  %57 = load double, double* %12, align 8
  %58 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %59 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %58, i32 0, i32 2
  %60 = load double, double* %59, align 8
  %61 = fsub double %57, %60
  %62 = call double @llvm.fabs.f64(double %61)
  %63 = fcmp olt double %62, 2.000000e-02
  %64 = zext i1 %63 to i32
  %65 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %66 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %65, i32 0, i32 2
  %67 = load double, double* %66, align 8
  %68 = load double, double* %12, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), double %67, double %68, i8* %69)
  %71 = load double, double* %13, align 8
  %72 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %73 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %72, i32 0, i32 3
  %74 = load double, double* %73, align 8
  %75 = fsub double %71, %74
  %76 = call double @llvm.fabs.f64(double %75)
  %77 = fcmp olt double %76, 2.000000e-02
  %78 = zext i1 %77 to i32
  %79 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %80 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %79, i32 0, i32 3
  %81 = load double, double* %80, align 8
  %82 = load double, double* %13, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), double %81, double %82, i8* %83)
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @IWICBitmapSource_GetPixelFormat(i32* %85, i32* %17)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @SUCCEEDED(i32 %87)
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %18, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %89, i32 %90)
  %92 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %93 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @IsEqualGUID(i32* %17, i32 %94)
  %96 = call i32 @wine_dbgstr_guid(i32* %17)
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %96, i8* %97)
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %102 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %106 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %110 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %113 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %111, %114
  %116 = add nsw i32 %115, 7
  %117 = sdiv i32 %116, 8
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %120 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  store i32 %122, i32* %16, align 4
  %123 = call i32 (...) @GetProcessHeap()
  %124 = load i32, i32* %16, align 4
  %125 = call i32* @HeapAlloc(i32 %123, i32 0, i32 %124)
  store i32* %125, i32** %9, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @memset(i32* %126, i32 170, i32 %127)
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @IWICBitmapSource_CopyPixels(i32* %129, %struct.TYPE_3__* %14, i32 %130, i32 %131, i32* %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @SUCCEEDED(i32 %134)
  %136 = load i8*, i8** %8, align 8
  %137 = load i32, i32* %18, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %136, i32 %137)
  %139 = load %struct.bitmap_data*, %struct.bitmap_data** %5, align 8
  %140 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @is_indexed_format(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %4
  %145 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %146 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @is_indexed_format(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %144, %4
  %151 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %152 = load i32, i32* %16, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @compare_bits(%struct.bitmap_data* %151, i32 %152, i32* %153)
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %150, %144
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @memset(i32* %158, i32 170, i32 %159)
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = call i32 @IWICBitmapSource_CopyPixels(i32* %161, %struct.TYPE_3__* null, i32 %162, i32 %163, i32* %164)
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* %18, align 4
  %167 = call i32 @SUCCEEDED(i32 %166)
  %168 = load i8*, i8** %8, align 8
  %169 = load i32, i32* %18, align 4
  %170 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %168, i32 %169)
  %171 = load %struct.bitmap_data*, %struct.bitmap_data** %5, align 8
  %172 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @is_indexed_format(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %157
  %177 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %178 = getelementptr inbounds %struct.bitmap_data, %struct.bitmap_data* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @is_indexed_format(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %176, %157
  %183 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %184 = load i32, i32* %16, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @compare_bits(%struct.bitmap_data* %183, i32 %184, i32* %185)
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %182, %176
  %190 = call i32 (...) @GetProcessHeap()
  %191 = load i32*, i32** %9, align 8
  %192 = call i32 @HeapFree(i32 %190, i32 0, i32* %191)
  ret void
}

declare dso_local i32 @IWICBitmapSource_GetSize(i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @IWICBitmapSource_GetResolution(i32*, double*, double*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @IWICBitmapSource_GetPixelFormat(i32*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IWICBitmapSource_CopyPixels(i32*, %struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i64 @is_indexed_format(i32) #1

declare dso_local i32 @compare_bits(%struct.bitmap_data*, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
