; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_vobsub.c_TextLoad.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_vobsub.c_TextLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8**, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @TextLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TextLoad(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8** null, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i8* @vlc_stream_ReadLine(i32* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @INT_MAX, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %9
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @free(i8* %21)
  br label %41

23:                                               ; preds = %14
  %24 = load i8**, i8*** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  %27 = mul i64 %26, 8
  %28 = call i8** @realloc(i8** %24, i64 %27)
  store i8** %28, i8*** %8, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = icmp eq i8** %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @free(i8* %32)
  br label %41

34:                                               ; preds = %23
  %35 = load i8**, i8*** %8, align 8
  store i8** %35, i8*** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  %40 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %36, i8** %40, align 8
  br label %9

41:                                               ; preds = %31, %20
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i8** %47, i8*** %49, align 8
  %50 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %50
}

declare dso_local i8* @vlc_stream_ReadLine(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8** @realloc(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
