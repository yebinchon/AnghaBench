; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_UpdateServiceType.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_UpdateServiceType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@VIDEO_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*)* @UpdateServiceType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateServiceType(i32* %0, i32* %1, %struct.TYPE_7__* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %15 [
    i32 1, label %13
    i32 2, label %13
    i32 128, label %13
    i32 36, label %14
    i32 16, label %14
    i32 27, label %14
    i32 160, label %14
    i32 209, label %14
  ]

13:                                               ; preds = %4, %4, %4
  store i32 1, i32* %9, align 4
  br label %16

14:                                               ; preds = %4, %4, %4, %4, %4
  store i32 22, i32* %9, align 4
  br label %16

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15, %14, %13
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 468
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 720
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 17, i32* %9, align 4
  br label %49

32:                                               ; preds = %25, %19, %16
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 22
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 468
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 720
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 25, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %41, %35, %32
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @VIDEO_ES, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @VIDEO_ES, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %57
  br label %89

68:                                               ; preds = %49
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VIDEO_ES, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %79 [
    i32 3, label %77
    i32 4, label %77
    i32 6, label %78
    i32 15, label %78
    i32 129, label %78
    i32 131, label %78
  ]

77:                                               ; preds = %73, %73
  store i32 2, i32* %9, align 4
  br label %80

78:                                               ; preds = %73, %73, %73, %73
  store i32 10, i32* %9, align 4
  br label %80

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %78, %77
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %80
  br label %89

89:                                               ; preds = %67, %88, %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
