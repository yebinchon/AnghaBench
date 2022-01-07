; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_udp.c_Read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_udp.c_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i8*, i32, i32 }
%struct.pollfd = type { i32, i32 }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i32, %struct.iovec* }

@POLLIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"receive time-out\00", align 1
@MRU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8*, i64)* @Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Read(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca [1 x %struct.pollfd], align 4
  %10 = alloca [2 x %struct.iovec], align 16
  %11 = alloca %struct.msghdr, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @memcpy(i8* %31, i64 %34, i64 %35)
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %4, align 8
  br label %113

48:                                               ; preds = %3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %9, i64 0, i64 0
  %53 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @POLLIN, align 4
  %55 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %9, i64 0, i64 0
  %56 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %9, i64 0, i64 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vlc_poll_i11e(%struct.pollfd* %57, i32 1, i32 %60)
  switch i32 %61, label %66 [
    i32 0, label %62
    i32 -1, label %65
  ]

62:                                               ; preds = %48
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = call i32 @msg_Err(%struct.TYPE_5__* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %113

65:                                               ; preds = %48
  store i64 -1, i64* %4, align 8
  br label %113

66:                                               ; preds = %48
  %67 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 0
  %68 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i32 0, i32 0
  %69 = load i8*, i8** %6, align 8
  store i8* %69, i8** %68, align 16
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i32 0, i32 1
  %71 = load i64, i64* %7, align 8
  store i64 %71, i64* %70, align 8
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i64 1
  %73 = getelementptr inbounds %struct.iovec, %struct.iovec* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %73, align 16
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %72, i32 0, i32 1
  %78 = load i64, i64* @MRU, align 8
  store i64 %78, i64* %77, align 8
  %79 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 0
  %80 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 0
  %81 = call i32 @ARRAY_SIZE(%struct.iovec* %80)
  store i32 %81, i32* %79, align 8
  %82 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1
  %83 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 0
  store %struct.iovec* %83, %struct.iovec** %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @recvmsg(i32 %86, %struct.msghdr* %11, i32 0)
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ule i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %66
  store i64 -1, i64* %4, align 8
  br label %113

91:                                               ; preds = %66
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ugt i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %7, align 8
  %107 = sub i64 %105, %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %7, align 8
  store i64 %110, i64* %12, align 8
  br label %111

111:                                              ; preds = %98, %91
  %112 = load i64, i64* %12, align 8
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %111, %90, %65, %62, %30
  %114 = load i64, i64* %4, align 8
  ret i64 %114
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @vlc_poll_i11e(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.iovec*) #1

declare dso_local i64 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
