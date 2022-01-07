; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_save_dib.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_save_dib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_16__, i8*, i8* }
%struct.TYPE_16__ = type { i64, i64, i32, i32 }

@S_OK = common dso_local global i64 0, align 8
@TYMED_NULL = common dso_local global i64 0, align 8
@LOGPIXELSX = common dso_local global i32 0, align 4
@LOGPIXELSY = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i32, i32*)* @save_dib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @save_dib(%struct.TYPE_20__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i64, i64* @S_OK, align 8
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TYMED_NULL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @GlobalSize(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_19__* @GlobalLock(i32 %31)
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %9, align 8
  br label %33

33:                                               ; preds = %20, %3
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %125, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = call i32 @init_stream_header(%struct.TYPE_20__* %37, %struct.TYPE_19__* %10)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @write_clipformat(i32* %39, i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @FAILED(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %155

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %110

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %52
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %60
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @MulDiv(i32 %70, i32 100000, i64 %74)
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 8
  store i8* %75, i8** %76, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i8* @MulDiv(i32 %80, i32 100000, i64 %84)
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 7
  store i8* %85, i8** %86, align 8
  br label %109

87:                                               ; preds = %60, %52
  %88 = call i32 @GetDC(i32 0)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @LOGPIXELSX, align 4
  %95 = call i64 @GetDeviceCaps(i32 %93, i32 %94)
  %96 = call i8* @MulDiv(i32 %92, i32 2540, i64 %95)
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 8
  store i8* %96, i8** %97, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @LOGPIXELSY, align 4
  %104 = call i64 @GetDeviceCaps(i32 %102, i32 %103)
  %105 = call i8* @MulDiv(i32 %101, i32 2540, i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 7
  store i8* %105, i8** %106, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @ReleaseDC(i32 0, i32 %107)
  br label %109

109:                                              ; preds = %87, %66
  br label %110

110:                                              ; preds = %109, %49
  %111 = load i32*, i32** %6, align 8
  %112 = call i64 @IStream_Write(i32* %111, %struct.TYPE_19__* %10, i32 80, i32* null)
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @S_OK, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32*, i32** %6, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i64 @IStream_Write(i32* %120, %struct.TYPE_19__* %121, i32 %122, i32* null)
  store i64 %123, i64* %7, align 8
  br label %124

124:                                              ; preds = %119, %116, %110
  br label %154

125:                                              ; preds = %33
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  store i32 19778, i32* %129, align 4
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = add i64 %131, 80
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 5
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %138 = load i32, i32* @DIB_RGB_COLORS, align 4
  %139 = call i64 @bitmap_info_size(%struct.TYPE_19__* %137, i32 %138)
  %140 = add i64 %139, 80
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  store i64 %140, i64* %141, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = call i64 @IStream_Write(i32* %142, %struct.TYPE_19__* %12, i32 80, i32* null)
  store i64 %143, i64* %7, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* @S_OK, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %128
  %148 = load i32*, i32** %6, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i64 @IStream_Write(i32* %148, %struct.TYPE_19__* %149, i32 %150, i32* null)
  store i64 %151, i64* %7, align 8
  br label %152

152:                                              ; preds = %147, %128
  br label %153

153:                                              ; preds = %152, %125
  br label %154

154:                                              ; preds = %153, %124
  br label %155

155:                                              ; preds = %154, %48
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %157 = icmp ne %struct.TYPE_19__* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @GlobalUnlock(i32 %163)
  br label %165

165:                                              ; preds = %158, %155
  %166 = load i64, i64* %7, align 8
  ret i64 %166
}

declare dso_local i32 @GlobalSize(i32) #1

declare dso_local %struct.TYPE_19__* @GlobalLock(i32) #1

declare dso_local i32 @init_stream_header(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @write_clipformat(i32*, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i8* @MulDiv(i32, i32, i64) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i64 @IStream_Write(i32*, %struct.TYPE_19__*, i32, i32*) #1

declare dso_local i64 @bitmap_info_size(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
