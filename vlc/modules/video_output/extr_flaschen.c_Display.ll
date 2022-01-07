; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_flaschen.c_Display.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_flaschen.c_Display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__*, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.msghdr = type { i32, i32, i32, i32*, %struct.iovec*, i32, i32* }
%struct.iovec = type { i8*, i32 }

@_SC_IOV_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"P6\0A%d %d\0A255\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"sendmsg: error %s in vout display flaschen\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"sendmsg only sent %d bytes in vout display flaschen\00", align 1
@IOV_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_13__*)* @Display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Display(%struct.TYPE_10__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.msghdr, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %17 = load i32, i32* @_SC_IOV_MAX, align 4
  %18 = call i64 @sysconf(i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %6, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snprintf(i8* %24, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 1, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %5, align 8
  %39 = icmp sgt i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %125

44:                                               ; preds = %2
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %12, align 8
  %48 = alloca %struct.iovec, i64 %46, align 16
  store i64 %46, i64* %13, align 8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i64 0
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 16
  %52 = load i32, i32* %10, align 4
  %53 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i64 0
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %14, align 8
  store i32 1, i32* %15, align 4
  br label %60

60:                                               ; preds = %86, %44
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i64 %67
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 16
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 3
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i64 %75
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %14, align 8
  br label %86

86:                                               ; preds = %64
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %60

89:                                               ; preds = %60
  %90 = bitcast %struct.msghdr* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %90, i8 0, i64 48, i1 false)
  %91 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 0
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %91, align 8
  %93 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 4
  store %struct.iovec* %48, %struct.iovec** %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @sendmsg(i32 %96, %struct.msghdr* %16, i32 0)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = load i32, i32* @errno, align 4
  %103 = call i32 @vlc_strerror_c(i32 %102)
  %104 = call i32 @msg_Err(%struct.TYPE_10__* %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %123

105:                                              ; preds = %89
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = mul nsw i32 %114, 3
  %116 = add nsw i32 %107, %115
  %117 = icmp slt i32 %106, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %105
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @msg_Err(%struct.TYPE_10__* %119, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %118, %105
  br label %123

123:                                              ; preds = %122, %100
  %124 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %124)
  br label %125

125:                                              ; preds = %123, %43
  ret void
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
