; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media.c_libvlc_media_slaves_add.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media.c_libvlc_media_slaves_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@SLAVE_TYPE_SPU = common dso_local global i32 0, align 4
@SLAVE_TYPE_AUDIO = common dso_local global i32 0, align 4
@SLAVE_PRIORITY_MATCH_NONE = common dso_local global i32 0, align 4
@SLAVE_PRIORITY_MATCH_RIGHT = common dso_local global i32 0, align 4
@SLAVE_PRIORITY_MATCH_LEFT = common dso_local global i32 0, align 4
@SLAVE_PRIORITY_MATCH_ALL = common dso_local global i32 0, align 4
@SLAVE_PRIORITY_USER = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_slaves_add(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i1 [ false, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %31 [
    i32 128, label %27
    i32 129, label %29
  ]

27:                                               ; preds = %19
  %28 = load i32, i32* @SLAVE_TYPE_SPU, align 4
  store i32 %28, i32* %11, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @SLAVE_TYPE_AUDIO, align 4
  store i32 %30, i32* %11, align 4
  br label %33

31:                                               ; preds = %19
  %32 = call i32 (...) @vlc_assert_unreachable()
  store i32 -1, i32* %5, align 4
  br label %62

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %43 [
    i32 0, label %35
    i32 1, label %37
    i32 2, label %39
    i32 3, label %41
    i32 4, label %44
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* @SLAVE_PRIORITY_MATCH_NONE, align 4
  store i32 %36, i32* %12, align 4
  br label %46

37:                                               ; preds = %33
  %38 = load i32, i32* @SLAVE_PRIORITY_MATCH_RIGHT, align 4
  store i32 %38, i32* %12, align 4
  br label %46

39:                                               ; preds = %33
  %40 = load i32, i32* @SLAVE_PRIORITY_MATCH_LEFT, align 4
  store i32 %40, i32* %12, align 4
  br label %46

41:                                               ; preds = %33
  %42 = load i32, i32* @SLAVE_PRIORITY_MATCH_ALL, align 4
  store i32 %42, i32* %12, align 4
  br label %46

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %33, %43
  %45 = load i32, i32* @SLAVE_PRIORITY_USER, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %44, %41, %39, %37, %35
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32* @input_item_slave_New(i8* %47, i32 %48, i32 %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %62

54:                                               ; preds = %46
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i64 @input_item_AddSlave(i32* %55, i32* %56)
  %58 = load i64, i64* @VLC_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 0, i32 -1
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %54, %53, %31
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32* @input_item_slave_New(i8*, i32, i32) #1

declare dso_local i64 @input_item_AddSlave(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
