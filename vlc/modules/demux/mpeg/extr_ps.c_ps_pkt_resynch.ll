; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.c_ps_pkt_resynch.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.c_ps_pkt_resynch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS_STREAM_ID_END_STREAM = common dso_local global i32 0, align 4
@CDXA_PS = common dso_local global i32 0, align 4
@__const.ps_pkt_resynch.cdxasynccode = private unnamed_addr constant [12 x i32] [i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0], align 16
@PS_STREAM_ID_PACK_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @ps_pkt_resynch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_pkt_resynch(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [12 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @vlc_stream_Peek(i32* %12, i32** %8, i32 4)
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %126

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PS_STREAM_ID_END_STREAM, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %126

38:                                               ; preds = %31, %26, %21, %16
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @vlc_stream_Peek(i32* %39, i32** %8, i32 512)
  store i32 %40, i32* %9, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %126

43:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %111, %65, %43
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %118

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @CDXA_PS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp sge i32 %56, 48
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = bitcast [12 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %59, i8* align 16 bitcast ([12 x i32]* @__const.ps_pkt_resynch.cdxasynccode to i8*), i64 48, i1 false)
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 24
  %62 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 0
  %63 = call i32 @memcmp(i32* %61, i32* %62, i32 12)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 48
  store i32 %67, i32* %9, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 48
  store i32* %69, i32** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 48
  store i32 %71, i32* %10, align 4
  br label %44

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %55, %52, %48
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %73
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %111

88:                                               ; preds = %83
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PS_STREAM_ID_END_STREAM, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PS_STREAM_ID_PACK_HEADER, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %97, %94
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @vlc_stream_Read(i32* %104, i32* null, i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 -1
  store i32 %110, i32* %4, align 4
  br label %126

111:                                              ; preds = %97, %88, %83, %78, %73
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %44

118:                                              ; preds = %47
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @vlc_stream_Read(i32* %119, i32* null, i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 0, i32 -1
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %118, %103, %42, %37, %15
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @vlc_stream_Read(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
