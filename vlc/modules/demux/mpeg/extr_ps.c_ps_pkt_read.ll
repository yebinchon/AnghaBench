; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.c_ps_pkt_read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.c_ps_pkt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS_STREAM_ID_PACK_HEADER = common dso_local global i32 0, align 4
@PS_STREAM_ID_END_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @ps_pkt_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ps_pkt_read(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @vlc_stream_Peek(i32* %7, i32** %4, i32 14)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %85

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ps_pkt_size(i32* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 6
  br i1 %17, label %18, label %81

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PS_STREAM_ID_PACK_HEADER, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %18
  store i32 6, i32* %6, align 4
  br label %25

25:                                               ; preds = %80, %24
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1024
  %29 = call i32 @vlc_stream_Peek(i32* %26, i32** %4, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 4
  %33 = icmp sle i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32* null, i32** %2, align 8
  br label %85

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %77, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 4
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %41
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %48
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PS_STREAM_ID_END_STREAM, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32* @vlc_stream_Block(i32* %74, i32 %75)
  store i32* %76, i32** %2, align 8
  br label %85

77:                                               ; preds = %64, %56, %48, %41
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %36

80:                                               ; preds = %36
  br label %25

81:                                               ; preds = %18, %12
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32* @vlc_stream_Block(i32* %82, i32 %83)
  store i32* %84, i32** %2, align 8
  br label %85

85:                                               ; preds = %81, %73, %34, %11
  %86 = load i32*, i32** %2, align 8
  ret i32* %86
}

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i32) #1

declare dso_local i32 @ps_pkt_size(i32*, i32) #1

declare dso_local i32* @vlc_stream_Block(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
