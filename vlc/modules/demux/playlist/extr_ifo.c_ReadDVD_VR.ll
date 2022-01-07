; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_ifo.c_ReadDVD_VR.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_ifo.c_ReadDVD_VR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"VR_MOVIE.VRO\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ReadDVD_VR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDVD_VR(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i8* @StreamLocation(i32* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 %25, 12
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = call i32 @strcpy(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32* @input_item_New(i8* %29, i8* %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @input_item_node_AppendItem(i32* %35, i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @input_item_Release(i32* %38)
  br label %40

40:                                               ; preds = %34, %23
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i8* @StreamLocation(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32* @input_item_New(i8*, i8*) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
