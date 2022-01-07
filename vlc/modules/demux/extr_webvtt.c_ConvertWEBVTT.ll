; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_ConvertWEBVTT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_ConvertWEBVTT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }
%struct.vlc_memstream = type { i32, i32 }

@__const.ConvertWEBVTT.vttcbox = private unnamed_addr constant [8 x i8] c"\00\00\00\00vttc", align 1
@__const.ConvertWEBVTT.idenbox = private unnamed_addr constant [8 x i8] c"\00\00\00\00iden", align 1
@__const.ConvertWEBVTT.attrbox = private unnamed_addr constant [8 x i8] c"\00\00\00\00sttg", align 1
@__const.ConvertWEBVTT.paylbox = private unnamed_addr constant [8 x i8] c"\00\00\00\00payl", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32)* @ConvertWEBVTT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ConvertWEBVTT(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_memstream, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [8 x i8], align 1
  %12 = alloca [8 x i8], align 1
  %13 = alloca [8 x i8], align 1
  %14 = alloca [8 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = call i64 @vlc_memstream_open(%struct.vlc_memstream* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %128

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = add nsw i32 8, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 8, %33
  br label %36

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i32 [ %34, %29 ], [ 0, %35 ]
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = add nsw i32 8, %47
  br label %50

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i32 [ %48, %43 ], [ 0, %49 ]
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 8, %53
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %56, %57
  store i64 %58, i64* %10, align 8
  %59 = bitcast [8 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %59, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.ConvertWEBVTT.vttcbox, i32 0, i32 0), i64 8, i1 false)
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 7
  store i8 120, i8* %63, align 1
  br label %64

64:                                               ; preds = %62, %50
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @SetDWBE(i8* %65, i64 %66)
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %69 = call i32 @vlc_memstream_write(%struct.vlc_memstream* %6, i8* %68, i64 8)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %64
  %75 = bitcast [8 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %75, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.ConvertWEBVTT.idenbox, i32 0, i32 0), i64 8, i1 false)
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @SetDWBE(i8* %76, i64 %77)
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %80 = call i32 @vlc_memstream_write(%struct.vlc_memstream* %6, i8* %79, i64 8)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = sub i64 %84, 8
  %86 = call i32 @vlc_memstream_write(%struct.vlc_memstream* %6, i8* %83, i64 %85)
  br label %87

87:                                               ; preds = %74, %64
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = bitcast [8 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %93, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.ConvertWEBVTT.attrbox, i32 0, i32 0), i64 8, i1 false)
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @SetDWBE(i8* %94, i64 %95)
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %98 = call i32 @vlc_memstream_write(%struct.vlc_memstream* %6, i8* %97, i64 8)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = sub i64 %102, 8
  %104 = call i32 @vlc_memstream_write(%struct.vlc_memstream* %6, i8* %101, i64 %103)
  br label %105

105:                                              ; preds = %92, %87
  %106 = bitcast [8 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %106, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.ConvertWEBVTT.paylbox, i32 0, i32 0), i64 8, i1 false)
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @SetDWBE(i8* %107, i64 %108)
  %110 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %111 = call i32 @vlc_memstream_write(%struct.vlc_memstream* %6, i8* %110, i64 8)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = sub i64 %115, 8
  %117 = call i32 @vlc_memstream_write(%struct.vlc_memstream* %6, i8* %114, i64 %116)
  %118 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %6)
  %119 = load i64, i64* @VLC_SUCCESS, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %105
  %122 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %6, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %6, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32* @block_heap_Alloc(i32 %123, i32 %125)
  store i32* %126, i32** %3, align 8
  br label %128

127:                                              ; preds = %105
  store i32* null, i32** %3, align 8
  br label %128

128:                                              ; preds = %127, %121, %17
  %129 = load i32*, i32** %3, align 8
  ret i32* %129
}

declare dso_local i64 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SetDWBE(i8*, i64) #1

declare dso_local i32 @vlc_memstream_write(%struct.vlc_memstream*, i8*, i64) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

declare dso_local i32* @block_heap_Alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
