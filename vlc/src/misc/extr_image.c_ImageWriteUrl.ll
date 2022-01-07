; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_image.c_ImageWriteUrl.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_image.c_ImageWriteUrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*)* @ImageWriteUrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ImageWriteUrl(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %17 = bitcast %struct.TYPE_12__* %14 to i8*
  %18 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %11, align 8
  %24 = call i64 @image_Ext2Fourcc(i8* %23)
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %5
  %27 = load i8*, i8** %11, align 8
  %28 = call i32* @vlc_fopen(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @vlc_strerror_c(i32 %36)
  %38 = call i32 @msg_Err(i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %37)
  %39 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %39, i32* %6, align 4
  br label %92

40:                                               ; preds = %26
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = call %struct.TYPE_14__* @ImageWrite(%struct.TYPE_13__* %41, i32* %42, %struct.TYPE_12__* %43, %struct.TYPE_12__* %14)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %12, align 8
  store i32 0, i32* %15, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %46 = icmp ne %struct.TYPE_14__* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @fwrite(i32 %50, i32 %53, i32 1, i32* %54)
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %57, %47
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = call i32 @block_Release(%struct.TYPE_14__* %60)
  br label %62

62:                                               ; preds = %59, %40
  %63 = load i32*, i32** %13, align 8
  %64 = call i64 @fclose(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %69, %66, %62
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* @errno, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @vlc_strerror_c(i32 %80)
  %82 = call i32 @msg_Err(i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %81)
  br label %83

83:                                               ; preds = %74, %71
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @VLC_EGENERIC, align 4
  br label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @VLC_SUCCESS, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %31
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @image_Ext2Fourcc(i8*) #2

declare dso_local i32* @vlc_fopen(i8*, i8*) #2

declare dso_local i32 @msg_Err(i32, i8*, i8*, i32) #2

declare dso_local i32 @vlc_strerror_c(i32) #2

declare dso_local %struct.TYPE_14__* @ImageWrite(%struct.TYPE_13__*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #2

declare dso_local i32 @block_Release(%struct.TYPE_14__*) #2

declare dso_local i64 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
