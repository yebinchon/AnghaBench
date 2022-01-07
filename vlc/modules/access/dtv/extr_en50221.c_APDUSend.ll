; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_APDUSend.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_APDUSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }

@CA_CI_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"CAM: apdu overflow\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@CA_SEND_MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error sending to CAM: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32*, i64)* @APDUSend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @APDUSend(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = add i64 %15, 12
  %17 = call i32* @xmalloc(i64 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 16
  %21 = load i32*, i32** %12, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %12, align 8
  store i32 %20, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = load i32*, i32** %12, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %12, align 8
  store i32 %25, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 255
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %12, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32* @SetLength(i32* %32, i64 %33)
  store i32* %34, i32** %12, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %5
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memcpy(i32* %38, i32* %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %5
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CA_CI_LINK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 %53
  %56 = load i32*, i32** %11, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @SPDUSend(%struct.TYPE_6__* %50, i32 %51, i32* %52, i32 %61)
  store i32 %62, i32* %14, align 4
  br label %125

63:                                               ; preds = %43
  %64 = load i64, i64* %10, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  %67 = load i32*, i32** %11, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = icmp sgt i64 %71, 256
  br i1 %72, label %73, label %79

73:                                               ; preds = %63
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @msg_Err(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %78, i32* %14, align 4
  br label %124

79:                                               ; preds = %63
  %80 = load i64, i64* %10, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 %80
  %83 = load i32*, i32** %11, align 8
  %84 = ptrtoint i32* %82 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 3, i32* %93, align 8
  br label %94

94:                                               ; preds = %92, %79
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 %98
  %101 = load i32*, i32** %11, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(i32* %96, i32* %97, i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CA_SEND_MSG, align 4
  %112 = call i32 @ioctl(i32 %110, i32 %111, %struct.TYPE_7__* %13)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %94
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @errno, align 4
  %120 = call i32 @vlc_strerror_c(i32 %119)
  %121 = call i32 (i32, i8*, ...) @msg_Err(i32 %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %115, %94
  br label %124

124:                                              ; preds = %123, %73
  br label %125

125:                                              ; preds = %124, %49
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @free(i32* %126)
  %128 = load i32, i32* %14, align 4
  ret i32 %128
}

declare dso_local i32* @xmalloc(i64) #1

declare dso_local i32* @SetLength(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SPDUSend(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, ...) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
