; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_video.c_adjust_option_bynumber.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_video.c_adjust_option_bynumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@adjust_option_bynumber.optlist = internal constant [6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 128 }], align 16
@.str = private unnamed_addr constant [7 x i8] c"adjust\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Unknown adjust option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32)* @adjust_option_bynumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @adjust_option_bynumber(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* getelementptr inbounds ([6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* @adjust_option_bynumber.optlist, i64 0, i64 0), i64 %8
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi %struct.TYPE_3__* [ %9, %6 ], [ null, %10 ]
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %18
}

declare dso_local i32 @libvlc_printerr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
