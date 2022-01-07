; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_BlockAMT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_BlockAMT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i64, i32, i32 }
%struct.pollfd = type { i32, i32 }
%struct.sockaddr = type { i32 }

@IP_HDR_LEN = common dso_local global i64 0, align 8
@UDP_HDR_LEN = common dso_local global i64 0, align 8
@AMT_HDR_LEN = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Native multicast receive time-out\00", align 1
@AMT_MULT_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"%zd bytes packet truncated (MTU was %zd)\00", align 1
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_10__*, i32*)* @BlockAMT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @BlockAMT(%struct.TYPE_10__* %0, i32* noalias %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca [1 x %struct.pollfd], align 4
  %12 = alloca %struct.sockaddr, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load i64, i64* @IP_HDR_LEN, align 8
  %18 = load i64, i64* @UDP_HDR_LEN, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @AMT_HDR_LEN, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %9, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %24, %25
  %27 = call %struct.TYPE_11__* @block_Alloc(i64 %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %10, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = icmp eq %struct.TYPE_11__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %160

34:                                               ; preds = %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %44 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %51

45:                                               ; preds = %34
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %50 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @POLLIN, align 4
  %53 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %54 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @vlc_poll_i11e(%struct.pollfd* %55, i32 1, i32 %58)
  switch i32 %59, label %77 [
    i32 0, label %60
    i32 -1, label %76
  ]

60:                                               ; preds = %51
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = call i32 @open_amt_tunnel(%struct.TYPE_10__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %157

72:                                               ; preds = %65
  br label %77

73:                                               ; preds = %60
  %74 = load i32*, i32** %5, align 8
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %51, %75
  br label %157

77:                                               ; preds = %51, %72
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %129

82:                                               ; preds = %77
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i64 @recv(i32 %85, i64* %88, i64 %93, i32 0)
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %82
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AMT_MULT_DATA, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %97, %82
  br label %157

105:                                              ; preds = %97
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %8, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %8, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %113, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %114, i64 %117)
  %119 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %128

124:                                              ; preds = %105
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %7, align 8
  %127 = sub nsw i64 %126, %125
  store i64 %127, i64* %7, align 8
  br label %128

128:                                              ; preds = %124, %112
  br label %143

129:                                              ; preds = %77
  store i32 4, i32* %13, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = bitcast i64* %135 to i8*
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i64 @recvfrom(i32 %132, i8* %136, i64 %141, i32 0, %struct.sockaddr* %12, i32* %13)
  store i64 %142, i64* %7, align 8
  br label %143

143:                                              ; preds = %129, %128
  %144 = load i64, i64* %8, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 %144
  store i64* %148, i64** %146, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = sub nsw i64 %153, %149
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %156, %struct.TYPE_11__** %3, align 8
  br label %160

157:                                              ; preds = %104, %76, %71
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %159 = call i32 @block_Release(%struct.TYPE_11__* %158)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %160

160:                                              ; preds = %157, %143, %33
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %161
}

declare dso_local %struct.TYPE_11__* @block_Alloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_poll_i11e(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @open_amt_tunnel(%struct.TYPE_10__*) #1

declare dso_local i64 @recv(i32, i64*, i64, i32) #1

declare dso_local i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
