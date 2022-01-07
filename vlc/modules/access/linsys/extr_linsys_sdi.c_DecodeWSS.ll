; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_DecodeWSS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_DecodeWSS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@VOUT_ASPECT_FACTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WSS parity error\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"new WSS information (ra=%x md=%x cod=%x hlp=%x rvd=%x sub=%x pos=%x srd=%x c=%x cp=%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @DecodeWSS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeWSS(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [1 x %struct.TYPE_8__], align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [1 x %struct.TYPE_8__], [1 x %struct.TYPE_8__]* %4, i64 0, i64 0
  %17 = call i64 @vbi_raw_decode(i32* %12, i32 %15, %struct.TYPE_8__* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %21 = mul nsw i32 4, %20
  %22 = sdiv i32 %21, 3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %116

25:                                               ; preds = %1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = getelementptr inbounds [1 x %struct.TYPE_8__], [1 x %struct.TYPE_8__]* %4, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 7
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 15
  %40 = call i32 @parity(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %25
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = call i32 @msg_Warn(%struct.TYPE_9__* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %61

45:                                               ; preds = %25
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 7
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %50 = mul nsw i32 16, %49
  %51 = sdiv i32 %50, 9
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %60

54:                                               ; preds = %45
  %55 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %56 = mul nsw i32 4, %55
  %57 = sdiv i32 %56, 3
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 16
  %74 = ashr i32 %73, 4
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 32
  %79 = ashr i32 %78, 5
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 64
  %84 = ashr i32 %83, 6
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 128
  %89 = ashr i32 %88, 7
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 1
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 1
  %98 = and i32 %97, 3
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 8
  %103 = ashr i32 %102, 3
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 16
  %108 = ashr i32 %107, 4
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 32
  %113 = ashr i32 %112, 5
  %114 = call i32 @msg_Dbg(%struct.TYPE_9__* %68, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %74, i32 %79, i32 %84, i32 %89, i32 %93, i32 %98, i32 %103, i32 %108, i32 %113)
  br label %115

115:                                              ; preds = %67, %61
  br label %116

116:                                              ; preds = %115, %19
  ret void
}

declare dso_local i64 @vbi_raw_decode(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @parity(i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
