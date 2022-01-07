; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_phix_manager.c_opj_write_phix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_phix_manager.c_opj_write_phix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@JPIP_PHIX = common dso_local global i32 0, align 4
@JPIP_FAIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_write_phix(i32 %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i64 %1, i64* %20, align 8
  store i32 %0, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @opj_calloc(i64 %22, i32 8)
  %24 = inttoptr i64 %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %18, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %119

28:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %29

29:                                               ; preds = %112, %28
  %30 = load i32, i32* %17, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %115

32:                                               ; preds = %29
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %19, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @opj_stream_seek(i32* %36, i32 %37, i32* %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @opj_stream_tell(i32* %41)
  store i32 %42, i32* %19, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @opj_stream_skip(i32* %43, i32 4, i32* %44)
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %47 = load i32, i32* @JPIP_PHIX, align 4
  %48 = call i32 @opj_write_bytes(i32* %46, i32 %47, i32 4)
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @opj_stream_write_data(i32* %49, i32* %50, i32 4, i32* %51)
  %53 = load i32, i32* %17, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @opj_write_manf(i32 %53, i64 %55, %struct.TYPE_7__* %56, i32* %57, i32* %58)
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %88, %40
  %61 = load i32, i32* %16, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @opj_write_phixfaix(i32 %67, i32 %68, i64 %74, i32 %69, i32 %70, i32* %71, i32* %72)
  %76 = trunc i64 %75 to i32
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* @JPIP_FAIX, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %66
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %60

91:                                               ; preds = %60
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @opj_stream_tell(i32* %92)
  %94 = load i32, i32* %19, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @opj_stream_seek(i32* %96, i32 4, i32* %97)
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @opj_write_bytes(i32* %99, i32 %100, i32 4)
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @opj_stream_write_data(i32* %102, i32* %103, i32 4, i32* %104)
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @opj_stream_seek(i32* %106, i32 %109, i32* %110)
  br label %112

112:                                              ; preds = %91
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %29

115:                                              ; preds = %29
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %117 = call i32 @opj_free(%struct.TYPE_7__* %116)
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %115, %27
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i64 @opj_calloc(i64, i32) #1

declare dso_local i32 @opj_stream_seek(i32*, i32, i32*) #1

declare dso_local i32 @opj_stream_tell(i32*) #1

declare dso_local i32 @opj_stream_skip(i32*, i32, i32*) #1

declare dso_local i32 @opj_write_bytes(i32*, i32, i32) #1

declare dso_local i32 @opj_stream_write_data(i32*, i32*, i32, i32*) #1

declare dso_local i32 @opj_write_manf(i32, i64, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i64 @opj_write_phixfaix(i32, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @opj_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
