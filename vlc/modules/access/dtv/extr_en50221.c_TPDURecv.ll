; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_TPDURecv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_TPDURecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@CAM_READ_TIMEOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"poll error: %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"CAM device poll time-out\00", align 1
@MAX_TPDU_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cannot read from CAM device (%d): %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"invalid read from CAM device (%d instead of %d)\00", align 1
@T_SB = common dso_local global i32 0, align 4
@DATA_INDICATOR = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*, i32*, i32*)* @TPDURecv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TPDURecv(%struct.TYPE_3__* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1 x %struct.pollfd], align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %14, i64 0, i64 0
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @POLLIN, align 4
  %23 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %14, i64 0, i64 0
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %42, %5
  %26 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %14, i64 0, i64 0
  %27 = load i32, i32* @CAM_READ_TIMEOUT, align 4
  %28 = call i32 @poll(%struct.pollfd* %26, i32 1, i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EINTR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* @errno, align 8
  %39 = call i32 @vlc_strerror_c(i64 %38)
  %40 = call i32 (i32, i8*, ...) @msg_Err(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %6, align 4
  br label %175

42:                                               ; preds = %30
  br label %25

43:                                               ; preds = %25
  %44 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %14, i64 0, i64 0
  %45 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @POLLIN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @msg_Err(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %55, i32* %6, align 4
  br label %175

56:                                               ; preds = %43
  %57 = load i32*, i32** %11, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @MAX_TPDU_SIZE, align 4
  %61 = call i32* @xmalloc(i32 %60)
  store i32* %61, i32** %10, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %77, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* @MAX_TPDU_SIZE, align 4
  %69 = call i32 @read(i32 %66, i32* %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %63
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @EINTR, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %63
  br label %78

77:                                               ; preds = %72
  br label %63

78:                                               ; preds = %76
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 5
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i64, i64* @errno, align 8
  %87 = call i32 @vlc_strerror_c(i64 %86)
  %88 = call i32 (i32, i8*, ...) @msg_Err(i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %87)
  %89 = load i32*, i32** %11, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @free(i32* %92)
  br label %94

94:                                               ; preds = %91, %81
  %95 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %95, i32* %6, align 4
  br label %175

96:                                               ; preds = %78
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 (i32, i8*, ...) @msg_Err(i32 %105, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32*, i32** %11, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %102
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @free(i32* %114)
  br label %116

116:                                              ; preds = %113, %102
  %117 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %117, i32* %6, align 4
  br label %175

118:                                              ; preds = %96
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %9, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp sge i32 %123, 4
  br i1 %124, label %125, label %152

125:                                              ; preds = %118
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %127, 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @T_SB, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %125
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sub nsw i32 %136, 3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %152

142:                                              ; preds = %134
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @DATA_INDICATOR, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br label %152

152:                                              ; preds = %142, %134, %125, %118
  %153 = phi i1 [ false, %134 ], [ false, %125 ], [ false, %118 ], [ %151, %142 ]
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 0
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @Dump(i32 0, i32* %162, i32 %163)
  %165 = load i32*, i32** %11, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %152
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @free(i32* %168)
  br label %173

170:                                              ; preds = %152
  %171 = load i32, i32* %13, align 4
  %172 = load i32*, i32** %11, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %173, %116, %94, %50, %34
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @Dump(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
